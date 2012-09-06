.class public final Lcom/google/android/youtube/app/remote/AtHomeConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/athome/picker/b/a;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/support/place/api/broker/BrokerManager;

.field private e:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

.field private final f:Lcom/google/android/youtube/app/remote/b;

.field private final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->c:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/google/android/youtube/app/remote/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/remote/b;-><init>(Lcom/google/android/youtube/app/remote/AtHomeConnection;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->f:Lcom/google/android/youtube/app/remote/b;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->g:Ljava/util/List;

    .line 54
    sget-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->DISCONNECTED:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->e:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    .line 56
    invoke-static {p1}, Landroid/support/place/api/broker/BrokerManager;->getInstance(Landroid/content/Context;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->d:Landroid/support/place/api/broker/BrokerManager;

    .line 58
    invoke-static {p1}, Lcom/android/athome/picker/b/a;->a(Landroid/content/Context;)Lcom/android/athome/picker/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b:Lcom/android/athome/picker/b/a;

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b:Lcom/android/athome/picker/b/a;

    const-string v1, "com.google.android.youtube.athome.common.AtHomeVideoService"

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b:Lcom/android/athome/picker/b/a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/AtHomeConnection;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 107
    sget-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->DISCONNECTED:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    .line 116
    :goto_a
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->e:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    if-eq v1, v0, :cond_2b

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AtHomeConnection state changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 118
    iput-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->e:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    .line 119
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->c:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/app/remote/a;

    invoke-direct {v2, p0, v0}, Lcom/google/android/youtube/app/remote/a;-><init>(Lcom/google/android/youtube/app/remote/AtHomeConnection;Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_2b
    return-void

    .line 108
    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->d:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    if-nez v0, :cond_37

    .line 109
    sget-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->CONNECTING_TO_BROKER:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    goto :goto_a

    .line 110
    :cond_37
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->d:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getPlaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 111
    sget-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->LOOKING_FOR_PLACES:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    goto :goto_a

    .line 113
    :cond_46
    sget-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->PLACES_AVAILABLE:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    goto :goto_a
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->e:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/youtube/app/remote/m;
    .registers 6
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b:Lcom/android/athome/picker/b/a;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;)Lcom/android/athome/picker/b/v;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/android/athome/picker/b/v;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 92
    const-string v2, "com.google.android.youtube.athome.common.AtHomeVideoService"

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 93
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/android/athome/picker/media/q;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_34
    new-instance v2, Lcom/google/android/youtube/app/remote/m;

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/app/remote/m;-><init>(Landroid/support/place/connector/ConnectorInfo;Ljava/lang/String;)V

    move-object v0, v2

    .line 99
    :goto_3a
    return-object v0

    .line 93
    :cond_3b
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a:Landroid/content/Context;

    const v2, 0x7f0b022d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    .line 99
    :cond_45
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public final a(Lcom/google/android/youtube/app/remote/c;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->d:Landroid/support/place/api/broker/BrokerManager;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->f:Lcom/google/android/youtube/app/remote/b;

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->startListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b:Lcom/android/athome/picker/b/a;

    invoke-virtual {v0}, Lcom/android/athome/picker/b/a;->a()V

    .line 68
    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->c()V

    .line 70
    :cond_1d
    return-void
.end method

.method final b()Landroid/support/place/connector/Broker;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->d:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/youtube/app/remote/c;)V
    .registers 4
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->d:Landroid/support/place/api/broker/BrokerManager;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->f:Lcom/google/android/youtube/app/remote/b;

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->stopListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b:Lcom/android/athome/picker/b/a;

    invoke-virtual {v0}, Lcom/android/athome/picker/b/a;->b()V

    .line 77
    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->c()V

    .line 79
    :cond_1c
    return-void
.end method
