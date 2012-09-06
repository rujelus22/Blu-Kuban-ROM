.class final Lcom/google/android/youtube/app/remote/b;
.super Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/AtHomeConnection;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/b;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/AtHomeConnection;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/b;-><init>(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    return-void
.end method


# virtual methods
.method public final onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/b;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    .line 135
    return-void
.end method

.method public final onBrokerDisconnected()V
    .registers 2

    .prologue
    .line 151
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/b;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    .line 153
    return-void
.end method

.method public final onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/b;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    .line 159
    return-void
.end method

.method public final onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlaceConnnected - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/b;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    .line 141
    return-void
.end method

.method public final onPlaceDisconnected()V
    .registers 2

    .prologue
    .line 145
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/b;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    .line 147
    return-void
.end method

.method public final onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 163
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/b;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/AtHomeConnection;)V

    .line 165
    return-void
.end method
