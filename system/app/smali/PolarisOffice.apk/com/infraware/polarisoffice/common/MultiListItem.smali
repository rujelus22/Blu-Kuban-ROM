.class public Lcom/infraware/polarisoffice/common/MultiListItem;
.super Ljava/lang/Object;
.source "MultiListItem.java"


# instance fields
.field mColor:I

.field mIcon2NormalRes:I

.field mIcon2PressRes:I

.field mIcon2SelectedRes:I

.field mIconNormalRes:I

.field mIconPressRes:I

.field mIconSelectedRes:I

.field mRightBtnState:I

.field mText1:Ljava/lang/String;

.field mText2:Ljava/lang/String;

.field mToolBarID:I

.field mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;II)V
    .registers 6
    .parameter "aType"
    .parameter "iconID"
    .parameter "aText1"
    .parameter "aColor"
    .parameter "nToolBarID"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mType:I

    .line 28
    iput p2, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    .line 29
    iput-object p3, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    .line 31
    iput p5, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mToolBarID:I

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 5
    .parameter "aType"
    .parameter "aText1"
    .parameter "aIconNRes"
    .parameter "aColor"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mType:I

    .line 20
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    .line 22
    iput p4, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 9
    .parameter "aType"
    .parameter "aText1"
    .parameter "aText2"
    .parameter "aIconNRes"
    .parameter "aIconPRes"
    .parameter "aIconSRes"
    .parameter "aColor"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mType:I

    .line 8
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mText2:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconNormalRes:I

    .line 11
    iput p5, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconPressRes:I

    .line 12
    iput p6, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIconSelectedRes:I

    .line 13
    iput p7, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mColor:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mRightBtnState:I

    .line 15
    return-void
.end method


# virtual methods
.method SetButton2(III)V
    .registers 4
    .parameter "aIconNRes"
    .parameter "aIconPRes"
    .parameter "aIconSRes"

    .prologue
    .line 35
    iput p1, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIcon2NormalRes:I

    .line 36
    iput p2, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIcon2PressRes:I

    .line 37
    iput p3, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mIcon2SelectedRes:I

    .line 38
    return-void
.end method

.method public getRightBtnState()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mRightBtnState:I

    return v0
.end method

.method public getText1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mText2:Ljava/lang/String;

    return-object v0
.end method

.method public setRightBtnState(I)V
    .registers 2
    .parameter "nState"

    .prologue
    .line 43
    iput p1, p0, Lcom/infraware/polarisoffice/common/MultiListItem;->mRightBtnState:I

    return-void
.end method
