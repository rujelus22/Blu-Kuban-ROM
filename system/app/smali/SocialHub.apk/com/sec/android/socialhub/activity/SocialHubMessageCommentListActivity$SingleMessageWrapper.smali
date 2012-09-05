.class public Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;
.super Ljava/lang/Object;
.source "SocialHubMessageCommentListActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;
.implements Lcom/sec/android/socialhub/clipboard/IMessageClipBoard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleMessageWrapper"
.end annotation


# instance fields
.field public FolderType:Ljava/lang/String;

.field public mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

.field public mSpType:I

.field public mThreadID:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;Landroid/content/Context;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "view"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 920
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    invoke-direct {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    .line 924
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->getView(Landroid/view/View;)V

    .line 925
    return-void
.end method


# virtual methods
.method public changeData(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 929
    const-string v5, "thread_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 930
    .local v0, ThreadIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, Thread_id:Ljava/lang/String;
    const-string v5, "folder"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 932
    .local v3, folderTypeIndex:I
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, folderType:Ljava/lang/String;
    const-string v5, "service_provider"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 935
    .local v4, spType:I
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    .line 936
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mSpType:I

    .line 937
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mThreadID:Ljava/lang/String;

    .line 938
    return-void
.end method

.method public getObject()Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    if-eqz v0, :cond_b

    .line 944
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity$ItemCommentCache;->getName()Ljava/lang/String;

    move-result-object v0

    .line 946
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
