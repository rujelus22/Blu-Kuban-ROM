.class Lcom/google/android/talk/TalkServiceState;
.super Ljava/lang/Object;
.source "TalkServiceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;,
        Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;,
        Lcom/google/android/talk/TalkServiceState$PendingCallback;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private final mServiceAvailableListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionAvailableListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gtalkservice/IImSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkServiceState;->mSessionMap:Ljava/util/Map;

    .line 97
    return-void
.end method


# virtual methods
.method public addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V
    .registers 9
    .parameter "target"
    .parameter "callback"

    .prologue
    .line 172
    new-instance v2, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;

    invoke-direct {v2, p1, p2}, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;-><init>(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    .line 174
    .local v2, pendingCallback:Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    iget-object v5, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 179
    :try_start_8
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v4, :cond_18

    .line 180
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v2, v4}, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->setService(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 195
    :goto_11
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_3d

    .line 196
    if-eqz v2, :cond_17

    .line 197
    invoke-virtual {v2}, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->post()V

    .line 199
    :cond_17
    return-void

    .line 182
    :cond_18
    :try_start_18
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 183
    .local v0, count:I
    const/4 v3, 0x1

    .line 184
    .local v3, shouldAddCallback:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_31

    .line 185
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;

    invoke-virtual {v4}, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->getTarget()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p1, :cond_3a

    .line 186
    const/4 v3, 0x0

    .line 190
    :cond_31
    if-eqz v3, :cond_38

    .line 191
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_38
    const/4 v2, 0x0

    goto :goto_11

    .line 184
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 195
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #shouldAddCallback:Z
    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_3d

    throw v4
.end method

.method public addSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V
    .registers 14
    .parameter "target"
    .parameter "accountId"
    .parameter "callback"

    .prologue
    .line 109
    new-instance v2, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;-><init>(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V

    .line 114
    .local v2, pendingCallback:Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
    iget-object v7, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 115
    :try_start_8
    iget-object v6, p0, Lcom/google/android/talk/TalkServiceState;->mSessionMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gtalkservice/IImSession;

    .line 116
    .local v4, session:Lcom/google/android/gtalkservice/IImSession;
    iget-object v3, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 117
    .local v3, service:Lcom/google/android/gtalkservice/IGTalkService;
    monitor-exit v7
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_39

    .line 118
    if-eqz v3, :cond_24

    if-nez v4, :cond_24

    .line 120
    :try_start_1b
    invoke-interface {v3, p2, p3}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_24

    .line 126
    invoke-virtual {p0, p2, p3, v4}, Lcom/google/android/talk/TalkServiceState;->setImSessionAvailable(JLcom/google/android/gtalkservice/IImSession;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_64

    .line 132
    :cond_24
    :goto_24
    iget-object v7, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 140
    :try_start_27
    iget-object v6, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v6, :cond_3c

    if-eqz v4, :cond_3c

    .line 141
    iget-object v6, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v2, v6, v4}, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->setServiceAndSession(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 159
    :goto_32
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_61

    .line 160
    if-eqz v2, :cond_38

    .line 161
    invoke-virtual {v2}, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->post()V

    .line 163
    :cond_38
    return-void

    .line 117
    .end local v3           #service:Lcom/google/android/gtalkservice/IGTalkService;
    .end local v4           #session:Lcom/google/android/gtalkservice/IImSession;
    :catchall_39
    move-exception v6

    :try_start_3a
    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v6

    .line 143
    .restart local v3       #service:Lcom/google/android/gtalkservice/IGTalkService;
    .restart local v4       #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_3c
    :try_start_3c
    iget-object v6, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 144
    .local v0, count:I
    const/4 v5, 0x1

    .line 145
    .local v5, shouldAddCallback:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_44
    if-ge v1, v0, :cond_55

    .line 146
    iget-object v6, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;

    invoke-virtual {v6}, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-ne v6, p1, :cond_5e

    .line 147
    const/4 v5, 0x0

    .line 151
    :cond_55
    if-eqz v5, :cond_5c

    .line 155
    iget-object v6, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_5c
    const/4 v2, 0x0

    goto :goto_32

    .line 145
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 159
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v5           #shouldAddCallback:Z
    :catchall_61
    move-exception v6

    monitor-exit v7
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_61

    throw v6

    .line 128
    :catch_64
    move-exception v6

    goto :goto_24
.end method

.method public clearService()V
    .registers 5

    .prologue
    .line 340
    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 342
    iget-object v1, p0, Lcom/google/android/talk/TalkServiceState;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 343
    iget-object v1, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 344
    .local v0, pendingServiceMessageCount:I
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_33

    .line 345
    if-eqz v0, :cond_32

    .line 346
    const-string v1, "talk/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkServiceState - clearService but pending service queue had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_32
    return-void

    .line 344
    .end local v0           #pendingServiceMessageCount:I
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getService()Lcom/google/android/gtalkservice/IGTalkService;
    .registers 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_3
    iget-object v0, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    monitor-exit v1

    return-object v0

    .line 355
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public removeServiceAvailableCallback(Landroid/os/Handler;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 228
    iget-object v3, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 229
    :try_start_3
    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 230
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1f

    .line 231
    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 232
    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    :cond_1f
    monitor-exit v3

    .line 237
    return-void

    .line 230
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 236
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public removeSessionAvailableCallback(Landroid/os/Handler;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 209
    iget-object v3, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_3
    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1f

    .line 212
    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 213
    iget-object v2, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    :cond_1f
    monitor-exit v3

    .line 218
    return-void

    .line 211
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 217
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public setImSessionAvailable(JLcom/google/android/gtalkservice/IImSession;)V
    .registers 12
    .parameter "accountId"
    .parameter "session"

    .prologue
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v1, callbacksToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;>;"
    iget-object v5, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 309
    :try_start_8
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v4, :cond_15

    .line 310
    const-string v4, "talk/Service"

    const-string v6, "setImSessionAvailable while mService == null"

    invoke-static {v4, v6}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    monitor-exit v5

    .line 330
    :cond_14
    return-void

    .line 313
    :cond_15
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mSessionMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_26
    if-ltz v2, :cond_46

    .line 315
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;

    .line 316
    .local v0, callback:Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
    iget-wide v6, v0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->accountId:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_43

    .line 317
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v0, v4, p3}, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->setServiceAndSession(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 318
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v4, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 314
    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 322
    .end local v0           #callback:Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
    :cond_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_5b

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;

    .line 328
    .restart local v0       #callback:Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
    invoke-virtual {v0}, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->post()V

    goto :goto_4b

    .line 322
    .end local v0           #callback:Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_5b
    move-exception v4

    :try_start_5c
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v4
.end method

.method public setService(Lcom/google/android/gtalkservice/IGTalkService;)V
    .registers 14
    .parameter "service"

    .prologue
    .line 246
    if-nez p1, :cond_6

    .line 247
    invoke-virtual {p0}, Lcom/google/android/talk/TalkServiceState;->clearService()V

    .line 295
    :cond_5
    return-void

    .line 253
    :cond_6
    iget-object v9, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 254
    :try_start_9
    iput-object p1, p0, Lcom/google/android/talk/TalkServiceState;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 255
    iget-object v8, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;

    .line 257
    .local v4, callbacksToSend:[Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    iget-object v8, p0, Lcom/google/android/talk/TalkServiceState;->mServiceAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 258
    monitor-exit v9
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_31

    .line 262
    move-object v2, v4

    .local v2, arr$:[Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_24
    if-ge v5, v6, :cond_34

    aget-object v3, v2, v5

    .line 263
    .local v3, callback:Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    invoke-virtual {v3, p1}, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->setService(Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 264
    invoke-virtual {v3}, Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;->post()V

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 258
    .end local v2           #arr$:[Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    .end local v3           #callback:Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    .end local v4           #callbacksToSend:[Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_31
    move-exception v8

    :try_start_32
    monitor-exit v9
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v8

    .line 268
    .restart local v2       #arr$:[Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    .restart local v4       #callbacksToSend:[Lcom/google/android/talk/TalkServiceState$PendingServiceAvailableCallback;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, accountIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/google/android/talk/TalkServiceState;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 270
    :try_start_3c
    iget-object v8, p0, Lcom/google/android/talk/TalkServiceState;->mSessionAvailableListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;

    .line 271
    .local v3, callback:Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
    iget-wide v10, v3, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->accountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 276
    iget-wide v10, v3, Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;->accountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 279
    .end local v3           #callback:Lcom/google/android/talk/TalkServiceState$PendingSessionAvailableCallback;
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_64
    move-exception v8

    monitor-exit v9
    :try_end_66
    .catchall {:try_start_3c .. :try_end_66} :catchall_64

    throw v8

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_67
    :try_start_67
    monitor-exit v9
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_64

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6c
    :goto_6c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 282
    .local v0, accountId:Ljava/lang/Long;
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v7

    .line 287
    .local v7, session:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v7, :cond_6c

    .line 288
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9, v7}, Lcom/google/android/talk/TalkServiceState;->setImSessionAvailable(JLcom/google/android/gtalkservice/IImSession;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_89} :catch_8a

    goto :goto_6c

    .line 290
    .end local v7           #session:Lcom/google/android/gtalkservice/IImSession;
    :catch_8a
    move-exception v8

    goto :goto_6c
.end method
