.class Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .registers 7
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 225
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 226
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->popupResId:I

    .line 230
    :cond_12
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 234
    return-void
.end method

.method public isInside(II)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x5

    .line 250
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->codes:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 251
    .local v0, code:I
    if-eq v0, v4, :cond_b

    if-ne v0, v3, :cond_23

    .line 253
    :cond_b
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    .line 254
    if-ne v0, v4, :cond_17

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    .line 255
    :cond_17
    if-ne v0, v3, :cond_1e

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    .line 259
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    return v1

    .line 256
    :cond_23
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1e

    .line 257
    sget v1, Lcom/android/inputmethod/latin/LatinKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_1e
.end method

.method public onReleased(Z)V
    .registers 3
    .parameter "inside"

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_8

    .line 239
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 243
    :goto_7
    return-void

    .line 241
    :cond_8
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->pressed:Z

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method
