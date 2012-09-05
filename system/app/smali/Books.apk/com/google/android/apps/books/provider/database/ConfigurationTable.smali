.class public Lcom/google/android/apps/books/provider/database/ConfigurationTable;
.super Ljava/lang/Object;
.source "ConfigurationTable.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getCreationSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 15
    const-string v0, "CREATE TABLE config (key TEXT NOT NULL, value TEXT, UNIQUE (key) ON CONFLICT REPLACE)"

    return-object v0
.end method
