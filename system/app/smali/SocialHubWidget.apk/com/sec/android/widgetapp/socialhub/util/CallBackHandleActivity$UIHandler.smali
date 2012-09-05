.class Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;
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
    name = "UIHandler"
.end annotation


# instance fields
.field private bContinue:Z

.field private reqID:I

.field private reqType:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;IILandroid/net/Uri;Z)V
    .registers 6
    .parameter
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->setArgs(IILandroid/net/Uri;Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->reqType:I

    packed-switch v0, :pswitch_data_24

    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

    iget v1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->reqID:I

    iget v2, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->reqType:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->uri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->bContinue:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->onSnsCallback(IILandroid/net/Uri;Z)V

    .line 78
    :goto_12
    return-void

    .line 73
    :pswitch_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->this$0:Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->reqID:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->saveImage(Landroid/net/Uri;IZ)V

    goto :goto_12

    .line 70
    :pswitch_data_24
    .packed-switch 0x32
        :pswitch_13
    .end packed-switch
.end method

.method public setArgs(IILandroid/net/Uri;Z)V
    .registers 5
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->reqID:I

    .line 64
    iput p2, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->reqType:I

    .line 65
    iput-object p3, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->uri:Landroid/net/Uri;

    .line 66
    iput-boolean p4, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity$UIHandler;->bContinue:Z

    .line 67
    return-void
.end method
