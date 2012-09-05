.class public Lcom/infraware/common/control/list/BaseListView;
.super Landroid/widget/LinearLayout;
.source "BaseListView.java"


# instance fields
.field private group:Landroid/widget/RadioGroup;

.field private mListEditBox:Landroid/widget/EditText;

.field private mListIcon:Landroid/widget/ImageView;

.field private mListItem:Lcom/infraware/common/control/list/BaseListItem;

.field private mListText:Landroid/widget/TextView;

.field private mRadioBtn:Landroid/widget/RadioButton;

.field private mStrOfEditBox:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/common/control/list/BaseListItem;)V
    .registers 8
    .parameter "context"
    .parameter "aItem"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListIcon:Landroid/widget/ImageView;

    .line 18
    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListText:Landroid/widget/TextView;

    .line 19
    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListEditBox:Landroid/widget/EditText;

    .line 20
    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListItem:Lcom/infraware/common/control/list/BaseListItem;

    .line 21
    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    .line 22
    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mStrOfEditBox:Landroid/widget/TextView;

    .line 28
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 29
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030029

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    const v1, 0x7f0c00f6

    invoke-virtual {p0, v1}, Lcom/infraware/common/control/list/BaseListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListIcon:Landroid/widget/ImageView;

    .line 32
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/infraware/common/control/list/BaseListItem;->getListIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    const v1, 0x7f0c00f7

    invoke-virtual {p0, v1}, Lcom/infraware/common/control/list/BaseListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListText:Landroid/widget/TextView;

    .line 35
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/infraware/common/control/list/BaseListItem;->getListText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v1, 0x7f0c00f8

    invoke-virtual {p0, v1}, Lcom/infraware/common/control/list/BaseListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListEditBox:Landroid/widget/EditText;

    .line 38
    invoke-virtual {p2}, Lcom/infraware/common/control/list/BaseListItem;->getEditBoxWidth()I

    move-result v1

    if-lez v1, :cond_8b

    .line 39
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListEditBox:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 40
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListEditBox:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/infraware/common/control/list/BaseListItem;->getEditBoxWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setWidth(I)V

    .line 47
    :goto_67
    invoke-virtual {p2}, Lcom/infraware/common/control/list/BaseListItem;->isIsRadioBtn()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 48
    const v1, 0x7f0c00f9

    invoke-virtual {p0, v1}, Lcom/infraware/common/control/list/BaseListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    .line 49
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 50
    invoke-virtual {p2}, Lcom/infraware/common/control/list/BaseListItem;->IsRadoBtnChecked()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 51
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    :cond_88
    :goto_88
    iput-object p2, p0, Lcom/infraware/common/control/list/BaseListView;->mListItem:Lcom/infraware/common/control/list/BaseListItem;

    .line 58
    return-void

    .line 43
    :cond_8b
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListEditBox:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mListEditBox:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setWidth(I)V

    goto :goto_67

    .line 53
    :cond_97
    iget-object v1, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_88
.end method


# virtual methods
.method public getRadioBtn()Landroid/widget/RadioButton;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getmListIcon()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mListIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getmListText()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mListText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmStrOfEditBox()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mStrOfEditBox:Landroid/widget/TextView;

    return-object v0
.end method

.method public setRadioBtn(Landroid/widget/RadioButton;)V
    .registers 2
    .parameter "RadioBtn"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    .line 88
    return-void
.end method

.method public setRadioButtonCheck(Z)V
    .registers 3
    .parameter "bCheck"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    return-void
.end method

.method public setTextViewWidth(I)V
    .registers 3
    .parameter "textwidth"

    .prologue
    .line 77
    if-lez p1, :cond_7

    .line 78
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mListText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 79
    :cond_7
    return-void
.end method

.method public setmListIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mListIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method public setmListText(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/infraware/common/control/list/BaseListView;->mListText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setmStrOfEditBox(Landroid/widget/TextView;)V
    .registers 2
    .parameter "mStrOfEditBox"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/infraware/common/control/list/BaseListView;->mStrOfEditBox:Landroid/widget/TextView;

    .line 96
    return-void
.end method
