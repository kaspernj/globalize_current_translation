require "yaml"

# The CI lane for this repository runs three commands over the whole tree, so the
# `paths` list in tensorbuzz.yml has to cover every file those commands read. If a
# readable file falls outside the list, a change to it skips the lane that would
# have caught the breakage - which is the failure mode path filtering must never
# produce. These examples pin the list to what the commands actually read.
RSpec.describe "tensorbuzz.yml path filter" do
  let(:config) { YAML.load_file(File.expand_path("../tensorbuzz.yml", __dir__)) }
  let(:paths) { config["paths"] }

  def reads_any_of(prefixes)
    prefixes.any? { |prefix| paths.include?("#{prefix}/**") }
  end

  it "runs the three commands that read this repository" do
    expect(config["script"]).to eq(["bundle exec rspec", "bundle exec rubocop", "bundle exec rails_best_practices"])
  end

  it "covers the directories the engine and the dummy app are booted from" do
    expect(paths).to include("app/**", "config/**", "lib/**", "spec/**", "bin/**", "db/**")
  end

  it "covers the bundle and the tooling configuration at the repository root" do
    expect(paths).to include("Gemfile", "Gemfile.lock", "globalize_current_translation.gemspec", "Rakefile", ".rubocop.yml", ".rspec", ".ruby-version")
  end

  it "keeps the files no command reads outside the list" do
    expect(reads_any_of(["README.md", "MIT-LICENSE", ".gitignore", ".github"])).to be false
  end
end
