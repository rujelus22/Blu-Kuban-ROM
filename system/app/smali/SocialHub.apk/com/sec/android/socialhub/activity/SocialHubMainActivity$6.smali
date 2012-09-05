.class Lcom/sec/android/socialhub/activity/SocialHubMainActivity$6;
.super Ljava/lang/Object;
.source "SocialHubMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 635
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 639
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mShowNeverAgain:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Z

    move-result v0

    if-ne v0, v2, :cond_14

    .line 641
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$6;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "showNeverAgain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 645
    :cond_14
    return-void
.end method
