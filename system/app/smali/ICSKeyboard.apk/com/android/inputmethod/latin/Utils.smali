.class public Lcom/android/inputmethod/latin/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Utils$GCUtils;,
        Lcom/android/inputmethod/latin/Utils$RingCharBuffer;,
        Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static DBG_EDIT_DISTANCE:Z = false

.field private static final FULL_WORD_MULTIPLIER:I = 0x2

.field private static final MAX_INITIAL_SCORE:I = 0xff

.field private static final MINIMUM_SAFETY_NET_CHAR_LENGTH:I = 0x4

.field private static final S_INT_MAX:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/android/inputmethod/latin/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    .line 58
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/latin/Utils;->DBG_EDIT_DISTANCE:Z

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D
    .registers 19
    .parameter "before"
    .parameter "after"
    .parameter "score"

    .prologue
    .line 402
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 403
    .local v2, beforeLength:I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 404
    .local v1, afterLength:I
    if-eqz v2, :cond_c

    if-nez v1, :cond_f

    :cond_c
    const-wide/16 v10, 0x0

    .line 423
    :goto_e
    return-wide v10

    .line 405
    :cond_f
    invoke-static/range {p0 .. p1}, Lcom/android/inputmethod/latin/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 408
    .local v3, distance:I
    const/4 v7, 0x0

    .line 409
    .local v7, spaceCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_15
    if-lt v4, v1, :cond_1c

    .line 414
    if-ne v7, v1, :cond_2b

    const-wide/16 v10, 0x0

    goto :goto_e

    .line 410
    :cond_1c
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_28

    .line 411
    add-int/lit8 v7, v7, 0x1

    .line 409
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 415
    :cond_2b
    const v10, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v10, :cond_44

    const-wide v5, 0x41dfffffffc00000L

    .line 422
    .local v5, maximumScore:D
    :goto_37
    const-wide/high16 v10, 0x3ff0

    int-to-double v12, v3

    int-to-double v14, v1

    div-double/2addr v12, v14

    sub-double v8, v10, v12

    .line 423
    .local v8, weight:D
    move/from16 v0, p2

    int-to-double v10, v0

    div-double/2addr v10, v5

    mul-double/2addr v10, v8

    goto :goto_e

    .line 415
    .end local v5           #maximumScore:D
    .end local v8           #weight:D
    :cond_44
    const-wide v10, 0x406fe00000000000L

    .line 417
    const-wide/high16 v12, 0x4000

    sub-int v14, v1, v7

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-double v14, v14

    .line 416
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    .line 418
    const-wide/high16 v12, 0x4000

    mul-double v5, v10, v12

    goto :goto_37
.end method

