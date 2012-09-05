.class public Lcom/infraware/office/basetoolbar/ToolbarItem;
.super Ljava/lang/Object;
.source "ToolbarItem.java"


# instance fields
.field private mIconDisableId:I

.field private mIconNormalId:I

.field private mIconSetDisableId:I

.field private mIconSetNormalId:I

.field private mTextId:I

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .registers 9
    .parameter "resources"
    .parameter "toolbarId"
    .parameter "textId"
    .parameter "iconResId"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p2, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mToolbarId:I

    .line 10
    iput p3, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mTextId:I

    .line 11
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 12
    .local v0, iconResArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconNormalId:I

    .line 13
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconDisableId:I

    .line 14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-le v1, v3, :cond_2d

    .line 15
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconSetNormalId:I

    .line 16
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconSetDisableId:I

    .line 18
    :cond_2d
    return-void
.end method


# virtual methods
.method public getIconDisableId()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconDisableId:I

    return v0
.end method

.method public getIconNormalId()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconNormalId:I

    return v0
.end method

.method public getIconSetDisableId()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconSetDisableId:I

    return v0
.end method

.method public getIconSetNormalId()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mIconSetNormalId:I

    return v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mTextId:I

    return v0
.end method

.method public getToolbarId()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarItem;->mToolbarId:I

    return v0
.end method
