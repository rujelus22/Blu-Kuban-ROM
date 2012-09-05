.class Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;
.super Ljava/lang/Object;
.source "SocialHubStatusUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 570
    .local v0, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    if-nez v0, :cond_12

    .line 572
    const-string v3, "SocialHubStatusUpdateActivity"

    const-string v4, "onClick()"

    const-string v5, "check holder is null!!!!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :goto_11
    return-void

    .line 576
    :cond_12
    iget-object v3, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v3, :cond_3c

    .line 578
    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4c

    const/4 v3, 0x1

    :goto_21
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 579
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/MultiLineLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getViewHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 580
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 581
    .local v2, viewinfo:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    iget-object v3, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->bChecked:Z

    .line 586
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;>;"
    .end local v2           #viewinfo:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    :cond_3c
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->checkSpSupportPhoto()V
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    .line 587
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->checkDisabledSp()V

    .line 588
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->reCheckStatus()V
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    goto :goto_11

    .line 578
    :cond_4c
    const/4 v3, 0x0

    goto :goto_21
.end method
