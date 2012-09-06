.class Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SyncStateDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncStateDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_FILENAME:Ljava/lang/String; = "conversationsDatabase"

.field private static final DATABASE_VERSION:I = 0x2


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "conversationsDatabase"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "database"

    .prologue
    .line 72
    const-string v0, "ALTER TABLE conversations ADD read_state INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "database"

    .prologue
    .line 57
    const-string v0, "Create database."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE conversations (conversation_id TEXT PRIMARY KEY NOT NULL, read_state INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 63
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    const/4 p2, 0x2

    .line 67
    :cond_7
    return-void
.end method
