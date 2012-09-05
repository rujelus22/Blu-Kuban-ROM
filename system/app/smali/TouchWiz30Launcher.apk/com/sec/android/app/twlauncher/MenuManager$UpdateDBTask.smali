.class Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDBTask"
.end annotation


# instance fields
.field private volatile mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTerminate:Z

.field private mUpdateThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 4
    .parameter

    .prologue
    .line 3993
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    .line 3994
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MMUpdateDBTaskThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    .line 3995
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3996
    return-void
.end method


# virtual methods
.method public canContinue()Z
    .registers 2

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public run()V
    .registers 8

    .prologue
    .line 3999
    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask thread started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4002
    :cond_c
    :goto_c
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    if-nez v4, :cond_c6

    .line 4007
    monitor-enter p0

    .line 4008
    :goto_11
    :try_start_11
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    if-nez v4, :cond_25

    .line 4010
    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 4011
    :catch_1d
    move-exception v1

    .line 4012
    .local v1, e:Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    :try_start_1f
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    goto :goto_11

    .line 4018
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_22
    move-exception v4

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_22

    throw v4

    .line 4016
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    .line 4017
    .local v2, infoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    .line 4018
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 4025
    const/4 v0, 0x0

    .line 4027
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2c
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1200(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_8f

    .line 4028
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1300(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "launcher.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 4030
    .local v3, path:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4031
    if-eqz v0, :cond_8f

    .line 4032
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4033
    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask Begin Saving to DB"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->canContinue()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 4035
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1400(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->saveToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)Z

    .line 4037
    :cond_65
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->canContinue()Z

    move-result v4

    if-eqz v4, :cond_70

    if-eqz v2, :cond_70

    .line 4038
    invoke-static {v0, v2, p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppsToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)V

    .line 4040
    :cond_70
    const-string v4, "DebugDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateDBTask End Saving to DB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->canContinue()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8f
    .catchall {:try_start_2c .. :try_end_8f} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_8f} :catch_a0

    .line 4047
    .end local v3           #path:Ljava/lang/String;
    :cond_8f
    if-eqz v0, :cond_c

    .line 4048
    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask Close DB"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4050
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_c

    .line 4044
    :catch_a0
    move-exception v1

    .line 4045
    .local v1, e:Ljava/lang/Exception;
    :try_start_a1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_b5

    .line 4047
    if-eqz v0, :cond_c

    .line 4048
    const-string v4, "DebugDb"

    const-string v5, "UpdateDBTask Close DB"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4050
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_c

    .line 4047
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_b5
    move-exception v4

    if-eqz v0, :cond_c5

    .line 4048
    const-string v5, "DebugDb"

    const-string v6, "UpdateDBTask Close DB"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4050
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c5
    throw v4

    .line 4055
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #infoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_c6
    return-void
.end method

.method public declared-synchronized terminate()V
    .registers 2

    .prologue
    .line 4071
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    .line 4072
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 4073
    monitor-exit p0

    return-void

    .line 4071
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDB()V
    .registers 6

    .prologue
    .line 4087
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v1

    .local v1, count:I
    if-lez v1, :cond_3e

    .line 4088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4089
    .local v0, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v1, :cond_34

    .line 4090
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 4091
    .local v3, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4092
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4089
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 4094
    .end local v3           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_34
    monitor-enter p0

    .line 4095
    :try_start_35
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mChanges:Ljava/util/ArrayList;

    .line 4097
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mTerminate:Z

    .line 4098
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 4099
    monitor-exit p0

    .line 4101
    .end local v0           #changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_3e
    return-void

    .line 4099
    .restart local v0       #changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catchall_3f
    move-exception v4

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_3f

    throw v4
.end method

.method public waitForTermination()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 4111
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    .line 4112
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->terminate()V

    .line 4113
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 4115
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->mUpdateThread:Ljava/lang/Thread;

    .line 4116
    return-void
.end method
