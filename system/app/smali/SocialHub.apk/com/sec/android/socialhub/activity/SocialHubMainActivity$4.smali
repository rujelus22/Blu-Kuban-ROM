.class Lcom/sec/android/socialhub/activity/SocialHubMainActivity$4;
.super Ljava/lang/Object;
.source "SocialHubMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 596
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mDialogCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_13

    .line 597
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverAgain:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$402(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;Z)Z

    .line 603
    :goto_12
    return-void

    .line 600
    :cond_13
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$4;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverAgain:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$402(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;Z)Z

    goto :goto_12
.end method
