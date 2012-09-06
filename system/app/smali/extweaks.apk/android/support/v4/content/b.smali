.class final Landroid/support/v4/content/b;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# instance fields
.field final synthetic a:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Landroid/support/v4/content/b;->a:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    :goto_8
    return-void

    .line 116
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/content/b;->a:Landroid/support/v4/content/LocalBroadcastManager;

    #calls: Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->access$000(Landroid/support/v4/content/LocalBroadcastManager;)V

    goto :goto_8

    .line 114
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
