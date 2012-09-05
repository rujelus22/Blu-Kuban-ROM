.class public Lcom/infraware/common/control/dragndroplist/DragNDropListItem;
.super Ljava/lang/Object;
.source "DragNDropListItem.java"


# instance fields
.field private mExistBitmapImg:Ljava/lang/Boolean;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mListText:Ljava/lang/String;

.field private mMoveIcon:Landroid/graphics/drawable/Drawable;

.field private mPageNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "ExistBitmapImg"
    .parameter "bitmap"
    .parameter "text"
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mMoveIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mListText:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mExistBitmapImg:Ljava/lang/Boolean;

    .line 11
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mPageNum:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mExistBitmapImg:Ljava/lang/Boolean;

    .line 16
    iput-object p2, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-object p3, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mListText:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mMoveIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "ExistBitmapImg"
    .parameter "bitmap"
    .parameter "text"
    .parameter "pageNum"
    .parameter "MoveIcon"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mMoveIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mListText:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mExistBitmapImg:Ljava/lang/Boolean;

    .line 11
    iput-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mPageNum:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mExistBitmapImg:Ljava/lang/Boolean;

    .line 24
    iput-object p2, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 25
    iput-object p3, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mListText:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mPageNum:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mMoveIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method


# virtual methods
.method public getExistBitmapImg()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mExistBitmapImg:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getListText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mListText:Ljava/lang/String;

    return-object v0
.end method

.method public getMoveIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mMoveIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPageNum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mPageNum:Ljava/lang/String;

    return-object v0
.end method

.method public setExistBitmapImg(Ljava/lang/Boolean;)V
    .registers 2
    .parameter "mExistBitmapImg"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mExistBitmapImg:Ljava/lang/Boolean;

    .line 60
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "mImageBitmap"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 52
    return-void
.end method

.method public setListText(Ljava/lang/String;)V
    .registers 2
    .parameter "mListText"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mListText:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMoveIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "mMoveIcon"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mMoveIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    return-void
.end method

.method public setPageNum(Ljava/lang/String;)V
    .registers 2
    .parameter "mPageNum"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListItem;->mPageNum:Ljava/lang/String;

    .line 68
    return-void
.end method
