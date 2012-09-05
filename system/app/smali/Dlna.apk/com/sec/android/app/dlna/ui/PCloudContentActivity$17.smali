.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;
.super Landroid/os/Handler;
.source "PCloudContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x4

    .line 591
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 593
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 610
    :goto_9
    :pswitch_9
    return-void

    .line 595
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->showDialog(I)V

    goto :goto_9

    .line 598
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->removeDialog(I)V

    goto :goto_9

    .line 601
    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$17;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 593
    :pswitch_data_2e
    .packed-switch 0x7d0
        :pswitch_a
        :pswitch_10
        :pswitch_16
        :pswitch_9
    .end packed-switch
.end method
