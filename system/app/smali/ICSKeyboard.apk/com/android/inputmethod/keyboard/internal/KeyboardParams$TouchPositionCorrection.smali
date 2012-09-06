.class public Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;
.super Ljava/lang/Object;
.source "KeyboardParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPositionCorrection"
.end annotation


# static fields
.field private static final TOUCH_POSITION_CORRECTION_RECORD_SIZE:I = 0x3


# instance fields
.field public mEnabled:Z

.field public mRadii:[F

.field public mXs:[F

.field public mYs:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mEnabled:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mXs:[F

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mYs:[F

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mRadii:[F

    if-eqz v0, :cond_21

    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mXs:[F

    array-length v0, v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mYs:[F

    array-length v0, v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mRadii:[F

    array-length v0, v0

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    .line 124
    goto :goto_20
.end method

.method public load([Ljava/lang/String;)V
    .registers 11
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 83
    array-length v0, p1

    .line 84
    .local v0, dataLength:I
    rem-int/lit8 v7, v0, 0x3

    if-eqz v7, :cond_12

    .line 85
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v7, :cond_23

    .line 86
    new-instance v7, Ljava/lang/RuntimeException;

    .line 87
    const-string v8, "the size of touch position correction data is invalid"

    .line 86
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 91
    :cond_12
    div-int/lit8 v4, v0, 0x3

    .line 92
    .local v4, length:I
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mXs:[F

    .line 93
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mYs:[F

    .line 94
    new-array v7, v4, [F

    iput-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mRadii:[F

    .line 96
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-lt v2, v0, :cond_24

    .line 117
    .end local v2           #i:I
    .end local v4           #length:I
    :cond_23
    :goto_23
    return-void

    .line 97
    .restart local v2       #i:I
    .restart local v4       #length:I
    :cond_24
    :try_start_24
    rem-int/lit8 v5, v2, 0x3

    .line 98
    .local v5, type:I
    div-int/lit8 v3, v2, 0x3

    .line 99
    .local v3, index:I
    aget-object v7, p1, v2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 100
    .local v6, value:F
    if-nez v5, :cond_37

    .line 101
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mXs:[F

    aput v6, v7, v3

    .line 96
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 102
    :cond_37
    const/4 v7, 0x1

    if-ne v5, v7, :cond_4c

    .line 103
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mYs:[F

    aput v6, v7, v3
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_3e} :catch_3f

    goto :goto_34

    .line 108
    .end local v3           #index:I
    .end local v5           #type:I
    .end local v6           #value:F
    :catch_3f
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-boolean v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v7, :cond_51

    .line 110
    new-instance v7, Ljava/lang/RuntimeException;

    .line 111
    const-string v8, "the number format for touch position correction data is invalid"

    .line 110
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 105
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #index:I
    .restart local v5       #type:I
    .restart local v6       #value:F
    :cond_4c
    :try_start_4c
    iget-object v7, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mRadii:[F

    aput v6, v7, v3
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_50} :catch_3f

    goto :goto_34

    .line 113
    .end local v3           #index:I
    .end local v5           #type:I
    .end local v6           #value:F
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :cond_51
    iput-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mXs:[F

    .line 114
    iput-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mYs:[F

    .line 115
    iput-object v8, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mRadii:[F

    goto :goto_23
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;->mEnabled:Z

    .line 121
    return-void
.end method
