.class public final Lcom/google/android/youtube/core/model/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final days:F

.field private volatile hashCode:I

.field public final hours:F

.field public final minutes:F

.field public final months:F

.field public final seconds:F

.field public final weeks:F

.field public final years:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "([+-.\\d]+[A-Z])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(FFFFFFF)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_5a

    move v0, v1

    :goto_b
    const-string v3, "years may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 49
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_5c

    move v0, v1

    :goto_15
    const-string v3, "months may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 50
    cmpl-float v0, p3, v4

    if-ltz v0, :cond_5e

    move v0, v1

    :goto_1f
    const-string v3, "weeks may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 51
    cmpl-float v0, p4, v4

    if-ltz v0, :cond_60

    move v0, v1

    :goto_29
    const-string v3, "days may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 52
    cmpl-float v0, p5, v4

    if-ltz v0, :cond_62

    move v0, v1

    :goto_33
    const-string v3, "hours may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 53
    cmpl-float v0, p6, v4

    if-ltz v0, :cond_64

    move v0, v1

    :goto_3d
    const-string v3, "minutes may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 54
    cmpl-float v0, p7, v4

    if-ltz v0, :cond_66

    :goto_46
    const-string v0, "seconds may not be negative"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 56
    iput p1, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    .line 57
    iput p2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    .line 58
    iput p3, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    .line 59
    iput p4, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    .line 60
    iput p5, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    .line 61
    iput p6, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    .line 62
    iput p7, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    .line 63
    return-void

    :cond_5a
    move v0, v2

    .line 48
    goto :goto_b

    :cond_5c
    move v0, v2

    .line 49
    goto :goto_15

    :cond_5e
    move v0, v2

    .line 50
    goto :goto_1f

    :cond_60
    move v0, v2

    .line 51
    goto :goto_29

    :cond_62
    move v0, v2

    .line 52
    goto :goto_33

    :cond_64
    move v0, v2

    .line 53
    goto :goto_3d

    :cond_66
    move v1, v2

    .line 54
    goto :goto_46
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .registers 3
    .parameter

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 161
    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/16 v0, 0x2c

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Duration;
    .registers 14
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 120
    const-string v0, "[PT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    array-length v0, v2

    if-le v0, v3, :cond_64

    aget-object v0, v2, v3

    .line 122
    :goto_10
    array-length v3, v2

    if-le v3, v4, :cond_66

    aget-object v1, v2, v4

    move-object v5, v1

    .line 124
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 125
    sget-object v1, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v0, v6

    move v2, v6

    move v3, v6

    move v4, v6

    .line 126
    :goto_26
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 127
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 129
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 130
    sparse-switch v8, :sswitch_data_da

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    move-object v0, v1

    .line 121
    goto :goto_10

    :cond_66
    move-object v5, v1

    .line 122
    goto :goto_16

    :sswitch_68
    move v4, v1

    .line 131
    goto :goto_26

    :sswitch_6a
    move v3, v1

    .line 132
    goto :goto_26

    :sswitch_6c
    move v2, v1

    .line 133
    goto :goto_26

    :sswitch_6e
    move v0, v1

    .line 134
    goto :goto_26

    :cond_70
    move v1, v4

    move v4, v0

    move v12, v3

    move v3, v2

    move v2, v12

    .line 137
    :goto_75
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 141
    sget-object v0, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move v5, v6

    move v7, v6

    .line 142
    :goto_83
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 143
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 145
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 146
    sparse-switch v9, :sswitch_data_ec

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c1
    move v7, v0

    .line 147
    goto :goto_83

    :sswitch_c3
    move v5, v0

    .line 148
    goto :goto_83

    :sswitch_c5
    move v6, v0

    .line 149
    goto :goto_83

    :cond_c7
    move v12, v6

    move v6, v5

    move v5, v7

    move v7, v12

    .line 152
    :goto_cb
    new-instance v0, Lcom/google/android/youtube/core/model/Duration;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/model/Duration;-><init>(FFFFFFF)V

    return-object v0

    :cond_d1
    move v7, v6

    move v5, v6

    goto :goto_cb

    :cond_d4
    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    goto :goto_75

    .line 130
    nop

    :sswitch_data_da
    .sparse-switch
        0x44 -> :sswitch_6e
        0x4d -> :sswitch_6a
        0x57 -> :sswitch_6c
        0x59 -> :sswitch_68
    .end sparse-switch

    .line 146
    :sswitch_data_ec
    .sparse-switch
        0x48 -> :sswitch_c1
        0x4d -> :sswitch_c3
        0x53 -> :sswitch_c5
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p0, p1, :cond_5

    .line 74
    :cond_4
    :goto_4
    return v0

    .line 70
    :cond_5
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Duration;

    if-nez v2, :cond_b

    move v0, v1

    .line 71
    goto :goto_4

    .line 73
    :cond_b
    check-cast p1, Lcom/google/android/youtube/core/model/Duration;

    .line 74
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->years:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->months:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->days:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->hours:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    iget v3, p1, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_45
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 86
    if-nez v0, :cond_2f

    .line 87
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 95
    iput v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 97
    :cond_2f
    return v0
.end method

.method public final inHours()I
    .registers 5

    .prologue
    const/high16 v3, 0x41c0

    .line 101
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    const/high16 v1, 0x4561

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    const/high16 v2, 0x40e0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    const/high16 v2, 0x41f8

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    const v2, 0x43b68000

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
