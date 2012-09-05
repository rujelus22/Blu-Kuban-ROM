.class Lcom/android/settings/motion/TabletTiltServiceSettings$1;
.super Landroid/os/Handler;
.source "TabletTiltServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/TabletTiltServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$1;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 58
    :goto_5
    return-void

    .line 55
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$1;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$000(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    goto :goto_5

    .line 53
    :pswitch_data_c
    .packed-switch 0x65
        :pswitch_6
    .end packed-switch
.end method
