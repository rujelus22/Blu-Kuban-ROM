.class Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AndroidActionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/AndroidActionModel;
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
    .line 214
    const-string v0, "model.actions.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 215
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 219
    const-string v0, "CREATE TABLE %s (%s TEXT, %s INTEGER)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "actions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "conversation_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "flags"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
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

    .line 226
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "actions"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "sms_actions"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    return-void
.end method
