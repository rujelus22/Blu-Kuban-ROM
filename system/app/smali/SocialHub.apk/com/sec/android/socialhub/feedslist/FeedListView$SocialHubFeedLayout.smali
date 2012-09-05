.class public Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedLayout;
.super Lcom/sec/android/socialhub/parent/AbsBouncingLayout;
.source "FeedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubFeedLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedListView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedLayout;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 574
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;-><init>(Landroid/content/Context;)V

    .line 575
    return-void
.end method


# virtual methods
.method protected bridge synthetic createListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedLayout;->createListView()Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    move-result-object v0

    return-object v0
.end method

.method protected createListView()Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedLayout;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->getAbsListView()Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    move-result-object v0

    return-object v0
.end method
