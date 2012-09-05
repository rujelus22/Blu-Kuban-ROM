.class Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;
.super Ljava/lang/Object;
.source "CallBackHandleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIErrorHandler"
.end annotation


# instance fields
.field private error_code:I

.field private http_status:I

.field private reason:Ljava/lang/String;

.field private reqID:I

.field private reqType:I

.field private sub_error:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;IILandroid/net/Uri;IIILjava/lang/String;)V
    .registers 17
    .parameter
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "status"
    .parameter "error"
    .parameter "sub_error"
    .parameter "reason"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    .line 93
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->setArgs(IILandroid/net/Uri;IIILjava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reqType:I

    packed-switch v0, :pswitch_data_2a

    .line 114
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

    iget v1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reqID:I

    iget v2, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reqType:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->uri:Landroid/net/Uri;

    iget v4, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->http_status:I

    iget v5, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->error_code:I

    iget v6, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->sub_error:I

    iget-object v7, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reason:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->onSnsErrorCallback(IILandroid/net/Uri;IIILjava/lang/String;)V

    .line 116
    :goto_18
    return-void

    .line 111
    :pswitch_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reqID:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->saveImage(Landroid/net/Uri;IZ)V

    goto :goto_18

    .line 108
    :pswitch_data_2a
    .packed-switch 0x32
        :pswitch_19
    .end packed-switch
.end method

.method public setArgs(IILandroid/net/Uri;IIILjava/lang/String;)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "status"
    .parameter "error"
    .parameter "sub_error"
    .parameter "reason"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reqID:I

    .line 99
    iput p2, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reqType:I

    .line 100
    iput-object p3, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->uri:Landroid/net/Uri;

    .line 101
    iput p4, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->http_status:I

    .line 102
    iput p5, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->error_code:I

    .line 103
    iput p6, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->sub_error:I

    .line 104
    iput-object p7, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIErrorHandler;->reason:Ljava/lang/String;

    .line 105
    return-void
.end method
