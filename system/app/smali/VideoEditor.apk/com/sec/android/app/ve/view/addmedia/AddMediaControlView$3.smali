.class Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$3;
.super Ljava/lang/Object;
.source "AddMediaControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->launchCameraDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 264
    const-string v0, "Launching camera"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 266
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->captureFromCamera()V

    .line 267
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->cameraDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 268
    return-void
.end method
