.class Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$2;
.super Ljava/lang/Object;
.source "SocialHubFeedsCommentListActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->drawOriginalActivity(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestStopScroll()V
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    iget-object v0, v0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setListViewScroll(Z)V

    .line 561
    return-void
.end method
