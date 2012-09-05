.class Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;
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
    name = "UIHandler"
.end annotation


# instance fields
.field private bContinue:Z

.field private obj:Ljava/lang/Object;

.field private reqID:I

.field private reqType:I

.field private spType:I

.field final synthetic this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 15
    .parameter
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 609
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->setArgs(Ljava/lang/Object;IIILandroid/net/Uri;Z)V

    .line 610
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 624
    iget v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->reqType:I

    packed-switch v0, :pswitch_data_36

    .line 631
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->isPossibleHandleCabllack()Z

    move-result v0

    if-ne v0, v3, :cond_27

    .line 632
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->obj:Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->reqID:I

    iget v3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->spType:I

    iget v4, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->reqType:I

    iget-object v5, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->uri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->bContinue:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V

    .line 636
    :cond_27
    :goto_27
    return-void

    .line 627
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-static {v0}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->reqID:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/socialhub/image/ImageCacheManager;->saveImage(Landroid/net/Uri;IZ)V

    goto :goto_27

    .line 624
    :pswitch_data_36
    .packed-switch 0x32
        :pswitch_28
    .end packed-switch
.end method

.method public setArgs(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 7
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->obj:Ljava/lang/Object;

    .line 615
    iput p2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->reqID:I

    .line 616
    iput p4, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->reqType:I

    .line 617
    iput-object p5, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->uri:Landroid/net/Uri;

    .line 618
    iput-boolean p6, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->bContinue:Z

    .line 619
    iput p3, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;->spType:I

    .line 620
    return-void
.end method
