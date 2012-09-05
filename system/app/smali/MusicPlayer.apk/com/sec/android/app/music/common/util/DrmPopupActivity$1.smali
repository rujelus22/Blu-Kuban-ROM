.class Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DrmPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/util/DrmPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/util/DrmPopupActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/util/DrmPopupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;->this$0:Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.acquiringrights.statechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;->this$0:Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupType:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_28

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;->this$0:Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_23

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;->this$0:Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 80
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;->this$0:Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->finish()V

    .line 83
    :cond_28
    return-void
.end method
