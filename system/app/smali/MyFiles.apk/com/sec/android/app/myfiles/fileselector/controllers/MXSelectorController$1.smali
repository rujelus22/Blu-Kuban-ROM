.class Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController$1;
.super Landroid/os/Handler;
.source "MXSelectorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 238
    :goto_5
    return-void

    .line 232
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->showWaitProgressDialog(Z)V

    goto :goto_5

    .line 235
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->showWaitProgressDialog(Z)V

    goto :goto_5

    .line 230
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
    .end packed-switch
.end method
