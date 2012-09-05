.class public Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubMessageLinearLayout"
.end annotation


# instance fields
.field protected mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 984
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 985
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    .line 986
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->initLinearLayout(Landroid/content/Context;)V

    .line 987
    return-void
.end method

.method private initLinearLayout(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 997
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    .line 998
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    invoke-virtual {p0, v0, v2, v2}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->addView(Landroid/view/View;II)V

    .line 999
    return-void
.end method


# virtual methods
.method public getBouncingLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;
    .registers 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLinearLayout;->mListViewLayout:Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
