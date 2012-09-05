.class Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;
.super Ljava/lang/Object;
.source "PresetModeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PresetModeActivity;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 390
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoShared()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_3c

    move-result v4

    if-eqz v4, :cond_1c

    .line 405
    :cond_17
    :goto_17
    return v3

    .line 393
    :catch_18
    move-exception v1

    .line 394
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 399
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 400
    .local v0, action:I
    if-eqz v0, :cond_2e

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->isPressed()Z

    move-result v4

    if-ne v4, v3, :cond_41

    .line 401
    :cond_2e
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mVideo:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1500(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020012

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    :goto_3a
    const/4 v3, 0x0

    goto :goto_17

    .line 395
    .end local v0           #action:I
    :catch_3c
    move-exception v2

    .line 396
    .local v2, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1c

    .line 403
    .end local v2           #e2:Ljava/lang/NullPointerException;
    .restart local v0       #action:I
    :cond_41
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mVideo:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->access$1500(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020011

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3a
.end method