.method public static canBeFollowedByPeriod(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 209
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 210
    const/16 v0, 0x27

    if-eq p0, v0, :cond_20

    .line 211
    const/16 v0, 0x22

    if-eq p0, v0, :cond_20

    .line 212
    const/16 v0, 0x29

    if-eq p0, v0, :cond_20

    .line 213
    const/16 v0, 0x5d

    if-eq p0, v0, :cond_20

    .line 214
    const/16 v0, 0x7d

    if-eq p0, v0, :cond_20

    .line 215
    const/16 v0, 0x3e

    if-eq p0, v0, :cond_20

    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    .line 209
    goto :goto_1f
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .registers 4
    .parameter
    .parameter "mayInterruptIfRunning"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_d

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 76
    :cond_d
    return-void
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "key"
    .parameter "csv"

    .prologue
    const/4 v1, 0x0

    .line 605
    if-nez p1, :cond_4

    .line 611
    :cond_3
    :goto_3
    return v1

    .line 607
    :cond_4
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 608
    .local v0, option:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 609
    const/4 v1, 0x1

    goto :goto_3

    .line 607
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public static dipToPixel(FI)I
    .registers 6
    .parameter "scale"
    .parameter "dip"

    .prologue
    .line 709
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 16
    .parameter "s"
    .parameter "t"

    .prologue
    .line 324
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 325
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "editDistance: Arguments should not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 327
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 328
    .local v6, sl:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 329
    .local v8, tl:I
    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v8, 0x1

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 330
    .local v1, dp:[[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    if-le v2, v6, :cond_58

    .line 333
    const/4 v3, 0x0

    .local v3, j:I
    :goto_28
    if-le v3, v8, :cond_60

    .line 336
    const/4 v2, 0x0

    :goto_2b
    if-lt v2, v6, :cond_68

    .line 351
    sget-boolean v9, Lcom/android/inputmethod/latin/Utils;->DBG_EDIT_DISTANCE:Z

    if-eqz v9, :cond_53

    .line 352
    sget-object v9, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "editDistance:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v2, 0x0

    :goto_50
    array-length v9, v1

    if-lt v2, v9, :cond_e4

    .line 361
    :cond_53
    aget-object v9, v1, v6

    aget v9, v9, v8

    return v9

    .line 331
    .end local v3           #j:I
    :cond_58
    aget-object v9, v1, v2

    const/4 v10, 0x0

    aput v2, v9, v10

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 334
    .restart local v3       #j:I
    :cond_60
    const/4 v9, 0x0

    aget-object v9, v1, v9

    aput v3, v9, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 337
    :cond_68
    const/4 v3, 0x0

    :goto_69
    if-lt v3, v8, :cond_6e

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 338
    :cond_6e
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 339
    .local v5, sc:C
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 340
    .local v7, tc:C
    if-ne v5, v7, :cond_e2

    const/4 v0, 0x0

    .line 341
    .local v0, cost:I
    :goto_81
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    .line 342
    aget-object v11, v1, v2

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v2, 0x1

    aget-object v12, v1, v12

    aget v12, v12, v3

    add-int/lit8 v12, v12, 0x1

    aget-object v13, v1, v2

    aget v13, v13, v3

    add-int/2addr v13, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 341
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 344
    if-lez v2, :cond_df

    if-lez v3, :cond_df

    .line 345
    add-int/lit8 v9, v3, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v5, v9, :cond_df

    .line 346
    add-int/lit8 v9, v2, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v7, v9, :cond_df

    .line 347
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v1, v9

    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v1, v11

    add-int/lit8 v12, v3, 0x1

    aget v11, v11, v12

    add-int/lit8 v12, v2, -0x1

    aget-object v12, v1, v12

    add-int/lit8 v13, v3, -0x1

    aget v12, v12, v13

    add-int/2addr v12, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v10

    .line 337
    :cond_df
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 340
    .end local v0           #cost:I
    :cond_e2
    const/4 v0, 0x1

    goto :goto_81

    .line 354
    .end local v5           #sc:C
    .end local v7           #tc:C
    :cond_e4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    :goto_ea
    aget-object v9, v1, v2

    array-length v9, v9

    if-lt v3, v9, :cond_113

    .line 358
    sget-object v9, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_50

    .line 356
    :cond_113
    aget-object v9, v1, v2

    aget v9, v9, v3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_ea
.end method

.method public static equalsIgnoreCase(CC)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 648
    if-eq p0, p1, :cond_18

    .line 649
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_18

    .line 650
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    .line 648
    goto :goto_17
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 661
    if-ne p0, p1, :cond_5

    .line 672
    :cond_4
    :goto_4
    return v2

    .line 663
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 664
    goto :goto_4

    .line 665
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 666
    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_17

    move v2, v3

    .line 667
    goto :goto_4

    .line 668
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v1, :cond_4

    .line 669
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(CC)Z

    move-result v4

    if-nez v4, :cond_2a

    move v2, v3

    .line 670
    goto :goto_4

    .line 668
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z
    .registers 9
    .parameter "a"
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 688
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_34

    .line 689
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "array.length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 690
    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_34
    if-nez p0, :cond_3b

    .line 692
    if-nez p3, :cond_39

    .line 699
    :cond_38
    :goto_38
    return v1

    :cond_39
    move v1, v2

    .line 692
    goto :goto_38

    .line 693
    :cond_3b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v3, p3, :cond_43

    move v1, v2

    .line 694
    goto :goto_38

    .line 695
    :cond_43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_44
    if-ge v0, p3, :cond_38

    .line 696
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(CC)Z

    move-result v3

    if-nez v3, :cond_56

    move v1, v2

    .line 697
    goto :goto_38

    .line 695
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_44
.end method

.method public static getCurrentKeyboardHeight(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)I
    .registers 6
    .parameter "sp"
    .parameter "res"
    .parameter "portrait"

    .prologue
    const/16 v1, 0x64

    .line 799
    if-eqz p2, :cond_e

    .line 801
    const-string v2, "pref_keyboard_height_settings_portrait"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 802
    .local v0, height:I
    if-ltz v0, :cond_d

    move v1, v0

    .line 813
    :cond_d
    :goto_d
    return v1

    .line 808
    .end local v0           #height:I
    :cond_e
    const-string v2, "pref_keyboard_height_settings_landscape"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 809
    .restart local v0       #height:I
    if-ltz v0, :cond_d

    move v1, v0

    .line 810
    goto :goto_d
.end method

.method public static getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .registers 9
    .parameter "sp"
    .parameter "res"

    .prologue
    .line 783
    const-string v4, "pref_vibration_duration_settings"

    const/16 v5, 0x28

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 784
    .local v3, ms:I
    if-ltz v3, :cond_b

    .line 795
    .end local v3           #ms:I
    :goto_a
    return v3

    .line 788
    .restart local v3       #ms:I
    :cond_b
    const v4, 0x7f0d000e

    .line 787
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, durationPerHardwareList:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, hardwarePrefix:Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_29
    if-lt v4, v5, :cond_2d

    .line 795
    const/4 v3, -0x1

    goto :goto_a

    .line 790
    :cond_2d
    aget-object v1, v0, v4

    .line 791
    .local v1, element:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 792
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    goto :goto_a

    .line 790
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_29
.end method

.method public static getDipScale(Landroid/content/Context;)F
    .registers 3
    .parameter "context"

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 704
    .local v0, scale:F
    return v0
.end method

.method public static getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 754
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .registers 3
    .parameter "locale"
    .parameter "returnsNameInThisLocale"

    .prologue
    .line 746
    if-eqz p1, :cond_b

    .line 747
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 749
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getInputMethodId(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "imm"
    .parameter "packageName"

    .prologue
    .line 159
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/Utils;->getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInputMethodInfo(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .registers 6
    .parameter "imm"
    .parameter "packageName"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_23

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not find input method id for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 165
    .local v0, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 166
    return-object v0
.end method

.method public static getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I
    .registers 5
    .parameter "editorInfo"

    .prologue
    const/4 v2, 0x0

    .line 575
    if-nez p0, :cond_4

    .line 600
    :cond_3
    :goto_3
    return v2

    .line 578
    :cond_4
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 579
    .local v0, inputType:I
    and-int/lit16 v1, v0, 0xff0

    .line 581
    .local v1, variation:I
    and-int/lit8 v3, v0, 0xf

    packed-switch v3, :pswitch_data_2c

    goto :goto_3

    .line 588
    :pswitch_e
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 589
    const/4 v2, 0x2

    goto :goto_3

    .line 584
    :pswitch_16
    const/4 v2, 0x5

    goto :goto_3

    .line 586
    :pswitch_18
    const/4 v2, 0x4

    goto :goto_3

    .line 590
    :cond_1a
    const/16 v3, 0x10

    if-ne v1, v3, :cond_20

    .line 591
    const/4 v2, 0x1

    goto :goto_3

    .line 592
    :cond_20
    const/16 v3, 0x40

    if-ne v1, v3, :cond_26

    .line 593
    const/4 v2, 0x3

    goto :goto_3

    .line 594
    :cond_26
    const/16 v3, 0xb0

    if-ne v1, v3, :cond_3

    goto :goto_3

    .line 581
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_18
        :pswitch_16
    .end packed-switch
.end method

.method public static getMainDictionaryResourceId(Landroid/content/res/Resources;)I
    .registers 6
    .parameter "res"

    .prologue
    .line 627
    const-string v0, "main"

    .line 628
    .local v0, MAIN_DIC_NAME:Ljava/lang/String;
    const-class v2, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "main"

    const-string v3, "raw"

    const-string v4, "inputmethod.latin.ported"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getMiddleDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 759
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 759
    invoke-virtual {v0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2
    .parameter "locale"

    .prologue
    .line 763
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTrace()Ljava/lang/String;
    .registers 6

    .prologue
    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v3, sb:Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_b

    .line 369
    :catch_b
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 372
    .local v1, frames:[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, j:I
    :goto_11
    array-length v4, v1

    if-lt v2, v4, :cond_19

    .line 374
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 372
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public static hasMultipleEnabledIMEsOrSubtypes(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z
    .registers 14
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;>;"
    const/4 v2, 0x0

    .line 124
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_20

    .line 152
    if-gt v2, v7, :cond_1f

    .line 155
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v7, :cond_1f

    move v7, v8

    :cond_1f
    return v7

    .line 124
    :cond_20
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 126
    .local v3, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    if-gt v2, v7, :cond_1f

    .line 128
    invoke-virtual {p0, v3, v7}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v6

    .line 130
    .local v6, subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    goto :goto_b

    .line 135
    :cond_35
    const/4 v0, 0x0

    .line 136
    .local v0, auxCount:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3a
    :goto_3a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4f

    .line 141
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int v4, v10, v0

    .line 146
    .local v4, nonAuxCount:I
    if-gtz v4, :cond_4c

    if-eqz p1, :cond_b

    if-le v0, v7, :cond_b

    .line 147
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 136
    .end local v4           #nonAuxCount:I
    :cond_4f
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 137
    .local v5, subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-virtual {v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .registers 5
    .parameter "packageName"
    .parameter "key"
    .parameter "editorInfo"

    .prologue
    .line 616
    if-nez p2, :cond_4

    .line 617
    const/4 v0, 0x0

    .line 618
    .end local p1
    :goto_3
    return v0

    .restart local p1
    :cond_4
    if-eqz p0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 619
    .end local p1
    :cond_1d
    iget-object v0, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 618
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/Utils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static loadNativeLibrary()V
    .registers 3

    .prologue
    .line 634
    :try_start_0
    const-string v1, "jni_latinime_moded"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 638
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_5
    return-void

    .line 635
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_6
    move-exception v0

    .line 636
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Could not load native library jni_latinime_moded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static removeDupes(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    .line 735
    :cond_7
    return-void

    .line 720
    :cond_8
    const/4 v1, 0x1

    .line 722
    .local v1, i:I
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 723
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 725
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_16
    if-lt v2, v1, :cond_1b

    .line 733
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 726
    :cond_1b
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 727
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 728
    invoke-static {p0, v1}, Lcom/android/inputmethod/latin/Utils;->removeFromSuggestions(Ljava/util/ArrayList;I)V

    .line 729
    add-int/lit8 v1, v1, -0x1

    .line 730
    goto :goto_18

    .line 725
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method private static removeFromSuggestions(Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 740
    .local v0, garbage:Ljava/lang/CharSequence;
    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_f

    .line 741
    check-cast v0, Ljava/lang/StringBuilder;

    .end local v0           #garbage:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 743
    :cond_f
    return-void
.end method

.method public static shouldBlockAutoCorrectionBySafetyNet(Lcom/android/inputmethod/latin/SuggestedWords;Lcom/android/inputmethod/latin/Suggest;)Z
    .registers 12
    .parameter "suggestions"
    .parameter "suggest"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v5

    if-le v5, v7, :cond_c

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v5, :cond_e

    :cond_c
    move v5, v6

    .line 202
    :goto_d
    return v5

    .line 180
    :cond_e
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/Suggest;->isAggressiveAutoCorrectionMode()Z

    move-result v5

    if-eqz v5, :cond_16

    move v5, v6

    goto :goto_d

    .line 181
    :cond_16
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 184
    .local v3, typedWord:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v8, 0x4

    if-ge v5, v8, :cond_23

    move v5, v6

    goto :goto_d

    .line 185
    :cond_23
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 186
    .local v2, suggestionWord:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 188
    .local v4, typedWordLength:I
    const/4 v5, 0x5

    if-ge v4, v5, :cond_84

    const/4 v5, 0x2

    :goto_2f
    add-int/lit8 v1, v5, 0x1

    .line 189
    .local v1, maxEditDistanceOfNativeDictionary:I
    invoke-static {v3, v2}, Lcom/android/inputmethod/latin/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 190
    .local v0, distance:I
    sget-boolean v5, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    if-eqz v5, :cond_57

    .line 191
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Autocorrected edit distance = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 192
    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_57
    if-le v0, v1, :cond_87

    .line 195
    sget-boolean v5, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    if-eqz v5, :cond_82

    .line 196
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Safety net: before = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", after = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v6, "(Error) The edit distance of this correction exceeds limit. Turning off auto-correction."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    move v5, v7

    .line 200
    goto :goto_d

    .line 188
    .end local v0           #distance:I
    .end local v1           #maxEditDistanceOfNativeDictionary:I
    :cond_84
    div-int/lit8 v5, v4, 0x2

    goto :goto_2f

    .restart local v0       #distance:I
    .restart local v1       #maxEditDistanceOfNativeDictionary:I
    :cond_87
    move v5, v6

    .line 202
    goto :goto_d
.end method

.method public static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .parameter "s"
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    .line 767
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_8

    .line 779
    .end local p0
    :goto_7
    return-object p0

    .restart local p0
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7
.end method

.method public static willAutoCorrect(Lcom/android/inputmethod/latin/SuggestedWords;)Z
    .registers 2
    .parameter "suggestions"

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v0, :cond_10

    .line 818
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->shouldBlockAutoCorrection()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    .line 817
    goto :goto_f
.end method
