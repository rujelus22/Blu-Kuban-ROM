.class final Lcom/google/android/youtube/app/ui/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/aj;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cj;

.field private final b:Lcom/google/android/youtube/app/remote/RemoteControl;

.field private final c:Ljava/lang/Runnable;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/app/remote/RemoteControl;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "remoteControl must not be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/RemoteControl;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 102
    invoke-interface {p2, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/app/remote/aj;)V

    .line 103
    new-instance v0, Lcom/google/android/youtube/app/ui/cn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/ui/cn;-><init>(Lcom/google/android/youtube/app/ui/cm;Lcom/google/android/youtube/app/ui/cj;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->c:Ljava/lang/Runnable;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/app/remote/RemoteControl;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->a(Lcom/google/android/youtube/app/ui/cj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->e(Lcom/google/android/youtube/app/remote/aj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/cm;->d:Z

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->d(Lcom/google/android/youtube/app/remote/aj;)V

    .line 113
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ENDED:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne p1, v0, :cond_11

    .line 134
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/cm;->c()V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->b(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cl;->a()V

    .line 141
    :cond_10
    :goto_10
    return-void

    .line 136
    :cond_11
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->PLAYING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->BUFFERING:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne p1, v0, :cond_10

    .line 138
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->a(Lcom/google/android/youtube/app/ui/cj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/cm;->a(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V
    .registers 4
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/google/android/youtube/app/ui/ck;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 169
    :goto_b
    return-void

    .line 153
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->b(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cl;->a()V

    .line 154
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/cm;->c()V

    goto :goto_b

    .line 157
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->b(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cl;->a()V

    goto :goto_b

    .line 160
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/cj;->a(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/app/remote/ap;)Lcom/google/android/youtube/app/remote/ap;

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->a(Lcom/google/android/youtube/app/ui/cj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c(Lcom/google/android/youtube/app/remote/aj;)V

    goto :goto_b

    .line 165
    :pswitch_3f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/cj;->a(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/app/remote/ap;)Lcom/google/android/youtube/app/remote/ap;

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->a(Lcom/google/android/youtube/app/ui/cj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cm;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 150
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_19
        :pswitch_23
        :pswitch_3f
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 172
    if-nez p1, :cond_c

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->b(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cl;->a()V

    .line 177
    :goto_b
    return-void

    .line 176
    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->c(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/ui/co;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/cj;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/youtube/app/ui/co;-><init>(Lcom/google/android/youtube/app/ui/cj;Ljava/lang/String;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    goto :goto_b
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 180
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/cm;->d:Z

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cm;->b:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->c(Lcom/google/android/youtube/app/remote/aj;)V

    .line 119
    :cond_9
    return-void
.end method

.method public final l()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method
