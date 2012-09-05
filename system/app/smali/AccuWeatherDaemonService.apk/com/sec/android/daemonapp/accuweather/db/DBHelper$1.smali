.class Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;
.super Ljava/lang/Thread;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->getAutoRefreshTime(Landroid/os/Handler;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/accuweather/db/DBHelper;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;->this$0:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    iput-object p3, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 59
    const/4 v11, 0x0

    .line 60
    .local v11, time:I
    const-class v12, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    monitor-enter v12

    .line 62
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;->this$0:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    const/4 v2, 0x0

    #calls: Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1, v2}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->access$000(Lcom/sec/android/daemonapp/accuweather/db/DBHelper;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_3c

    .line 65
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;->this$0:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    #getter for: Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;
    invoke-static {v1}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->access$100(Lcom/sec/android/daemonapp/accuweather/db/DBHelper;)Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AUTO_REFRESH_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 67
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_39

    .line 69
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 71
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 73
    :cond_36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 77
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3c
    monitor-exit v12
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_5a

    .line 78
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 79
    .local v10, msg:Landroid/os/Message;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v9, data:Landroid/os/Bundle;
    const-string v1, "autorefresh"

    invoke-virtual {v9, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v10, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;->this$0:Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    invoke-virtual {v1, p0}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->deleteMe(Ljava/lang/Thread;)V

    .line 84
    return-void

    .line 77
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #data:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v12
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method
