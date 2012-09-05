.class Lcom/google/android/picasasync/ImmediateSync$1;
.super Lcom/google/android/picasasync/ImmediateSync$Task;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/ImmediateSync;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    invoke-direct {p0, p2}, Lcom/google/android/picasasync/ImmediateSync$Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 15
    .parameter "accounts"

    .prologue
    const/4 v12, -0x1

    .line 145
    :try_start_1
    const-string v9, "ImmediateSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sync album list:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " account(s)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncResultCode:I

    if-eq v9, v12, :cond_30

    .line 147
    iget v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncResultCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_7f

    move-result-object v9

    .line 190
    iget-object v10, p0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #calls: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v10, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    :goto_2f
    return-object v9

    .line 150
    :cond_30
    :try_start_30
    iget-object v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/picasasync/ImmediateSync;->access$000(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v6

    .line 151
    .local v6, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    new-instance v7, Landroid/content/SyncResult;

    invoke-direct {v7}, Landroid/content/SyncResult;-><init>()V

    .line 152
    .local v7, syncResult:Landroid/content/SyncResult;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 153
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4c
    if-ge v3, v5, :cond_b6

    aget-object v0, v1, v3

    .line 154
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_7f

    move-result-object v8

    .line 156
    .local v8, userEntry:Lcom/google/android/picasasync/UserEntry;
    const/4 v4, 0x0

    .line 158
    .local v4, isPicasaAccount:Z
    :try_start_55
    invoke-virtual {v6, v0}, Lcom/google/android/picasasync/PicasaSyncHelper;->isPicasaAccount(Ljava/lang/String;)Z
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_76

    move-result v4

    .line 162
    :goto_59
    if-nez v4, :cond_86

    .line 163
    :try_start_5b
    const-string v9, "ImmediateSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not picasa account, ignore: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 159
    :catch_76
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "ImmediateSync"

    const-string v10, "check picasa account failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_5b .. :try_end_7e} :catchall_7f

    goto :goto_59

    .line 190
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:I
    .end local v4           #isPicasaAccount:Z
    .end local v5           #len$:I
    .end local v6           #sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    .end local v7           #syncResult:Landroid/content/SyncResult;
    .end local v8           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :catchall_7f
    move-exception v9

    iget-object v10, p0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #calls: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v10, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    throw v9

    .line 167
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #isPicasaAccount:Z
    .restart local v5       #len$:I
    .restart local v6       #sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    .restart local v7       #syncResult:Landroid/content/SyncResult;
    .restart local v8       #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_86
    if-eqz v8, :cond_d2

    .line 168
    :try_start_88
    const-string v9, "ImmediateSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sync albums for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v9, v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 170
    iget-object v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v6, v9, v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 177
    :goto_ae
    iget-object v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v9}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v9

    if-eqz v9, :cond_73

    .line 179
    .end local v0           #account:Ljava/lang/String;
    .end local v4           #isPicasaAccount:Z
    .end local v8           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_b6
    iget v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncResultCode:I

    if-ne v9, v12, :cond_c5

    .line 180
    iget-object v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v9}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v9

    if-eqz v9, :cond_ef

    .line 181
    const/4 v9, 0x1

    iput v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncResultCode:I

    .line 188
    :cond_c5
    :goto_c5
    iget v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncResultCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_ca
    .catchall {:try_start_88 .. :try_end_ca} :catchall_7f

    move-result-object v9

    .line 190
    iget-object v10, p0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #calls: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v10, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    goto/16 :goto_2f

    .line 175
    .restart local v0       #account:Ljava/lang/String;
    .restart local v4       #isPicasaAccount:Z
    .restart local v8       #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_d2
    :try_start_d2
    const-string v9, "ImmediateSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no userEntry for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 183
    .end local v0           #account:Ljava/lang/String;
    .end local v4           #isPicasaAccount:Z
    .end local v8           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_ef
    invoke-virtual {v7}, Landroid/content/SyncResult;->hasError()Z

    move-result v9

    if-eqz v9, :cond_f9

    const/4 v9, 0x2

    :goto_f6
    iput v9, p0, Lcom/google/android/picasasync/ImmediateSync$1;->syncResultCode:I
    :try_end_f8
    .catchall {:try_start_d2 .. :try_end_f8} :catchall_7f

    goto :goto_c5

    :cond_f9
    const/4 v9, 0x0

    goto :goto_f6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/ImmediateSync$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
