.class public final Lcom/google/android/youtube/app/remote/e;
.super Lcom/google/android/youtube/app/remote/n;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/c;


# instance fields
.field private final a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

.field private final b:Landroid/support/place/rpc/RpcErrorHandler;

.field private final c:Lcom/google/android/youtube/athome/app/common/l;

.field private final d:Lcom/google/android/youtube/athome/app/common/j;

.field private final e:Lcom/google/android/youtube/athome/app/common/k;

.field private final f:Landroid/os/Handler;

.field private g:Lcom/google/android/youtube/athome/app/common/h;

.field private h:Lcom/google/android/youtube/app/remote/m;

.field private i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/google/android/youtube/app/remote/ak;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/remote/AtHomeConnection;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/n;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v0, "connection cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/AtHomeConnection;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    .line 84
    new-instance v0, Lcom/google/android/youtube/app/remote/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/remote/l;-><init>(Lcom/google/android/youtube/app/remote/e;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    .line 85
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 87
    new-instance v0, Lcom/google/android/youtube/app/remote/f;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/remote/f;-><init>(Lcom/google/android/youtube/app/remote/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->f:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/google/android/youtube/app/remote/g;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/remote/g;-><init>(Lcom/google/android/youtube/app/remote/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->d:Lcom/google/android/youtube/athome/app/common/j;

    .line 105
    new-instance v0, Lcom/google/android/youtube/app/remote/h;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/remote/h;-><init>(Lcom/google/android/youtube/app/remote/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->c:Lcom/google/android/youtube/athome/app/common/l;

    .line 115
    new-instance v0, Lcom/google/android/youtube/app/remote/i;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/remote/i;-><init>(Lcom/google/android/youtube/app/remote/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->e:Lcom/google/android/youtube/athome/app/common/k;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/e;)I
    .registers 2
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/youtube/app/remote/e;->m:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/e;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/google/android/youtube/app/remote/e;->m:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p1, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_c
    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    if-eqz v1, :cond_19

    :cond_12
    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->c(Ljava/lang/String;)V

    :cond_19
    iget v0, p1, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->state:I

    packed-switch v0, :pswitch_data_66

    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq v0, v1, :cond_2b

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V

    :cond_2b
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->r:Z

    iget-boolean v1, p1, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->subtitlesEnabled:Z

    if-eq v0, v1, :cond_3a

    iget-boolean v0, p1, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->subtitlesEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->r:Z

    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->r:Z

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Z)V

    :cond_3a
    return-void

    :pswitch_3b
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/app/remote/e;->l:Lcom/google/android/youtube/app/remote/ak;

    goto :goto_20

    :pswitch_41
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PAUSED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    goto :goto_20

    :pswitch_44
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    goto :goto_20

    :pswitch_47
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    goto :goto_20

    :pswitch_4a
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    goto :goto_20

    :pswitch_4d
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    iget-object v1, p1, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->ad:Lcom/google/android/youtube/athome/app/common/a;

    if-eqz v1, :cond_20

    iget-object v1, p1, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->ad:Lcom/google/android/youtube/athome/app/common/a;

    new-instance v2, Lcom/google/android/youtube/app/remote/ak;

    iget-object v3, v1, Lcom/google/android/youtube/athome/app/common/a;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/youtube/athome/app/common/a;->b:Landroid/net/Uri;

    iget-boolean v1, v1, Lcom/google/android/youtube/athome/app/common/a;->c:Z

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/youtube/app/remote/ak;-><init>(Ljava/lang/String;Landroid/net/Uri;Z)V

    iput-object v2, p0, Lcom/google/android/youtube/app/remote/e;->l:Lcom/google/android/youtube/app/remote/ak;

    goto :goto_20

    :pswitch_63
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    goto :goto_20

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_41
        :pswitch_63
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
    .end packed-switch
.end method

.method private a(Lcom/google/android/youtube/app/remote/m;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 173
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/e;->h:Lcom/google/android/youtube/app/remote/m;

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a()Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->DISCONNECTED:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a()Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->CONNECTING_TO_BROKER:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    if-ne v0, v1, :cond_26

    .line 176
    :cond_1e
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 212
    :cond_25
    :goto_25
    return-void

    .line 179
    :cond_26
    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/m;->b()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/google/android/youtube/athome/common/d;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getExtras()Landroid/support/place/rpc/RpcData;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/youtube/athome/common/d;-><init>(Landroid/support/place/rpc/RpcData;)V

    .line 181
    const-string v0, "versionInfo"

    sget-object v4, Lcom/google/android/youtube/athome/common/e;->e:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/athome/common/e;

    .line 183
    if-eqz v0, :cond_b4

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Version information: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 185
    iget v1, v0, Lcom/google/android/youtube/athome/common/e;->b:I

    if-gtz v1, :cond_5a

    .line 186
    sget-object v0, Lcom/google/android/youtube/app/remote/d;->b:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto :goto_25

    .line 188
    :cond_5a
    iget v1, v0, Lcom/google/android/youtube/athome/common/e;->a:I

    if-le v1, v5, :cond_64

    .line 189
    sget-object v0, Lcom/google/android/youtube/app/remote/d;->a:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto :goto_25

    .line 192
    :cond_64
    iget v1, v0, Lcom/google/android/youtube/athome/common/e;->b:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_b0

    move v1, v2

    :goto_6a
    iput-boolean v1, p0, Lcom/google/android/youtube/app/remote/e;->q:Z

    .line 193
    iget v0, v0, Lcom/google/android/youtube/athome/common/e;->b:I

    if-lt v0, v5, :cond_b2

    :goto_70
    iput-boolean v2, p0, Lcom/google/android/youtube/app/remote/e;->o:Z

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b()Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/app/remote/m;->a(Landroid/support/place/connector/Broker;)Lcom/google/android/youtube/athome/app/common/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    new-instance v1, Lcom/google/android/youtube/app/remote/k;

    invoke-direct {v1, p0, v3}, Lcom/google/android/youtube/app/remote/k;-><init>(Lcom/google/android/youtube/app/remote/e;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/h;->a(Lcom/google/android/youtube/athome/app/common/i;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->c:Lcom/google/android/youtube/athome/app/common/l;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/athome/app/common/h;->a(Lcom/google/android/youtube/athome/app/common/l;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->d:Lcom/google/android/youtube/athome/app/common/j;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/athome/app/common/h;->a(Lcom/google/android/youtube/athome/app/common/j;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->e:Lcom/google/android/youtube/athome/app/common/k;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/athome/app/common/h;->a(Lcom/google/android/youtube/athome/app/common/k;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 207
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->n:Z

    if-eqz v0, :cond_25

    .line 208
    iput-boolean v3, p0, Lcom/google/android/youtube/app/remote/e;->n:Z

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->b(Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_b0
    move v1, v3

    .line 192
    goto :goto_6a

    :cond_b2
    move v2, v3

    .line 193
    goto :goto_70

    .line 196
    :cond_b4
    const-string v0, "Cannot retrieve version info from the connector"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/google/android/youtube/app/remote/d;->b:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto/16 :goto_25
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/e;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/google/android/youtube/app/remote/e;->k:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/e;)Lcom/google/android/youtube/app/remote/m;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->h:Lcom/google/android/youtube/app/remote/m;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/remote/e;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/remote/e;)Lcom/google/android/youtube/athome/app/common/l;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->c:Lcom/google/android/youtube/athome/app/common/l;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/remote/e;)Lcom/google/android/youtube/athome/app/common/k;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->e:Lcom/google/android/youtube/athome/app/common/k;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/e;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->SLEEP:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/e;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_29

    .line 134
    :cond_10
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 135
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a()Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;)V

    .line 140
    :cond_29
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->s:Z

    if-nez v0, :cond_35

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->a(Lcom/google/android/youtube/app/remote/c;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->s:Z

    .line 144
    :cond_35
    return-void
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_11

    .line 253
    iput p1, p0, Lcom/google/android/youtube/app/remote/e;->m:I

    .line 254
    mul-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0x64

    .line 255
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/athome/app/common/h;->b(ILandroid/support/place/rpc/RpcErrorHandler;)V

    .line 257
    :cond_11
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 337
    sget-object v0, Lcom/google/android/youtube/app/remote/j;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 359
    :cond_c
    :goto_c
    return-void

    .line 340
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->h:Lcom/google/android/youtube/app/remote/m;

    if-eqz v0, :cond_c

    .line 341
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 342
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c

    .line 349
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/e;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTING:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_39

    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/e;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/e;->t()Lcom/google/android/youtube/app/remote/al;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/am;->b:Lcom/google/android/youtube/app/remote/al;

    if-ne v0, v1, :cond_c

    :cond_39
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->h:Lcom/google/android/youtube/app/remote/m;

    if-eqz v0, :cond_c

    .line 353
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->h:Lcom/google/android/youtube/app/remote/m;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/m;)V

    goto :goto_c

    .line 337
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public final synthetic a(Lcom/google/android/youtube/app/remote/ap;Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/app/remote/m;

    const-string v0, "screen cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->n:Z

    long-to-int v0, p3

    iput v0, p0, Lcom/google/android/youtube/app/remote/e;->p:I

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/m;)V

    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/remote/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V
    .registers 5
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_2e

    .line 377
    new-instance v1, Lcom/google/android/youtube/athome/app/common/g;

    invoke-direct {v1}, Lcom/google/android/youtube/athome/app/common/g;-><init>()V

    iget-object v0, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    :goto_13
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/athome/app/common/g;->a(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/g;->b(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/g;->c(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/app/common/g;->a()Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/athome/app/common/h;->a(Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 384
    :cond_2e
    return-void

    .line 377
    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    goto :goto_13
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/remote/e;->b(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)Z
    .registers 4
    .parameter

    .prologue
    .line 295
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;
    .registers 4
    .parameter

    .prologue
    .line 299
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->PRIVATE:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->UNSPECIFIED:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    goto :goto_8
.end method

.method protected final b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->a:Lcom/google/android/youtube/app/remote/AtHomeConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/AtHomeConnection;->b(Lcom/google/android/youtube/app/remote/c;)V

    .line 150
    iput-boolean v2, p0, Lcom/google/android/youtube/app/remote/e;->s:Z

    .line 151
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/e;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_24

    .line 152
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->SLEEP:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_24

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/app/common/h;->a()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    .line 158
    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    return-void
.end method

.method public final b(I)V
    .registers 4
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_d

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/athome/app/common/h;->a(ILandroid/support/place/rpc/RpcErrorHandler;)V

    .line 262
    iput p1, p0, Lcom/google/android/youtube/app/remote/e;->k:I

    .line 264
    :cond_d
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_37

    .line 319
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->UNCONFIRMED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/e;->i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V

    .line 321
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->o:Z

    if-eqz v0, :cond_3a

    .line 322
    new-instance v0, Lcom/google/android/youtube/athome/app/common/PlayRequest;

    iget v1, p0, Lcom/google/android/youtube/app/remote/e;->p:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/athome/app/common/PlayRequest;-><init>(Ljava/lang/String;I)V

    .line 323
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/athome/app/common/h;->a(Lcom/google/android/youtube/athome/app/common/PlayRequest;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 327
    :goto_25
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/remote/e;->c(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 329
    iget v0, p0, Lcom/google/android/youtube/app/remote/e;->p:I

    iput v0, p0, Lcom/google/android/youtube/app/remote/e;->k:I

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/app/remote/e;->p:I

    .line 333
    :cond_37
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    .line 334
    return-void

    .line 325
    :cond_3a
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/athome/app/common/h;->a(Ljava/lang/String;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_25
.end method

.method public final c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/remote/e;->b(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 221
    iput-object v1, p0, Lcom/google/android/youtube/app/remote/e;->h:Lcom/google/android/youtube/app/remote/m;

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_16

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/app/common/h;->a()V

    .line 224
    iput-object v1, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    .line 226
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->q:Z

    .line 227
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/h;->a(Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 237
    :cond_b
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_b

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/h;->b(Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 243
    :cond_b
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/h;->c(Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 249
    :cond_b
    return-void
.end method

.method public final g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->i:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/youtube/app/remote/e;->m:I

    return v0
.end method

.method public final j()D
    .registers 3

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/youtube/app/remote/e;->k:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public final k()Ljava/util/List;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lcom/google/android/youtube/app/remote/ak;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->l:Lcom/google/android/youtube/app/remote/ak;

    return-object v0
.end method

.method public final n()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->g:Lcom/google/android/youtube/athome/app/common/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/e;->b:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/h;->d(Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 314
    return-void
.end method

.method public final o()I
    .registers 2

    .prologue
    .line 368
    const v0, 0x7f0b0231

    return v0
.end method

.method public final p()Z
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/youtube/app/remote/e;->q:Z

    return v0
.end method

.method public final bridge synthetic q()Lcom/google/android/youtube/app/remote/ap;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/e;->h:Lcom/google/android/youtube/app/remote/m;

    return-object v0
.end method
