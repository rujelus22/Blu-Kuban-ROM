.class Lcom/android/settings/wimax/WimaxEnabler$MyHandler;
.super Landroid/os/Handler;
.source "WimaxEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;Lcom/android/settings/wimax/WimaxEnabler$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 179
    :goto_5
    return-void

    .line 176
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wimax/WimaxEnabler;->access$1100(Lcom/android/settings/wimax/WimaxEnabler;Z)V

    goto :goto_5

    .line 174
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
