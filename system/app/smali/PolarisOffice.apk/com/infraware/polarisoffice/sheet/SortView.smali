.class public Lcom/infraware/polarisoffice/sheet/SortView;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SortView.java"

# interfaces
.implements Lcom/infraware/office/baseframe/EvBaseE$PopupDialogEventType;


# instance fields
.field private direction:Landroid/widget/TextView;

.field private finaly:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mDirectionBtn:Landroid/widget/Button;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mFinalKeyBtn:Landroid/widget/Button;

.field private mFinalTypeBtn:Landroid/widget/Button;

.field private mListPopup:Landroid/app/AlertDialog;

.field private mOkButton:Landroid/widget/Button;

.field private mPrimaryKeyBtn:Landroid/widget/Button;

.field private mPrimaryTypeBtn:Landroid/widget/Button;

.field mRange:Lcom/infraware/office/evengine/EV$RANGE;

.field private mSecondaryKeyBtn:Landroid/widget/Button;

.field private mSecondaryTypeBtn:Landroid/widget/Button;

.field private m_nKey1:I

.field private m_nKey2:I

.field private m_nKey3:I

.field private m_nPopupListType:I

.field private m_nSortAscKey1:I

.field private m_nSortAscKey2:I

.field private m_nSortAscKey3:I

.field private m_nSortByRows:I

.field private primary:Landroid/widget/TextView;

