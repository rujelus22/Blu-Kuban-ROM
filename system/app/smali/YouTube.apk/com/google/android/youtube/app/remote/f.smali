.class final Lcom/google/android/youtube/app/remote/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/e;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/e;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/f;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 96
    :goto_5
    return-void

    .line 92
    :pswitch_6
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/f;->a:Lcom/google/android/youtube/app/remote/e;

    sget-object v1, Lcom/google/android/youtube/app/remote/am;->b:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/al;)V

    goto :goto_5

    .line 90
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
