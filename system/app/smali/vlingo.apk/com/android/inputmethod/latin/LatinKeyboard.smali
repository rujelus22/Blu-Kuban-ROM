.class public Lcom/android/inputmethod/latin/LatinKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;
    }
.end annotation


# static fields
.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field static sSpacebarVerticalCorrection:I


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mOldShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mOldShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private m_DeleteCharPreview:Landroid/graphics/drawable/Drawable;

.field private m_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

.field private m_DeleteWordPreview:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;-><init>(Landroid/content/Context;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 9
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 46
    iput v4, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteCharPreview:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteCharPreview:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteCharPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteCharPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    const v1, 0x7f020189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteWordPreview:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteWordPreview:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteWordPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteWordPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->sSpacebarVerticalCorrection:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 7
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 75
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 13
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    .line 89
    new-instance v0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 90
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    .line 91
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 96
    :cond_15
    :goto_15
    return-object v0

    .line 93
    :cond_16
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v6

    const/4 v2, -0x5

    if-ne v1, v2, :cond_15

    .line 94
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_15
.end method

.method public deleteKey()Landroid/inputmethodservice/Keyboard$Key;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    return-object v0
.end method

.method public deleteWordMode(Z)Landroid/inputmethodservice/Keyboard$Key;
    .registers 4
    .parameter "on"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteWordPreview:Landroid/graphics/drawable/Drawable;

    :goto_6
    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteKey:Landroid/inputmethodservice/Keyboard$Key;

    return-object v0

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m_DeleteCharPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_6
.end method

.method enableShiftLock()V
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getShiftKeyIndex()I

    move-result v0

    .line 160
    .local v0, index:I
    if-ltz v0, :cond_2b

    .line 161
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 162
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    instance-of v1, v1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    if-eqz v1, :cond_1f

    .line 163
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->enableShiftLock()V

    .line 165
    :cond_1f
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mOldShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 168
    :cond_2b
    return-void
.end method

.method isShiftLocked()Z
    .registers 3

    .prologue
    .line 185
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isShifted()Z
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_c

    .line 213
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 215
    :goto_9
    return v0

    .line 213
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 215
    :cond_c
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_9
.end method

.method setImeOptions(Landroid/content/res/Resources;II)V
    .registers 8
    .parameter "res"
    .parameter "mode"
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_54

    .line 102
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 104
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 105
    const v0, 0x400000ff

    and-int/2addr v0, p3

    packed-switch v0, :pswitch_data_de

    .line 134
    const/4 v0, 0x6

    if-ne p2, v0, :cond_c1

    .line 135
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, ":-)"

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 138
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, ":-) "

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 139
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f05000c

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 150
    :goto_37
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_54

    .line 151
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    :cond_54
    return-void

    .line 107
    :pswitch_55
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f090302

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_37

    .line 112
    :pswitch_69
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f0900ce

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_37

    .line 117
    :pswitch_7d
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f090301

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_37

    .line 122
    :pswitch_91
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f02018d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f0201a0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_37

    .line 129
    :pswitch_ac
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f0900cf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_37

    .line 141
    :cond_c1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f02018c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f02019f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_37

    .line 105
    nop

    :pswitch_data_de
    .packed-switch 0x2
        :pswitch_55
        :pswitch_91
        :pswitch_ac
        :pswitch_69
        :pswitch_7d
    .end packed-switch
.end method

.method setShiftLocked(Z)V
    .registers 5
    .parameter "shiftLocked"

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_14

    .line 172
    if-eqz p1, :cond_15

    .line 173
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 175
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 182
    :cond_14
    :goto_14
    return-void

    .line 177
    :cond_15
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 178
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 179
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    goto :goto_14
.end method

.method public setShifted(Z)Z
    .registers 6
    .parameter "shiftState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, shiftChanged:Z
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v3, :cond_32

    .line 192
    if-nez p1, :cond_1e

    .line 193
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-eqz v3, :cond_1c

    move v0, v1

    .line 194
    :goto_e
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 195
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 196
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1a
    :goto_1a
    move v1, v0

    .line 207
    :goto_1b
    return v1

    :cond_1c
    move v0, v2

    .line 193
    goto :goto_e

    .line 198
    :cond_1e
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-nez v3, :cond_1a

    .line 199
    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-nez v3, :cond_30

    move v0, v1

    .line 200
    :goto_27
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 201
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1a

    :cond_30
    move v0, v2

    .line 199
    goto :goto_27

    .line 205
    :cond_32
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v1

    goto :goto_1b
.end method
