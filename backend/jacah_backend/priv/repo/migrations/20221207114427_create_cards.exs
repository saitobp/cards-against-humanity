defmodule JacahBackend.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :id, :uuid
      add :content, :string
      add :pack_id, references(:"card-packs", on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create unique_index(:cards, [:id])
    create index(:cards, [:pack_id])
  end
end