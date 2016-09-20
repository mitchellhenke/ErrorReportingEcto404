defmodule ErrorReportingEcto404.ThingTest do
  use ErrorReportingEcto404.ModelCase

  alias ErrorReportingEcto404.Thing

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Thing.changeset(%Thing{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Thing.changeset(%Thing{}, @invalid_attrs)
    refute changeset.valid?
  end
end
