.class public Lcom/vlingo/client/safereader/SafeReaderAPI;
.super Ljava/lang/Object;
.source "SafeReaderAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;,
        Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;,
        Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;,
        Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;
    }
.end annotation


# static fields
.field private static final API_ADD_TTS_LISTENER:I = 0xc

.field private static final API_CANCEL_READBACK:I = 0x4

.field private static final API_GET_CURRENT_MESSAGE_CONTEXT:I = 0x10

.field private static final API_IS_SAFE_READER_ENABLED:I = 0x6

.field private static final API_PAUSE:I = 0x2

.field private static final API_RELOAD_ONBOARD_TTS:I = 0xf

.field private static final API_REMOVE_NOTIFICATION:I = 0xa

.field private static final API_REMOVE_TTS_LISTENER:I = 0xd

.field private static final API_RESUME:I = 0x9

.field private static final API_SET_BLUETOOTH:I = 0x15

.field private static final API_SET_FEATURE:I = 0x5

.field private static final API_SET_INT_FEATURE:I = 0x14

.field private static final API_SET_LANGUAGE:I = 0x7

.field private static final API_SET_VOICE:I = 0x8

.field private static final API_SKIP:I = 0x11

.field private static final API_SPEAK:I = 0x3

.field private static final API_SPEAK_COMPOUND:I = 0xe

.field private static final API_START:I = 0x0

.field private static final API_START_SILENT:I = 0x12

.field private static final API_STOP:I = 0x1

.field private static final API_STOP_PLAYBACK:I = 0xb

.field private static final API_STOP_SILENT:I = 0x13

.field private static s_Receiver:Landroid/content/BroadcastReceiver;

.field private static s_SafeReaderAPI:Lcom/vlingo/client/safereader/SafeReaderAPI;


# instance fields
.field private m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

.field private m_Connecting:Z

.field private m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

.field private m_SafeReaderConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/vlingo/client/safereader/SafeReaderAPI;

    invoke-direct {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;-><init>()V

    sput-object v0, Lcom/vlingo/client/safereader/SafeReaderAPI;->s_SafeReaderAPI:Lcom/vlingo/client/safereader/SafeReaderAPI;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/safereader/SafeReaderAPI;->s_Receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_Connecting:Z

    .line 59
    new-instance v0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;-><init>(Lcom/vlingo/client/safereader/SafeReaderAPI;Lcom/vlingo/client/safereader/SafeReaderAPI$1;)V

    iput-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    .line 61
    new-instance v0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/safereader/SafeReaderAPI$1;-><init>(Lcom/vlingo/client/safereader/SafeReaderAPI;)V

    iput-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReaderConnection:Landroid/content/ServiceConnection;

    .line 530
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/ISafeReaderService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vlingo/client/safereader/SafeReaderAPI;Lcom/vlingo/client/safereader/ISafeReaderService;)Lcom/vlingo/client/safereader/ISafeReaderService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/vlingo/client/safereader/SafeReaderAPI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_Connecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/vlingo/client/safereader/SafeReaderAPI;->s_SafeReaderAPI:Lcom/vlingo/client/safereader/SafeReaderAPI;

    return-object v0
.end method

.method private static registerReceiver()V
    .registers 3

    .prologue
    .line 98
    sget-object v1, Lcom/vlingo/client/safereader/SafeReaderAPI;->s_Receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_20

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.vlingo.client.samsung.safereader.STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.vlingo.client.samsung.safereader.STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/vlingo/client/safereader/SafeReaderAPI$2;

    invoke-direct {v1}, Lcom/vlingo/client/safereader/SafeReaderAPI$2;-><init>()V

    sput-object v1, Lcom/vlingo/client/safereader/SafeReaderAPI;->s_Receiver:Landroid/content/BroadcastReceiver;

    .line 110
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/safereader/SafeReaderAPI;->s_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/vlingo/client/VlingoApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    :cond_20
    return-void
.end method


# virtual methods
.method public Connect()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-nez v3, :cond_44

    .line 120
    monitor-enter p0

    .line 121
    :try_start_7
    iget-boolean v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_Connecting:Z

    if-eqz v3, :cond_d

    .line 122
    monitor-exit p0

    .line 135
    :goto_c
    return v1

    .line 123
    :cond_d
    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-nez v3, :cond_43

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_Connecting:Z

    .line 125
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->registerReceiver()V

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vlingo/client/safereader/SafeReaderService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vlingo/client/VlingoApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vlingo.client.samsung.safereader.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReaderConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/vlingo/client/VlingoApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    monitor-exit p0

    goto :goto_c

    .line 133
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1

    :cond_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    :cond_44
    move v1, v2

    .line 135
    goto :goto_c
