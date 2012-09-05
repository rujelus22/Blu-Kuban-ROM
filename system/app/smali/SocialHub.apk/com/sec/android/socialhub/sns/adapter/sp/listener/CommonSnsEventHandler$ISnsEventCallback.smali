.class public interface abstract Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;
.super Ljava/lang/Object;
.source "CommonSnsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISnsEventCallback"
.end annotation


# virtual methods
.method public abstract requestCommentFavoritePost(Lcom/sec/android/socialhub/feedslist/FeedView;)V
.end method

.method public abstract requestMediaUrl(Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;)V
.end method

.method public abstract requestProfileUrl(Lcom/sec/android/socialhub/feedslist/FeedView;)V
.end method
