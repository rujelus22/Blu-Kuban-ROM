.class Lcom/samsung/dmp/layout/DMPImageActivity$10$1;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmp/layout/DMPImageActivity$10;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity$10;)V
    .registers 2
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPImageActivity$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPImageActivity$10;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 901
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPImageActivity$10;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 902
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPImageActivity$10;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 906
    :goto_1f
    return-void

    .line 903
    :catch_20
    move-exception v0

    .line 904
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1f
.end method
