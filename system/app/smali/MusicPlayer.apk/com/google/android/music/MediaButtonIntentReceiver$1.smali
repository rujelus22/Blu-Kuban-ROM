.class final Lcom/google/android/music/MediaButtonIntentReceiver$1;
.super Landroid/os/Handler;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 37
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_28

    .line 49
    :cond_5
    :goto_5
    return-void

    .line 39
    :pswitch_6
    invoke-static {}, Lcom/google/android/music/MediaButtonIntentReceiver;->access$000()Z

    move-result v2

    if-nez v2, :cond_5

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 41
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v1, i:Landroid/content/Intent;
    const-class v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/music/MediaButtonIntentReceiver;->access$002(Z)Z

    goto :goto_5

    .line 37
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
