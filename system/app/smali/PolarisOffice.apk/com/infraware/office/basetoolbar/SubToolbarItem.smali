.class public Lcom/infraware/office/basetoolbar/SubToolbarItem;
.super Ljava/lang/Object;
.source "SubToolbarItem.java"


# instance fields
.field private mSubButtonCnt:I

.field private mSubLineCnt:I

.field private mSubToolbarId:I

.field private mSubToolbarLayout:I

.field private mSubToolbarResource:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6
    .parameter "subToolbarId"
    .parameter "subToolbarLayout"
    .parameter "subToolbarResource"
    .parameter "subButtonCnt"
    .parameter "subLineCnt"

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubToolbarId:I

    .line 7
    iput p2, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubToolbarLayout:I

    .line 8
    iput p3, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubToolbarResource:I

    .line 9
    iput p4, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubButtonCnt:I

    .line 10
    iput p5, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubLineCnt:I

    .line 11
    return-void
.end method


# virtual methods
.method public getSubToolBarLineCnt()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubLineCnt:I

    return v0
.end method

.method public getSubToolbarButtonCnt()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubButtonCnt:I

    return v0
.end method

.method public getSubToolbarLayout()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubToolbarLayout:I

    return v0
.end method

.method public getSubToolbarResource()I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubToolbarResource:I

    return v0
.end method

.method public getSubtoolbarID()I
    .registers 2

    .prologue
    .line 13
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarItem;->mSubToolbarId:I

    return v0
.end method
