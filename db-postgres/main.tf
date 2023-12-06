

resource "google_sql_database" "demoapp" {
  name     = "demoapp"
  instance = google_sql_database_instance.demoapp.name
}

resource "google_sql_database_instance" "demoapp" {
  name             = "demoapp"
  database_version = "POSTGRES_9_6"
  region           = "us-central1"
  deletion_protection = "false"

  settings {
      tier = "db-f1-micro"
    }
}

resource "google_sql_user" "users" {
  name     = "demoapp"
  instance = google_sql_database_instance.demoapp.name
  password = "demoapp"
}