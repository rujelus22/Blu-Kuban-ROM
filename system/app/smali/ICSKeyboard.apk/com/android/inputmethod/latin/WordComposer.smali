.class public Lcom/android/inputmethod/latin/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# static fields
.field public static final NOT_A_CODE:I = -0x1

.field public static final NOT_A_COORDINATE:I = -0x1


# instance fields
.field private mAutoCapitalized:Z

.field private mCapsCount:I

.field private mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mIsFirstCharCapitalized:Z

.field private mTypedWord:Ljava/lang/StringBuilder;

.field private mXCoordinates:[I

.field private mYCoordinates:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x30

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x30

    .line 53
    .local v0, N:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 55
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 56
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/WordComposer;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/WordComposer;->init(Lcom/android/inputmethod/latin/WordComposer;)V

    .line 61
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .registers 7
    .parameter "primaryCode"
    .parameter "codes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 145
    :cond_6
    :goto_6
    return-void

    .line 141
    :cond_7
    aget v0, p2, v2

    if-lez v0, :cond_6

    aget v0, p2, v3

    if-lez v0, :cond_6

    aget v0, p2, v2

    if-eq v0, p1, :cond_6

    aget v0, p2, v3

    if-ne v0, p1, :cond_6

    .line 142
    aget v0, p2, v2

    aput v0, p2, v3

    .line 143
    aput p1, p2, v2

    goto :goto_6
.end method

.method private static isFirstCharCapitalized(IIZ)Z
    .registers 4
    .parameter "index"
    .parameter "codePoint"
    .parameter "previous"

    .prologue
    .line 109
    if-nez p0, :cond_7

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    .line 110
    :goto_6
    return v0

    :cond_7
    if-eqz p2, :cond_11

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public add(I[III)V
    .registers 8
    .parameter "primaryCode"
    .parameter "codes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    .line 120
    .local v0, newIndex:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 122
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const/16 v1, 0x30

    if-ge v0, v1, :cond_1e

    .line 124
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    aput p3, v1, v0

    .line 125
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    aput p4, v1, v0

    .line 128
    :cond_1e
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 127
    invoke-static {v0, p1, v1}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized(IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 129
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 130
    :cond_32
    return-void
.end method

.method public deleteLast()V
    .registers 5

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    .line 152
    .local v2, size:I
    if-lez v2, :cond_24

    .line 153
    add-int/lit8 v1, v2, -0x1

    .line 154
    .local v1, lastPos:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 155
    .local v0, lastChar:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 159
    .end local v0           #lastChar:C
    .end local v1           #lastPos:I
    :cond_24
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v3

    if-nez v3, :cond_2d

    .line 160
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 162
    :cond_2d
    return-void
.end method

.method public getCodesAt(I)[I
    .registers 3
    .parameter "index"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getTypedWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getXCoordinates()[I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    return-object v0
.end method

.method public getYCoordinates()[I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    return-object v0
.end method

.method public init(Lcom/android/inputmethod/latin/WordComposer;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 67
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 68
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 69
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 70
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 71
    return-void
.end method

.method public isAllUpperCase()Z
    .registers 3

    .prologue
    .line 188
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAutoCapitalized()Z
    .registers 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 80
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 81
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .registers 2
    .parameter "auto"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 205
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method
