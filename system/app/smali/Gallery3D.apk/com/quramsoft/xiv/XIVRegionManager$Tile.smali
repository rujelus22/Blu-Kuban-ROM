.class public Lcom/quramsoft/xiv/XIVRegionManager$Tile;
.super Ljava/lang/Object;
.source "XIVRegionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/xiv/XIVRegionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tile"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mId:I

.field mLoadingStatus:I

.field mRect:Landroid/graphics/Rect;

.field mSampleSize:I

.field mTexId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mLoadingStatus:I

    .line 69
    iput-object v1, p0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    iput-object v1, p0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mRect:Landroid/graphics/Rect;

    .line 71
    iput v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mId:I

    .line 72
    iput v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mTexId:I

    .line 73
    iput v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mSampleSize:I

    .line 61
    return-void
.end method
