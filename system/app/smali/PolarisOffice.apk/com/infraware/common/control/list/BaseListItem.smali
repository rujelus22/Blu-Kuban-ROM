.class public Lcom/infraware/common/control/list/BaseListItem;
.super Ljava/lang/Object;
.source "BaseListItem.java"


# instance fields
.field private mEditBoxWidth:I

.field private mIsRadioBtn:Z

.field private mListIcon:Landroid/graphics/drawable/Drawable;

.field private mListText:Ljava/lang/String;

.field private mRadioBtnChecked:Z

.field private mStrOfEditbox:Ljava/lang/String;

.field private mTextViewWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 5
    .parameter "icon"
    .parameter "text"
    .parameter "editbox_width"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mEditBoxWidth:I

    .line 9
    iput v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mTextViewWidth:I

    .line 11
    iput-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mIsRadioBtn:Z

    .line 12
    iput-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mRadioBtnChecked:Z

    .line 16
    iput-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mIsRadioBtn:Z

    .line 17
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mListIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object p2, p0, Lcom/infraware/common/control/list/BaseListItem;->mListText:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/infraware/common/control/list/BaseListItem;->mEditBoxWidth:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZZ)V
    .registers 7
    .parameter "icon"
    .parameter "text"
    .parameter "editbox_width"
    .parameter "bShowRadioButton"
    .parameter "bRadioChecked"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mEditBoxWidth:I

    .line 9
    iput v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mTextViewWidth:I

    .line 11
    iput-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mIsRadioBtn:Z

    .line 12
    iput-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mRadioBtnChecked:Z

    .line 24
    iput-boolean p4, p0, Lcom/infraware/common/control/list/BaseListItem;->mIsRadioBtn:Z

    .line 25
    iget-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mIsRadioBtn:Z

    if-eqz v0, :cond_14

    .line 26
    iput-boolean p5, p0, Lcom/infraware/common/control/list/BaseListItem;->mRadioBtnChecked:Z

    .line 27
    :cond_14
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mListIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object p2, p0, Lcom/infraware/common/control/list/BaseListItem;->mListText:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/infraware/common/control/list/BaseListItem;->mEditBoxWidth:I

    .line 30
    return-void
.end method


# virtual methods
.method public IsRadoBtnChecked()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mRadioBtnChecked:Z

    return v0
.end method

.method public getEditBoxWidth()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mEditBoxWidth:I

    return v0
.end method

.method public getListIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mListIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mListText:Ljava/lang/String;

    return-object v0
.end method

.method public getStrOfEditbox()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mStrOfEditbox:Ljava/lang/String;

    return-object v0
.end method

.method public getTextViewWidth()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mTextViewWidth:I

    return v0
.end method

.method public isIsRadioBtn()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/infraware/common/control/list/BaseListItem;->mIsRadioBtn:Z

    return v0
.end method

.method public setEditBoxWidth(I)V
    .registers 2
    .parameter "mEditBoxWidth"

    .prologue
    .line 63
    iput p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mEditBoxWidth:I

    .line 64
    return-void
.end method

.method public setIsRadioBtn(Z)V
    .registers 2
    .parameter "mIsRadioBtn"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mIsRadioBtn:Z

    .line 88
    return-void
.end method

.method public setListIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "mListIcon"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mListIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method

.method public setListText(Ljava/lang/String;)V
    .registers 2
    .parameter "mListText"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mListText:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRadoBtnChecked(Z)V
    .registers 2
    .parameter "mChecked"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mRadioBtnChecked:Z

    .line 92
    return-void
.end method

.method public setStrOfEditbox(Ljava/lang/String;)V
    .registers 2
    .parameter "mStrOfEditbox"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mStrOfEditbox:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTextViewWidth(I)V
    .registers 2
    .parameter "mTextViewWidth"

    .prologue
    .line 67
    iput p1, p0, Lcom/infraware/common/control/list/BaseListItem;->mTextViewWidth:I

    .line 68
    return-void
.end method
