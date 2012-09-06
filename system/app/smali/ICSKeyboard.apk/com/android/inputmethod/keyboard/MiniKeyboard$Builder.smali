.class public Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MiniKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MiniKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMoreKeys:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;)V
    .registers 14
    .parameter "view"
    .parameter "xmlId"
    .parameter "parentKey"
    .parameter "parentKeyboard"

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 210
    iget-object v0, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardId;->cloneWithNewXml(Ljava/lang/String;I)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v1, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    .line 215
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget-boolean v1, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mIsRtlKeyboard:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mIsRtlKeyboard:Z

    .line 216
    iget-object v0, p3, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    .line 218
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget v8, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundWidth:I

    .line 219
    .local v8, previewWidth:I
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget v7, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackgroundHeight:I

    .line 223
    .local v7, previewHeight:I
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->isKeyPreviewPopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    if-lez v8, :cond_6f

    .line 224
    if-lez v7, :cond_6f

    .line 225
    move v3, v8

    .line 226
    .local v3, width:I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    add-int v4, v7, v0

    .line 231
    .local v4, height:I
    :goto_52
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget v2, p3, Lcom/android/inputmethod/keyboard/Key;->mMaxMoreKeysColumn:I

    .line 232
    iget v6, p3, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v5, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v5, v5, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getMeasuredWidth()I

    move-result v6

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->setParameters(IIIIII)V

    .line 233
    return-void

    .line 228
    .end local v3           #width:I
    .end local v4           #height:I
    :cond_6f
    iget-object v1, p3, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    invoke-static {p1, v1, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I

    move-result v3

    .line 229
    .restart local v3       #width:I
    iget v4, p4, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .restart local v4       #height:I
    goto :goto_52
.end method

.method private static getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I
    .registers 13
    .parameter "view"
    .parameter "moreKeys"
    .parameter "minKeyWidth"

    .prologue
    const/4 v9, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 238
    const v7, 0x7f0b0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 239
    .local v3, padding:I
    const/4 v4, 0x0

    .line 240
    .local v4, paint:Landroid/graphics/Paint;
    move v1, p2

    .line 241
    .local v1, maxWidth:I
    array-length v7, p1

    const/4 v6, 0x0

    :goto_15
    if-lt v6, v7, :cond_18

    .line 256
    return v1

    .line 241
    :cond_18
    aget-object v2, p1, v6

    .line 242
    .local v2, moreKeySpec:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v9, :cond_3e

    .line 246
    if-nez v4, :cond_34

    .line 247
    new-instance v4, Landroid/graphics/Paint;

    .end local v4           #paint:Landroid/graphics/Paint;
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 248
    .restart local v4       #paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 250
    :cond_34
    invoke-virtual {p0, v0, v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v8

    float-to-int v8, v8

    add-int v5, v8, v3

    .line 251
    .local v5, width:I
    if-ge v1, v5, :cond_3e

    .line 252
    move v1, v5

    .line 241
    .end local v5           #width:I
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_15
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->build()Lcom/android/inputmethod/keyboard/MiniKeyboard;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/inputmethod/keyboard/MiniKeyboard;
    .registers 11

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;

    .line 262
    .local v2, params:Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
    const/4 v8, 0x0

    .local v8, n:I
    :goto_5
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt v8, v1, :cond_11

    .line 270
    new-instance v1, Lcom/android/inputmethod/keyboard/MiniKeyboard;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/android/inputmethod/keyboard/MiniKeyboard;-><init>(Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;Lcom/android/inputmethod/keyboard/MiniKeyboard;)V

    return-object v1

    .line 263
    :cond_11
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mMoreKeys:[Ljava/lang/CharSequence;

    aget-object v1, v1, v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, moreKeySpec:Ljava/lang/String;
    iget v1, v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    div-int v9, v8, v1

    .line 265
    .local v9, row:I
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8, v9}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getX(II)I

    move-result v4

    .line 266
    invoke-virtual {v2, v9}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getY(I)I

    move-result v5

    iget v6, v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    iget v7, v2, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    .line 265
    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/String;IIII)V

    .line 267
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v2, v0, v9}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V

    .line 268
    invoke-virtual {v2, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 262
    add-int/lit8 v8, v8, 0x1

    goto :goto_5
.end method
