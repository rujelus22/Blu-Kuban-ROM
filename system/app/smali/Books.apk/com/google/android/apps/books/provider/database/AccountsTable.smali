.class public Lcom/google/android/apps/books/provider/database/AccountsTable;
.super Ljava/lang/Object;
.source "AccountsTable.java"


# static fields
.field private static final sColumnToClass:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/android/apps/books/provider/database/AccountsTable;->createColumnToClass()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/database/AccountsTable;->sColumnToClass:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static createColumnToClass()Ljava/util/LinkedHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    const-string v1, "_id"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "account_name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "session_key_version"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "root_key_version"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "session_key_blob"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0
.end method

.method public static getCreationSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    const-string v0, "CREATE TABLE accounts (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, session_key_version TEXT, root_key_version INTEGER, session_key_blob BLOB, UNIQUE (account_name))"

    return-object v0
.end method

.method public static getCreationSqlVersion130()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    const-string v0, "CREATE TABLE accounts (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, session_key_version TEXT, root_key_version INTEGER, session_key_blob BLOB, UNIQUE (account_name))"

    return-object v0
.end method
