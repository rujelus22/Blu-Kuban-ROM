.class public Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;
.super Ljava/lang/Object;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/ThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailItem"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mPageNum:I

.field mStatus:I

.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/common/ThumbnailAdapter;I)V
    .registers 4
    .parameter
    .parameter "page"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->this$0:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mStatus:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput p2, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mPageNum:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ThumbnailAdapter$ThumbnailItem;->mStatus:I

    .line 38
    return-void
.end method
