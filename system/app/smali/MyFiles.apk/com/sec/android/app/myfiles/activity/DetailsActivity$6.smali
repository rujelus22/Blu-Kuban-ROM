.class Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;
.super Landroid/os/Handler;
.source "DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/activity/DetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$900(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$900(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mbCanceled:Z
    invoke-static {v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$000(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    iput-boolean v1, v0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->showingDialog:Z

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->showDialog(I)V

    .line 197
    :cond_23
    return-void
.end method
