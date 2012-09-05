.class Lcom/sec/android/app/ve/view/PreviewViewGroup$2;
.super Landroid/os/Handler;
.source "PreviewViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 386
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 389
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 401
    :cond_5
    :goto_5
    return-void

    .line 391
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$2;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isSurfacePresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 394
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchThemes()V

    goto :goto_5

    .line 389
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
