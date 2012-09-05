.class final Lcom/cooliris/media/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->launchCropperOrFinish(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentUri:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$item:Lcom/cooliris/media/MediaItem;

.field final synthetic val$myExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cooliris/media/MediaItem;Landroid/app/ProgressDialog;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/cooliris/media/CropImage$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$2;->val$contentUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/cooliris/media/CropImage$2;->val$item:Lcom/cooliris/media/MediaItem;

    iput-object p4, p0, Lcom/cooliris/media/CropImage$2;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lcom/cooliris/media/CropImage$2;->val$myExtras:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 5

    .prologue
    .line 246
    invoke-static {}, Lcom/cooliris/media/CropImage;->access$100()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/cooliris/media/CropImage$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScannerConnection;

    .line 247
    .local v0, connection:Landroid/media/MediaScannerConnection;
    if-eqz v0, :cond_1b

    .line 249
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cooliris/media/CropImage$2$1;

    invoke-direct {v2, p0, v0}, Lcom/cooliris/media/CropImage$2$1;-><init>(Lcom/cooliris/media/CropImage$2;Landroid/media/MediaScannerConnection;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 278
    .local v1, scanningThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 281
    .end local v1           #scanningThread:Ljava/lang/Thread;
    :cond_1b
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 284
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImage$2;->shutdown(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public shutdown(Ljava/lang/String;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/cooliris/media/CropImage$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    iget-object v1, p0, Lcom/cooliris/media/CropImage$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cooliris/media/CropImage$2;->val$myExtras:Landroid/os/Bundle;

    #calls: Lcom/cooliris/media/CropImage;->performReturn(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    invoke-static {v1, v2, p1}, Lcom/cooliris/media/CropImage;->access$200(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/cooliris/media/CropImage;->access$100()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/CropImage$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScannerConnection;

    .line 291
    .local v0, connection:Landroid/media/MediaScannerConnection;
    if-eqz v0, :cond_27

    .line 292
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 293
    invoke-static {}, Lcom/cooliris/media/CropImage;->access$100()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/CropImage$2;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_27
    return-void
.end method