.field private secondary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 19
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mPrimaryKeyBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mPrimaryTypeBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mSecondaryKeyBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mSecondaryTypeBtn:Landroid/widget/Button;

    .line 20
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mFinalKeyBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mFinalTypeBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mDirectionBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mOkButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mCancelButton:Landroid/widget/Button;

    .line 21
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    .line 22
    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nPopupListType:I

    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I

    .line 23
    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey1:I

    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey2:I

    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey3:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I

    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I

    iput v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I

    .line 24
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mListPopup:Landroid/app/AlertDialog;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey1:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I

    return v0
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I

    return v0
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nPopupListType:I

    return v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/sheet/SortView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey1:I

    return-void
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/sheet/SortView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey2:I

    return-void
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/sheet/SortView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey3:I

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/sheet/SortView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/sheet/SortView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey2:I

    return v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/sheet/SortView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey3:I

    return v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/sheet/SortView;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I

    return v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/sheet/SortView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I

    return-void
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/sheet/SortView;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method private onCreateListPopup(I)Landroid/app/AlertDialog;
    .registers 7
    .parameter "nType"

    .prologue
    const/4 v2, 0x0

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, nTitleId:I
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nPopupListType:I

    move-object v0, v2

    .line 137
    check-cast v0, [Ljava/lang/String;

    .line 138
    .local v0, items:[Ljava/lang/String;
    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nPopupListType:I

    packed-switch v3, :pswitch_data_60

    .line 160
    :goto_c
    if-eqz v1, :cond_10

    if-nez v0, :cond_3e

    .line 197
    :cond_10
    :goto_10
    return-object v2

    .line 142
    :pswitch_11
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->MakeKeyData()[Ljava/lang/String;

    move-result-object v0

    .line 143
    iget v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I

    if-lez v3, :cond_1d

    .line 144
    const v1, 0x7f080183

    goto :goto_c

    .line 146
    :cond_1d
    const v1, 0x7f080184

    .line 147
    goto :goto_c

    .line 151
    :pswitch_21
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 152
    const v1, 0x7f080237

    .line 153
    goto :goto_c

    .line 155
    :pswitch_2f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 156
    const v1, 0x7f080238

    goto :goto_c

    .line 161
    :cond_3e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 163
    new-instance v3, Lcom/infraware/polarisoffice/sheet/SortView$3;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/sheet/SortView$3;-><init>(Lcom/infraware/polarisoffice/sheet/SortView;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 161
    iput-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mListPopup:Landroid/app/AlertDialog;

    .line 196
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mListPopup:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 197
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mListPopup:Landroid/app/AlertDialog;

    goto :goto_10

    .line 138
    nop

    :pswitch_data_60
    .packed-switch 0x17
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public MakeKeyData()[Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 75
    const/4 v6, 0x0

    .local v6, nStart:I
    const/4 v3, 0x0

    .local v3, nEnd:I
    const/4 v2, 0x0

    .line 76
    .local v2, nCount:I
    iget v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I

    if-nez v9, :cond_34

    .line 77
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v9, v9, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v10, v10, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, 0x1

    .line 78
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v6, v9, Lcom/infraware/office/evengine/EV$RANGE;->nCol1:I

    .line 79
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v3, v9, Lcom/infraware/office/evengine/EV$RANGE;->nCol2:I

    .line 87
    :goto_1b
    add-int/lit8 v9, v2, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 88
    .local v1, items:[Ljava/lang/String;
    if-lez v2, :cond_c2

    .line 89
    const/16 v9, 0xa

    new-array v8, v9, [C

    .line 90
    .local v8, strC1:[C
    const/4 v5, 0x0

    .local v5, nRC:I
    const/4 v0, 0x0

    .line 92
    .local v0, i:I
    const v9, 0x7f080212

    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/sheet/SortView;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    .line 93
    move v5, v6

    :goto_31
    if-le v5, v3, :cond_4c

    .line 117
    .end local v0           #i:I
    .end local v5           #nRC:I
    .end local v8           #strC1:[C
    :goto_33
    return-object v1

    .line 82
    .end local v1           #items:[Ljava/lang/String;
    :cond_34
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v9, v9, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v10, v10, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, 0x1

    .line 83
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v9, v9, Lcom/infraware/office/evengine/EV$RANGE;->nRow1:I

    add-int/lit8 v6, v9, 0x1

    .line 84
    iget-object v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    iget v9, v9, Lcom/infraware/office/evengine/EV$RANGE;->nRow2:I

    add-int/lit8 v3, v9, 0x1

    goto :goto_1b

    .line 94
    .restart local v0       #i:I
    .restart local v1       #items:[Ljava/lang/String;
    .restart local v5       #nRC:I
    .restart local v8       #strC1:[C
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    .line 96
    iget v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I

    if-nez v9, :cond_9d

    .line 97
    move v4, v5

    .line 98
    .local v4, nItem:I
    rem-int/lit8 v9, v4, 0x1a

    add-int/lit8 v9, v9, 0x41

    int-to-char v9, v9

    aput-char v9, v8, v11

    .line 99
    const/4 v7, 0x0

    .line 100
    .local v7, next:I
    :goto_5b
    div-int/lit8 v9, v4, 0x1a

    add-int/lit8 v4, v9, -0x1

    if-gez v4, :cond_8d

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f080211

    invoke-virtual {p0, v10}, Lcom/infraware/polarisoffice/sheet/SortView;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    .line 93
    .end local v4           #nItem:I
    .end local v7           #next:I
    :goto_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 101
    .restart local v4       #nItem:I
    .restart local v7       #next:I
    :cond_8d
    add-int/lit8 v9, v7, 0x1

    aget-char v10, v8, v7

    aput-char v10, v8, v9

    .line 102
    rem-int/lit8 v9, v4, 0x1a

    add-int/lit8 v9, v9, 0x41

    int-to-char v9, v9

    aput-char v9, v8, v11

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 108
    .end local v4           #nItem:I
    .end local v7           #next:I
    :cond_9d
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f080210

    invoke-virtual {p0, v10}, Lcom/infraware/polarisoffice/sheet/SortView;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    goto :goto_8a

    .line 113
    .end local v0           #i:I
    .end local v5           #nRC:I
    .end local v8           #strC1:[C
    :cond_c2
    const/4 v9, 0x1

    iput v9, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I

    .line 114
    iput v11, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I

    .line 115
    iput v11, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I

    goto/16 :goto_33
.end method

.method public OnDirectionDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 254
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 255
    return-void
.end method

.method public OnKeyDlg_1(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 230
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 231
    return-void
.end method

.method public OnKeyDlg_2(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 234
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 235
    return-void
.end method

.method public OnKeyDlg_3(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 238
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 239
    return-void
.end method

.method public OnTypeDlg_1(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 242
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 243
    return-void
.end method

.method public OnTypeDlg_2(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 246
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 247
    return-void
.end method

.method public OnTypeDlg_3(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 250
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 251
    return-void
.end method

.method public checkButtonStatus()V
    .registers 6

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, directionItems:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, typeItems:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->MakeKeyData()[Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, keyItems:[Ljava/lang/String;
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mDirectionBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortByRows:I

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mPrimaryTypeBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey1:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mSecondaryTypeBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey2:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mFinalTypeBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nSortAscKey3:I

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mPrimaryKeyBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey1:I

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mSecondaryKeyBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey2:I

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mFinalKeyBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nKey3:I

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0c020a

    .line 29
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->setContentView(I)V

    .line 31
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->setTitle(I)V

    .line 34
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 35
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getRange()Lcom/infraware/office/evengine/EV$RANGE;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    .line 36
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mRange:Lcom/infraware/office/evengine/EV$RANGE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I

    .line 38
    const v0, 0x7f0c0210

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mOkButton:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mOkButton:Landroid/widget/Button;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 40
    const v0, 0x7f0c0211

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mCancelButton:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SortView$1;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SortView$1;-><init>(Lcom/infraware/polarisoffice/sheet/SortView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SortView$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SortView$2;-><init>(Lcom/infraware/polarisoffice/sheet/SortView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0c0202

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->primary:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0c0206

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->secondary:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->finaly:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->direction:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0c0205

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mPrimaryTypeBtn:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0c0209

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mSecondaryTypeBtn:Landroid/widget/Button;

    .line 65
    const v0, 0x7f0c020d

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mFinalTypeBtn:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0c0204

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mPrimaryKeyBtn:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0c0208

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mSecondaryKeyBtn:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0c020c

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mFinalKeyBtn:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0c0163

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mDirectionBtn:Landroid/widget/Button;

    .line 71
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->checkButtonStatus()V

    .line 72
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_a

    .line 131
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 129
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/SortView;->onCreateListPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 121
    :pswitch_data_a
    .packed-switch 0x17
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onLocaleChange(I)V
    .registers 4
    .parameter "nLocale"

    .prologue
    .line 259
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->setTitle(I)V

    .line 261
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->primary:Landroid/widget/TextView;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->secondary:Landroid/widget/TextView;

    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->finaly:Landroid/widget/TextView;

    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->direction:Landroid/widget/TextView;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SortView;->checkButtonStatus()V

    .line 268
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mOkButton:Landroid/widget/Button;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 269
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mListPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4f

    .line 271
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 272
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->mListPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SortView;->m_nPopupListType:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SortView;->showDialog(I)V

    .line 276
    :cond_4f
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 202
    packed-switch p1, :pswitch_data_c

    .line 213
    :goto_6
    return-void

    .line 210
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/sheet/SortView;->removeDialog(I)V

    goto :goto_6

    .line 202
    nop

    :pswitch_data_c
    .packed-switch 0x17
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