.end method

.method public declared-synchronized addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V
    .registers 8
    .parameter "listener"
    .parameter "id"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 284
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 285
    .local v1, m:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 286
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_24

    .line 293
    .end local v1           #m:Landroid/os/Message;
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 287
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_18

    .line 288
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1, p2}, Lcom/vlingo/client/safereader/ISafeReaderService;->addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_18

    .line 290
    :catch_24
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_18

    .line 283
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancel(Z)V
    .registers 7
    .parameter "clearQueue"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 272
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/4 v3, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_25

    .line 279
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 273
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_19

    .line 274
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->cancelReadback(Z)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_19

    .line 276
    :catch_25
    move-exception v0

    .line 277
    .local v0, e:Landroid/os/RemoteException;
    :try_start_26
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_19

    .line 271
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCurrentMessageContext(Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;)V
    .registers 8
    .parameter "receiver"

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 377
    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, p1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v1, v4, v5}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_26

    .line 386
    .end local v1           #m:Landroid/os/Message;
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 379
    :cond_18
    :try_start_18
    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v3, :cond_16

    .line 380
    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v3}, Lcom/vlingo/client/safereader/ISafeReaderService;->getCurrentMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v2

    .line 381
    .local v2, mc:Lcom/vlingo/client/safereader/MessageContext;
    invoke-interface {p1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;->onMessageContextAvailable(Lcom/vlingo/client/safereader/MessageContext;)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_16

    .line 383
    .end local v2           #mc:Lcom/vlingo/client/safereader/MessageContext;
    :catch_26
    move-exception v0

    .line 384
    .local v0, e:Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_16

    .line 376
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized pause(I)V
    .registers 7
    .parameter "component"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 205
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_26

    .line 212
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 206
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_1a

    .line 207
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->pause(I)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_1a

    .line 209
    :catch_26
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_1a

    .line 204
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reloadOnboardTTS()V
    .registers 6

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 260
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_22

    .line 267
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 261
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_16

    .line 262
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1}, Lcom/vlingo/client/safereader/ISafeReaderService;->reloadOnboardTTS()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_16

    .line 264
    :catch_22
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_16

    .line 259
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeNotificationWithID(I)V
    .registers 7
    .parameter "notificationID"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 411
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0xa

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 413
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_27

    .line 425
    .end local v1           #m:Landroid/os/Message;
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 415
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_1b

    .line 418
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->removeNotificationWithID(I)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_1b

    .line 422
    :catch_27
    move-exception v0

    .line 423
    .local v0, e:Landroid/os/RemoteException;
    :try_start_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1b

    .line 408
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeTTSListener(I)V
    .registers 7
    .parameter "id"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 298
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, m:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 300
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_28

    .line 307
    .end local v1           #m:Landroid/os/Message;
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 301
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_1c

    .line 302
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->removeTTSListener(I)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_1c

    .line 304
    :catch_28
    move-exception v0

    .line 305
    .local v0, e:Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_1c

    .line 297
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resume(I)V
    .registers 7
    .parameter "component"

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 221
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    :cond_1a
    :goto_1a
    return-void

    .line 222
    :cond_1b
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_1a

    .line 223
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->resume(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_1a

    .line 225
    :catch_25
    move-exception v0

    .line 226
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a
.end method

.method public declared-synchronized setBluetoothConnected(Z)V
    .registers 7
    .parameter "isConnected"

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 360
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0x15

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 361
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_27

    .line 368
    .end local v1           #m:Landroid/os/Message;
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 362
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_1b

    .line 363
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->setBluetoothConnected(Z)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_1b

    .line 365
    :catch_27
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    :try_start_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1b

    .line 359
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFeature(IZ)V
    .registers 8
    .parameter "what"
    .parameter "onOff"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 316
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/4 v3, 0x5

    new-instance v4, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;

    invoke-direct {v4, p1, p2}, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;-><init>(IZ)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 317
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_26

    .line 324
    .end local v1           #m:Landroid/os/Message;
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 318
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_1a

    .line 319
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1, p2}, Lcom/vlingo/client/safereader/ISafeReaderService;->setFeature(IZ)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_1a

    .line 321
    :catch_26
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_1a

    .line 315
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setIntFeature(II)V
    .registers 8
    .parameter "what"
    .parameter "value"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 331
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0x14

    new-instance v4, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;

    invoke-direct {v4, p1, p2}, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 332
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_27

    .line 339
    .end local v1           #m:Landroid/os/Message;
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 333
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_1b

    .line 334
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1, p2}, Lcom/vlingo/client/safereader/ISafeReaderService;->setIntFeature(II)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_1b

    .line 336
    :catch_27
    move-exception v0

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    :try_start_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1b

    .line 330
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLanguage(I)V
    .registers 7
    .parameter "lang"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 347
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 348
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_26

    .line 355
    .end local v1           #m:Landroid/os/Message;
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 349
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_1a

    .line 350
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->setLanguage(I)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_1a

    .line 352
    :catch_26
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_1a

    .line 346
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setVoice(I)V
    .registers 7
    .parameter "voice"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 394
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 395
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_27

    .line 402
    .end local v1           #m:Landroid/os/Message;
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 396
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_1b

    .line 397
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->setVoice(I)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_1b

    .line 399
    :catch_27
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    :try_start_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1b

    .line 393
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized skipCurrentlyPlayingItem()V
    .registers 6

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 175
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_22

    .line 182
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 176
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_16

    .line 177
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1}, Lcom/vlingo/client/safereader/ISafeReaderService;->skipCurrentlyPlayingItem()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_16

    .line 179
    :catch_22
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_16

    .line 174
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized speak(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 7
    .parameter "demand"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 248
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_21

    .line 255
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 249
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_15

    .line 250
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_15

    .line 252
    :catch_21
    move-exception v0

    .line 253
    .local v0, e:Landroid/os/RemoteException;
    :try_start_22
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_15

    .line 247
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized speakCompondRequests([Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 8
    .parameter "compondDemands"

    .prologue
    const/4 v3, 0x1

    .line 231
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    :try_start_3
    array-length v2, p1

    if-ge v1, v2, :cond_17

    .line 232
    aget-object v4, p1, v1

    const/4 v5, 0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_15

    move v2, v3

    :goto_f
    invoke-virtual {v4, v5, v2}, Lcom/vlingo/client/core/tts/TTSDemand;->setChainAttributes(ZZ)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3d

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 232
    :cond_15
    const/4 v2, 0x0

    goto :goto_f

    .line 235
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 236
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, p1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2c} :catch_38

    .line 243
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 237
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v2, :cond_2c

    .line 238
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v2, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->speakCompoundRequests([Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_2c

    .line 240
    :catch_38
    move-exception v0

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    :try_start_39
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_2c

    .line 231
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized start()V
    .registers 2

    .prologue
    .line 139
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->start(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Z)V
    .registers 7
    .parameter "speakAnnouncement"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 149
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    if-eqz p1, :cond_19

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v3, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_2a

    .line 157
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 149
    :cond_19
    const/16 v1, 0x12

    goto :goto_e

    .line 150
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_17

    .line 151
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->setSafeReaderEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->start(Z)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2a

    goto :goto_17

    .line 154
    :catch_2a
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_17

    .line 148
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .registers 2

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->stop(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(Z)V
    .registers 7
    .parameter "speakAnnouncement"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 162
    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v3, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v3, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_2a

    .line 170
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 162
    :cond_19
    const/16 v1, 0x13

    goto :goto_e

    .line 163
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_17

    .line 164
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->setSafeReaderEnabled(Z)V

    .line 165
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1, p1}, Lcom/vlingo/client/safereader/ISafeReaderService;->stop(Z)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2a

    goto :goto_17

    .line 167
    :catch_2a
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_17

    .line 161
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPlayback()V
    .registers 6

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2d

    move-result v1

    if-eqz v1, :cond_1c

    .line 187
    :try_start_7
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 188
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1c} :catch_28

    .line 196
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 189
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    if-eqz v1, :cond_1c

    .line 190
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;

    invoke-interface {v1}, Lcom/vlingo/client/safereader/ISafeReaderService;->stopPlayback()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_1c

    .line 192
    :catch_28
    move-exception v0

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_1c

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
