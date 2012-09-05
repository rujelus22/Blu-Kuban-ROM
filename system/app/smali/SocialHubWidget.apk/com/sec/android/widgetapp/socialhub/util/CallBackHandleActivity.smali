.class public abstract Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;
.super Landroid/app/Activity;
.source "CallBackHandleActivity.java"

# interfaces
.implements Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;,
        Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public onCallbackHandler(IILandroid/net/Uri;Z)V
    .registers 11
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 40
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;-><init>(Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;IILandroid/net/Uri;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iput-object p0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    if-nez v0, :cond_11

    .line 30
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    .line 31
    :cond_11
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bind:Z

    if-nez v0, :cond_1c

    .line 32
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->BindServiceStart()V

    .line 33
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v0, p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->setServiceConnectListener(Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;)V

    .line 35
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public onErrorCallbackHandler(IILandroid/net/Uri;IIILjava/lang/String;)V
    .registers 17
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "reason"

    .prologue
    .line 46
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;-><init>(Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;IILandroid/net/Uri;IIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public abstract onSnsCallback(IILandroid/net/Uri;Z)V
.end method

.method public abstract onSnsErrorCallback(IILandroid/net/Uri;IIILjava/lang/String;)V
.end method
