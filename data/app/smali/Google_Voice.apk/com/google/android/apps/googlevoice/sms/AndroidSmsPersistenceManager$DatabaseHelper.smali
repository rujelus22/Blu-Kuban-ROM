.class Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AndroidSmsPersistenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 367
    const-string v0, "sms.outbox.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 368
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .parameter "db"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 372
    const-string v0, "CREATE TABLE %s (%s TEXT, %s INTEGER)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "outboxes"

    aput-object v2, v1, v3

    const-string v2, "conversation_id"

    aput-object v2, v1, v4

    const-string v2, "state"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string v0, "CREATE TABLE %s (%s TEXT, %s BLOB, %s INTEGER)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sms"

    aput-object v2, v1, v3

    const-string v2, "conversation_id"

    aput-object v2, v1, v4

    const-string v2, "phonecall"

    aput-object v2, v1, v5

    const-string v2, "request_id"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    const-string v0, "CREATE TABLE %s (%s TEXT, %s INTEGER)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "exceptions"

    aput-object v2, v1, v3

    const-string v2, "sms_phonecall_id"

    aput-object v2, v1, v4

    const-string v2, "status_code"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    const-string v0, "CREATE TABLE %s (%s TEXT, %s TEXT)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "mappings"

    aput-object v2, v1, v3

    const-string v2, "local_id"

    aput-object v2, v1, v4

    const-string v2, "voice_model_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 392
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "outboxes"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "sms"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "exceptions"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "mappings"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 397
    return-void
.end method
