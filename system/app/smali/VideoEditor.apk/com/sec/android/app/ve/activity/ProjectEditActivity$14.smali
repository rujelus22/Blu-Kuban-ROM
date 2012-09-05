.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$14;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showImageDurationDialog(Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$14;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .prologue
    .line 1528
    const-string v0, "Dismissing Camera popup"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1529
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1530
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->resetBackToPreviousView()V

    .line 1531
    :cond_12
    return-void
.end method
