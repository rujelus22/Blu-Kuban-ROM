.class Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;
.super Ljava/lang/Thread;
.source "VideoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileOperationThread"
.end annotation


# instance fields
.field private abortOpertion:Z

.field private deleteArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field loop:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "handler"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 1136
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->loop:Z

    .line 1130
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->deleteArrayList:Ljava/util/ArrayList;

    .line 1132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->abortOpertion:Z

    .line 1134
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1137
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->deleteArrayList:Ljava/util/ArrayList;

    .line 1138
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mHandler:Landroid/os/Handler;

    .line 1139
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mContext:Landroid/content/Context;

    .line 1140
    return-void
.end method

.method private DeleteFiles(Ljava/util/ArrayList;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1160
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "VideoListView"

    const-string v4, "DeleteFiles E"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_d
    if-nez p1, :cond_10

    .line 1185
    :cond_f
    :goto_f
    return-void

    .line 1165
    :cond_10
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->abortOpertion:Z

    if-nez v3, :cond_f

    .line 1169
    :try_start_14
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    .line 1170
    .local v2, videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 1171
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->abortOpertion:Z

    if-eqz v3, :cond_5b

    .line 1172
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "VideoListView"

    const-string v4, "DeleteFiles : Canceled."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_37

    goto :goto_f

    .line 1181
    .end local v1           #i:I
    .end local v2           #videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :catch_37
    move-exception v0

    .line 1182
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1183
    const-string v3, "VideoListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteFiles : is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1176
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :cond_5b
    :try_start_5b
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->setRemoveFlag(JI)I

    .line 1177
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->delete(J)I

    .line 1178
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7e} :catch_37

    .line 1179
    add-int/lit8 v1, v1, -0x1

    .line 1170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method private declared-synchronized releasePowerWakeLock()V
    .registers 2

    .prologue
    .line 1151
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1153
    :cond_e
    monitor-exit p0

    return-void

    .line 1151
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPowerWakeLock()V
    .registers 4

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1144
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "FileOperation"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1146
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1147
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 1148
    :cond_21
    monitor-exit p0

    return-void

    .line 1143
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1189
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->setPowerWakeLock()V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->deleteArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->DeleteFiles(Ljava/util/ArrayList;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_27

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->deleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1194
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->releasePowerWakeLock()V

    .line 1195
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->abortOpertion:Z

    .line 1196
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "VideoListView"

    const-string v1, "DeleteFiles : Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_26
    return-void

    .line 1192
    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->deleteArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1194
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->releasePowerWakeLock()V

    .line 1195
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->abortOpertion:Z

    .line 1196
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "VideoListView"

    const-string v2, "DeleteFiles : Finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    throw v0
.end method

.method public declared-synchronized setAbortOperation(Z)V
    .registers 3
    .parameter "isAborted"

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->abortOpertion:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1157
    monitor-exit p0

    return-void

    .line 1156
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
