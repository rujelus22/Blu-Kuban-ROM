.class Lcom/cooliris/media/CropImage$23;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->wallpaperSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/cooliris/media/CropImage$23;->this$0:Lcom/cooliris/media/CropImage;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$23;->val$b:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/cooliris/media/CropImage$23;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$23;->val$b:Landroid/graphics/Bitmap;

    #calls: Lcom/cooliris/media/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/cooliris/media/CropImage;->access$2200(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)V

    .line 1004
    return-void
.end method
