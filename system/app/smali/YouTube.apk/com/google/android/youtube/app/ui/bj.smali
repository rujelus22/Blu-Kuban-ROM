.class final Lcom/google/android/youtube/app/ui/bj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bj;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 619
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 626
    :cond_5
    :goto_5
    return-void

    .line 621
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bj;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->m(Lcom/google/android/youtube/app/ui/bd;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 622
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bj;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->n(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/player/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bi;->f()V

    goto :goto_5

    .line 619
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method
