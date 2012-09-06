.class Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field static final BUFSIZE:I = 0x14

.field private static final INVALID_COORDINATE:I = -0x2

.field private static final PLACEHOLDER_DELIMITER_CHAR:C = '\ufffc'

.field private static sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/inputmethodservice/InputMethodService;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mUsabilityStudy:Z

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 219
    new-instance v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    .line 218
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 226
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 227
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 228
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    .line 229
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    .line 230
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    .line 234
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .registers 1

    .prologue
    .line 236
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .registers 5
    .parameter "context"
    .parameter "enabled"
    .parameter "usabilityStudy"

    .prologue
    .line 240
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    iput-object p0, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    .line 241
    sget-object v1, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    if-nez p1, :cond_1b

    if-nez p2, :cond_1b

    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 242
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    iput-boolean p2, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    .line 243
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 244
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0

    .line 241
    :cond_1b
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private normalize(I)I
    .registers 3
    .parameter "in"

    .prologue
    .line 247
    rem-int/lit8 v0, p1, 0x14

    .line 248
    .local v0, ret:I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x14

    .end local v0           #ret:I
    :cond_6
    return v0
.end method


# virtual methods
.method public getBackwardNthChar(I)C
    .registers 4
    .parameter "n"

    .prologue
    .line 273
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v0, p1, :cond_6

    if-gez p1, :cond_a

    .line 274
    :cond_6
    const v0, 0xfffc

    .line 276
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    goto :goto_9
.end method

.method public getLastWord(I)Ljava/lang/String;
    .registers 7
    .parameter "ignoreCharCount"

    .prologue
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v2, sb:Ljava/lang/StringBuilder;
    move v1, p1

    .line 300
    .local v1, i:I
    :goto_6
    iget v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-lt v1, v3, :cond_17

    .line 306
    :cond_a
    :goto_a
    iget v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-lt v1, v3, :cond_31

    .line 314
    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 301
    :cond_17
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 302
    .local v0, c:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 307
    .end local v0           #c:C
    :cond_31
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 308
    .restart local v0       #c:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 309
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public getPreviousX(CI)I
    .registers 6
    .parameter "c"
    .parameter "back"

    .prologue
    .line 280
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 281
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_1b

    .line 282
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1d

    .line 283
    :cond_1b
    const/4 v1, -0x2

    .line 285
    :goto_1c
    return v1

    :cond_1d
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    aget v1, v1, v0

    goto :goto_1c
.end method

.method public getPreviousY(CI)I
    .registers 6
    .parameter "c"
    .parameter "back"

    .prologue
    .line 289
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 290
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_1b

    .line 291
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1d

    .line 292
    :cond_1b
    const/4 v1, -0x2

    .line 294
    :goto_1c
    return v1

    :cond_1d
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    aget v1, v1, v0

    goto :goto_1c
.end method

.method public pop()C
    .registers 3

    .prologue
    .line 264
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 265
    const v0, 0xfffc

    .line 269
    :goto_8
    return v0

    .line 267
    :cond_9
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 268
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 269
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    goto :goto_8
.end method

.method public push(CII)V
    .registers 6
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_5

    .line 262
    :cond_4
    :goto_4
    return-void

    .line 252
    :cond_5
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mUsabilityStudy:Z

    if-eqz v0, :cond_10

    .line 253
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->writeChar(CII)V

    .line 255
    :cond_10
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 256
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 258
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 259
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 260
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    goto :goto_4
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 318
    return-void
.end method
