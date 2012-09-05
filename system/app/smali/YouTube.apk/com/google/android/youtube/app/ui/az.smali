.class final Lcom/google/android/youtube/app/ui/az;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/at;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/at;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/az;->a:Lcom/google/android/youtube/app/ui/at;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 302
    :cond_5
    :goto_5
    return-void

    .line 295
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/az;->a:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/at;->e(Lcom/google/android/youtube/app/ui/at;)Lcom/google/android/youtube/app/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    .line 296
    sget-object v1, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/google/android/youtube/app/t;->d:Lcom/google/android/youtube/app/t;

    if-eq v0, v1, :cond_5

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/az;->a:Lcom/google/android/youtube/app/ui/at;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/at;->f(Lcom/google/android/youtube/app/ui/at;)Lcom/google/android/youtube/core/player/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aq;->e()V

    goto :goto_5

    .line 293
    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method
