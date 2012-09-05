.class public Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;
.implements Lcom/sec/android/socialhub/clipboard/IMessageClipBoard;
.implements Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleMessageWrapper"
.end annotation


# instance fields
.field public FolderType:Ljava/lang/String;

.field public mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

.field public mContents:Ljava/lang/String;

.field public mMessageID:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPhotoUrl:Ljava/lang/String;

.field public mSpType:I

.field public mTime:J

.field public mTimeString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Landroid/content/Context;Landroid/view/View;)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 974
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 961
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    .line 962
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    .line 963
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mSpType:I

    .line 965
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mName:Ljava/lang/String;

    .line 966
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTime:J

    .line 967
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mPhotoUrl:Ljava/lang/String;

    .line 968
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mContents:Ljava/lang/String;

    .line 969
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTimeString:Ljava/lang/String;

    .line 971
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    .line 975
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->getView(Landroid/view/View;)V

    .line 976
    return-void
.end method


# virtual methods
.method public changeData(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "SpType"

    .prologue
    const/4 v3, 0x1

    .line 981
    const/16 v2, 0xd

    if-ne p3, v2, :cond_84

    .line 982
    const-string v2, "folder"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    .line 983
    const-string v2, "message_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    .line 985
    const-string v2, "content"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mContents:Ljava/lang/String;

    .line 986
    const-string v2, "send_time"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTime:J

    .line 987
    iget-wide v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTime:J

    invoke-static {p1, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTimeString:Ljava/lang/String;

    .line 988
    const-string v2, "sender_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, SenderId:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-object v2, v2, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mPhotoUrlMap:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->getSenderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;

    move-result-object v1

    .line 991
    .local v1, sender:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    if-eqz v1, :cond_83

    .line 992
    iget-object v2, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mPhotoUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mPhotoUrl:Ljava/lang/String;

    .line 993
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mPhotoUrl:Ljava/lang/String;

    if-nez v2, :cond_7f

    .line 995
    if-eqz v0, :cond_7f

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1500(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mSpType:I

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 996
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1600(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mSpType:I

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getProfileLink(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mPhotoUrl:Ljava/lang/String;

    .line 998
    :cond_7f
    iget-object v2, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mName:Ljava/lang/String;

    .line 1019
    .end local v0           #SenderId:Ljava/lang/String;
    :cond_83
    :goto_83
    return-void

    .line 1002
    .end local v1           #sender:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    :cond_84
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_ce

    const-string v2, "inbox"

    :goto_8c
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    .line 1003
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mSpType:I

    .line 1004
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    .line 1006
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mContents:Ljava/lang/String;

    .line 1007
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTime:J

    .line 1009
    iget-wide v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTime:J

    invoke-static {p1, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTimeString:Ljava/lang/String;

    .line 1011
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-object v2, v2, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mPhotoUrlMap:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;

    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$PhotoUrlMap;->getSenderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;

    move-result-object v1

    .line 1013
    .restart local v1       #sender:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    if-eqz v1, :cond_83

    .line 1015
    iget-object v2, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mPhotoUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mPhotoUrl:Ljava/lang/String;

    .line 1016
    iget-object v2, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mName:Ljava/lang/String;

    goto :goto_83

    .line 1002
    .end local v1           #sender:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SenderInfo;
    :cond_ce
    const-string v2, "outbox"

    goto :goto_8c
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mContents:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;
    .registers 1

    .prologue
    .line 1032
    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1025
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mName:Ljava/lang/String;

    .line 1027
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
