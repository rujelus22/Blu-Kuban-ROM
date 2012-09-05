.class Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WapPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smspush/WapPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WapPushManDBHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smspush/WapPushManager;


# direct methods
.method constructor <init>(Lcom/android/smspush/WapPushManager;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->this$0:Lcom/android/smspush/WapPushManager;

    .line 104
    const-string v0, "wappush.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 111
    const-string v0, "CREATE TABLE appid_tbl (id INTEGER PRIMARY KEY, x_wap_application TEXT, content_type TEXT, package_name TEXT, class_name TEXT, app_type INTEGER, need_signature INTEGER, further_processing INTEGER, install_order INTEGER )"

    .line 124
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 159
    const-string v0, "WAP PUSH"

    const-string v1, "onUpgrade is not implemented yet. do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method protected queryLastApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    .registers 9
    .parameter "db"
    .parameter "app_id"
    .parameter "content_type"

    .prologue
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select install_order, package_name, class_name,  app_type, need_signature, further_processing from appid_tbl where x_wap_application=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and content_type=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " order by install_order desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, sql:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 187
    .local v0, cur:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 189
    .local v1, ret:Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 190
    new-instance v1, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;

    .end local v1           #ret:Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    invoke-direct {v1, p0}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;-><init>(Lcom/android/smspush/WapPushManager$WapPushManDBHelper;)V

    .line 191
    .restart local v1       #ret:Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    const-string v3, "install_order"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->installOrder:I

    .line 192
    const-string v3, "package_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    .line 193
    const-string v3, "class_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    .line 194
    const-string v3, "app_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->appType:I

    .line 195
    const-string v3, "need_signature"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->needSignature:I

    .line 196
    const-string v3, "further_processing"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->furtherProcessing:I

    .line 198
    :cond_88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 199
    return-object v1
.end method
