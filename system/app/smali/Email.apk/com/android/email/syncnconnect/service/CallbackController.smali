.class public Lcom/android/email/syncnconnect/service/CallbackController;
.super Ljava/lang/Object;
.source "CallbackController.java"


# static fields
.field private static cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/android/email/syncnconnect/service/CallbackController;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/android/email/syncnconnect/service/CallbackController;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/CallbackController;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    .line 32
    :cond_b
    sget-object v0, Lcom/android/email/syncnconnect/service/CallbackController;->cbqueue:Lcom/android/email/syncnconnect/service/CallbackController;

    return-object v0
.end method

.method private getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .parameter "statusCode"
    .parameter "statusString"

    .prologue
    .line 58
    const-string v1, "CallbackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Into getResponseBundle with statusCode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and statusString :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p1, :cond_3f

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3f

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    const/4 p1, -0x1

    .line 66
    :cond_3f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "status_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v1, "status_text"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 37
    :try_start_3
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final sendAddAccountCallback(ILjava/lang/String;J)V
    .registers 10
    .parameter "statusCode"
    .parameter "statusString"
    .parameter "accountId"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 97
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 98
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3, p4}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onAddAccountFinished(Landroid/os/Bundle;J)V

    goto :goto_d

    .line 100
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 101
    return-void
.end method

.method public sendDeactivateSncCallback()V
    .registers 5

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 198
    :try_start_3
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 199
    .local v1, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onDeactivateSnc()V

    goto :goto_9

    .line 201
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 202
    return-void
.end method

.method public final sendDeleteAccountCallback(ILjava/lang/String;J)V
    .registers 10
    .parameter "statusCode"
    .parameter "statusString"
    .parameter "accountId"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 116
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 117
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3, p4}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onDeleteAccountFinished(Landroid/os/Bundle;J)V

    goto :goto_d

    .line 119
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 120
    return-void
.end method

.method public sendDeleteAccountFromPortalCallback(JLjava/lang/String;)V
    .registers 8
    .parameter "accountId"
    .parameter "emailId"

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 190
    :try_start_3
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 191
    .local v1, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onDeleteAccountFromWebPortal(JLjava/lang/String;)V

    goto :goto_9

    .line 193
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 194
    return-void
.end method

.method public final sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V
    .registers 9
    .parameter "statusCode"
    .parameter "statusString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 77
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 78
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onAvailableAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_d

    .line 80
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 81
    return-void
.end method

.method public final sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V
    .registers 9
    .parameter "statusCode"
    .parameter "statusString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 87
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 88
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onConfiguredAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_d

    .line 90
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 91
    return-void
.end method

.method public sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 9
    .parameter "statusCode"
    .parameter "statusString"
    .parameter "sncProfile"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 156
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 157
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onGetProfileFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_d

    .line 159
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 160
    return-void
.end method

.method public final sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V
    .registers 11
    .parameter "statusCode"
    .parameter "statusString"
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p5, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncTag;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 126
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 127
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3, p4, p5}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onTagsReceived(Landroid/os/Bundle;JLjava/util/List;)V

    goto :goto_d

    .line 129
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 130
    return-void
.end method

.method public final sendModifyAccountCallback(ILjava/lang/String;)V
    .registers 8
    .parameter "statusCode"
    .parameter "statusString"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 106
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 107
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onModifyAccountFinished(Landroid/os/Bundle;)V

    goto :goto_d

    .line 109
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 110
    return-void
.end method

.method public sendNewMailNotificationReceived(I)V
    .registers 6
    .parameter "newMailCount"

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 182
    :try_start_3
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 183
    .local v1, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v1, p1}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onNewMailNotificationReceived(I)V

    goto :goto_9

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 186
    return-void
.end method

.method public sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V
    .registers 9
    .parameter "statusCode"
    .parameter "statusString"
    .parameter "serviceInfo"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 146
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 147
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onSyncAccountFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto :goto_d

    .line 149
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 150
    return-void
.end method

.method public final sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V
    .registers 9
    .parameter "statusCode"
    .parameter "statusString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncServiceInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 136
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 137
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0, p3}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onSyncAllReceived(Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_d

    .line 139
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 140
    return-void
.end method

.method public sendUpdateProfileCallback(ILjava/lang/String;)V
    .registers 8
    .parameter "statusCode"
    .parameter "statusString"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 165
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 166
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onUpdateProfileFinished(Landroid/os/Bundle;)V

    goto :goto_d

    .line 168
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 169
    return-void
.end method

.method public sendValidateTokenCallback(ILjava/lang/String;)V
    .registers 8
    .parameter "statusCode"
    .parameter "statusString"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->getResponseBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 173
    .local v0, b:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 174
    :try_start_7
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/CallbackController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;

    .line 175
    .local v2, listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    invoke-virtual {v2, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onValidateTokenComplete(Landroid/os/Bundle;)V

    goto :goto_d

    .line 177
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 178
    return-void
.end method
