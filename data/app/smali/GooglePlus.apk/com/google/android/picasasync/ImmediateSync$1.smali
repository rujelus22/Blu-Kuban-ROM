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
    .line 153
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/ImmediateSync$Task;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doSync([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 24
    .parameter "accounts"

    .prologue
    .line 156
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v19

    if-nez v19, :cond_14

    .line 157
    const-string v19, "ImmediateSync"

    const-string v20, "master auto sync is off"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 222
    :goto_13
    return-object v19

    .line 161
    :cond_14
    const-string v19, "ImmediateSync.albums"

    invoke-static/range {v19 .. v19}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v14

    .line 163
    .local v14, statsId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v15

    .line 165
    .local v15, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    if-nez p1, :cond_83

    .line 168
    invoke-virtual {v15}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v18

    .line 169
    .local v18, users:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/picasasync/UserEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v8

    .line 171
    .local v8, facade:Lcom/google/android/picasasync/PicasaFacade;
    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, authority:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v13

    .local v13, n:I
    :goto_4a
    if-ge v9, v13, :cond_71

    .line 173
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/picasasync/UserEntry;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    .line 174
    .local v2, account:Ljava/lang/String;
    new-instance v19, Landroid/accounts/Account;

    const-string v20, "com.google"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 176
    .local v6, autoSyncEnabled:Z
    if-eqz v6, :cond_6e

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_6e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 178
    .end local v2           #account:Ljava/lang/String;
    .end local v6           #autoSyncEnabled:Z
    :cond_71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/String;

    .line 182
    .end local v3           #accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #authority:Ljava/lang/String;
    .end local v8           #facade:Lcom/google/android/picasasync/PicasaFacade;
    .end local v9           #i:I
    .end local v13           #n:I
    .end local v18           #users:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/picasasync/UserEntry;>;"
    .restart local p1
    :cond_83
    :try_start_83
    const-string v19, "ImmediateSync"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sync album list:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " account(s)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/ImmediateSync$1;->syncInterrupted()Z

    move-result v19

    if-eqz v19, :cond_bb

    .line 184
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b1
    .catchall {:try_start_83 .. :try_end_b1} :catchall_10f

    move-result-object v19

    .line 222
    const-string v20, "picasa.sync.metadata"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 187
    :cond_bb
    :try_start_bb
    new-instance v16, Landroid/content/SyncResult;

    invoke-direct/range {v16 .. v16}, Landroid/content/SyncResult;-><init>()V

    .line 188
    .local v16, syncResult:Landroid/content/SyncResult;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 189
    move-object/from16 v4, p1

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_d6
    if-ge v10, v12, :cond_15a

    aget-object v2, v4, v10

    .line 190
    .restart local v2       #account:Ljava/lang/String;
    invoke-virtual {v15, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;
    :try_end_dd
    .catchall {:try_start_bb .. :try_end_dd} :catchall_10f

    move-result-object v17

    .line 192
    .local v17, userEntry:Lcom/google/android/picasasync/UserEntry;
    const/4 v11, 0x0

    .line 194
    .local v11, isPicasaAccount:Z
    :try_start_df
    invoke-virtual {v15, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->isPicasaAccount(Ljava/lang/String;)Z
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_10f
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_102

    move-result v11

    .line 198
    :goto_e3
    if-nez v11, :cond_118

    .line 199
    :try_start_e5
    const-string v19, "ImmediateSync"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "not picasa account, ignore: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_ff
    add-int/lit8 v10, v10, 0x1

    goto :goto_d6

    .line 195
    :catch_102
    move-exception v7

    .line 196
    .local v7, e:Ljava/lang/Exception;
    const-string v19, "ImmediateSync"

    const-string v20, "check picasa account failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10e
    .catchall {:try_start_e5 .. :try_end_10e} :catchall_10f

    goto :goto_e3

    .line 222
    .end local v2           #account:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v10           #i$:I
    .end local v11           #isPicasaAccount:Z
    .end local v12           #len$:I
    .end local v16           #syncResult:Landroid/content/SyncResult;
    .end local v17           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :catchall_10f
    move-exception v19

    const-string v20, "picasa.sync.metadata"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v19

    .line 203
    .restart local v2       #account:Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #isPicasaAccount:Z
    .restart local v12       #len$:I
    .restart local v16       #syncResult:Landroid/content/SyncResult;
    .restart local v17       #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_118
    if-eqz v17, :cond_175

    .line 204
    :try_start_11a
    const-string v19, "ImmediateSync"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sync albums for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 213
    :goto_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v19

    if-eqz v19, :cond_ff

    .line 215
    .end local v2           #account:Ljava/lang/String;
    .end local v11           #isPicasaAccount:Z
    .end local v17           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/picasasync/ImmediateSync$1;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v19

    if-eqz v19, :cond_192

    const/16 v19, 0x1

    :goto_168
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_16b
    .catchall {:try_start_11a .. :try_end_16b} :catchall_10f

    move-result-object v19

    .line 222
    const-string v20, "picasa.sync.metadata"

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 211
    .restart local v2       #account:Ljava/lang/String;
    .restart local v11       #isPicasaAccount:Z
    .restart local v17       #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_175
    :try_start_175
    const-string v19, "ImmediateSync"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "no userEntry for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e

    .line 215
    .end local v2           #account:Ljava/lang/String;
    .end local v11           #isPicasaAccount:Z
    .end local v17           #userEntry:Lcom/google/android/picasasync/UserEntry;
    :cond_192
    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncResult;->hasError()Z
    :try_end_195
    .catchall {:try_start_175 .. :try_end_195} :catchall_10f

    move-result v19

    if-eqz v19, :cond_19b

    const/16 v19, 0x2

    goto :goto_168

    :cond_19b
    const/16 v19, 0x0

    goto :goto_168
.end method
