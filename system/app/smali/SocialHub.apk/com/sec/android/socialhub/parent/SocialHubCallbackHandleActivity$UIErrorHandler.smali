.class Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;
.super Ljava/lang/Object;
.source "SocialHubCallbackHandleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIErrorHandler"
.end annotation


# instance fields
.field private error_code:I

.field private http_status:I

.field private obj:Ljava/lang/Object;

.field private partialErrMap:Ljava/util/Map;

.field private reason:Ljava/lang/String;

.field private reqID:I

.field private reqType:I

.field private spType:I

.field private sub_error:I

.field final synthetic this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 23
    .parameter
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "status"
    .parameter "error"
    .parameter "sub_error"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 561
    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->setArgs(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V

    .line 562
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 581
    iget v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqType:I

    packed-switch v0, :pswitch_data_52

    .line 588
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->isPossibleHandleCabllack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 590
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    iget v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->spType:I

    iget v3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqType:I

    iget v4, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->http_status:I

    iget v5, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->error_code:I

    iget v6, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->sub_error:I

    iget-object v7, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reason:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->errorHandle(IIIIIILjava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->obj:Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqID:I

    iget v3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->spType:I

    iget v4, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqType:I

    iget-object v5, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->uri:Landroid/net/Uri;

    iget v6, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->http_status:I

    iget v7, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->error_code:I

    iget v8, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->sub_error:I

    iget-object v9, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->partialErrMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reason:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V

    .line 595
    :cond_42
    :goto_42
    return-void

    .line 584
    :pswitch_43
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqID:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/socialhub/image/ImageCacheManager;->saveImage(Landroid/net/Uri;IZ)V

    goto :goto_42

    .line 581
    :pswitch_data_52
    .packed-switch 0x32
        :pswitch_43
    .end packed-switch
.end method

.method public setArgs(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 11
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "status"
    .parameter "error"
    .parameter "sub_error"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->obj:Ljava/lang/Object;

    .line 568
    iput p2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqID:I

    .line 569
    iput p4, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reqType:I

    .line 570
    iput-object p5, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->uri:Landroid/net/Uri;

    .line 571
    iput p6, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->http_status:I

    .line 572
    iput p7, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->error_code:I

    .line 573
    iput p8, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->sub_error:I

    .line 574
    iput-object p10, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->reason:Ljava/lang/String;

    .line 575
    iput p3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->spType:I

    .line 576
    iput-object p9, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;->partialErrMap:Ljava/util/Map;

    .line 577
    return-void
.end method
