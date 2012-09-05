.class public Lcom/cooliris/media/BitmapTexture;
.super Lcom/cooliris/media/Texture;
.source "BitmapTexture.java"


# instance fields
.field final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cooliris/media/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method


# virtual methods
.method protected load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "view"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cooliris/media/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
