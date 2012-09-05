.class Lcom/cooliris/media/Gallery$6;
.super Landroid/os/Handler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Gallery;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;

.field final synthetic val$tempDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;Landroid/app/ProgressDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/cooliris/media/Gallery$6;->this$0:Lcom/cooliris/media/Gallery;

    iput-object p2, p0, Lcom/cooliris/media/Gallery$6;->val$tempDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/cooliris/media/Gallery$6;->val$tempDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1288
    iget-object v0, p0, Lcom/cooliris/media/Gallery$6;->val$tempDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1289
    iget-object v0, p0, Lcom/cooliris/media/Gallery$6;->val$tempDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1291
    :cond_12
    return-void
.end method
