.class public Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeSwf;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;
.source "ViewTypeSwf.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeSwf;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method
