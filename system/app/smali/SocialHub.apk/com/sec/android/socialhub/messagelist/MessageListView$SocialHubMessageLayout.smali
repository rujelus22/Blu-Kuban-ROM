.class public Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;
.super Lcom/sec/android/socialhub/parent/AbsBouncingLayout;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubMessageLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 1016
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;-><init>(Landroid/content/Context;)V

    .line 1017
    return-void
.end method


# virtual methods
.method protected createListView()Landroid/widget/ListView;
    .registers 5

    .prologue
    .line 1022
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f08007f

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$SocialHubMessageLayout;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;-><init>(Landroid/content/Context;ILcom/sec/android/socialhub/messagelist/IMessageAPI;)V

    return-object v0
.end method
