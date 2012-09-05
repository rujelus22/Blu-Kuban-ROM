.class public final Lcom/google/android/youtube/core/model/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

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
    .parameter "years"
    .parameter "months"
    .parameter "weeks"
    .parameter "days"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

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

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_5c

    move v0, v1

    :goto_15
    const-string v3, "months may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 50
    cmpl-float v0, p3, v4

    if-ltz v0, :cond_5e

    move v0, v1

    :goto_1f
    const-string v3, "weeks may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    cmpl-float v0, p4, v4

    if-ltz v0, :cond_60

    move v0, v1

    :goto_29
    const-string v3, "days may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    cmpl-float v0, p5, v4

    if-ltz v0, :cond_62

    move v0, v1

    :goto_33
    const-string v3, "hours may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    cmpl-float v0, p6, v4

    if-ltz v0, :cond_64

    move v0, v1

    :goto_3d
    const-string v3, "minutes may not be negative"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    cmpl-float v0, p7, v4

    if-ltz v0, :cond_66

    :goto_46
    const-string v0, "seconds may not be negative"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

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
    .registers 4
    .parameter "s"

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 161
    :goto_4
    return v1

    .line 160
    :catch_5
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Duration;
    .registers 19
    .parameter "s"

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, years:F
    const/4 v3, 0x0

    .line 114
    .local v3, months:F
    const/4 v4, 0x0

    .line 115
    .local v4, weeks:F
    const/4 v5, 0x0

    .line 116
    .local v5, days:F
    const/4 v6, 0x0

    .line 117
    .local v6, hours:F
    const/4 v7, 0x0

    .line 118
    .local v7, minutes:F
    const/4 v8, 0x0

    .line 120
    .local v8, seconds:F
    const-string v1, "[PT]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 121
    .local v12, split:[Ljava/lang/String;
    array-length v1, v12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v1, v0, :cond_74

    const/4 v1, 0x1

    aget-object v9, v12, v1

    .line 122
    .local v9, date:Ljava/lang/String;
    :goto_19
    array-length v1, v12

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v1, v0, :cond_76

    const/4 v1, 0x2

    aget-object v13, v12, v1

    .line 124
    .local v13, time:Ljava/lang/String;
    :goto_23
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 125
    sget-object v1, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 126
    .local v11, matcher:Ljava/util/regex/Matcher;
    :goto_2f
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 127
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, match:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 129
    .local v15, value:F
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 130
    .local v14, unit:C
    sparse-switch v14, :sswitch_data_de

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid unit: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v9           #date:Ljava/lang/String;
    .end local v10           #match:Ljava/lang/String;
    .end local v11           #matcher:Ljava/util/regex/Matcher;
    .end local v13           #time:Ljava/lang/String;
    .end local v14           #unit:C
    .end local v15           #value:F
    :cond_74
    const/4 v9, 0x0

    goto :goto_19

    .line 122
    .restart local v9       #date:Ljava/lang/String;
    :cond_76
    const/4 v13, 0x0

    goto :goto_23

    .line 131
    .restart local v10       #match:Ljava/lang/String;
    .restart local v11       #matcher:Ljava/util/regex/Matcher;
    .restart local v13       #time:Ljava/lang/String;
    .restart local v14       #unit:C
    .restart local v15       #value:F
    :sswitch_78
    move v2, v15

    goto :goto_2f

    .line 132
    :sswitch_7a
    move v3, v15

    goto :goto_2f

    .line 133
    :sswitch_7c
    move v4, v15

    goto :goto_2f

    .line 134
    :sswitch_7e
    move v5, v15

    goto :goto_2f

    .line 140
    .end local v10           #match:Ljava/lang/String;
    .end local v11           #matcher:Ljava/util/regex/Matcher;
    .end local v14           #unit:C
    .end local v15           #value:F
    :cond_80
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 141
    sget-object v1, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 142
    .restart local v11       #matcher:Ljava/util/regex/Matcher;
    :goto_8c
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 143
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 144
    .restart local v10       #match:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 145
    .restart local v15       #value:F
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 146
    .restart local v14       #unit:C
    sparse-switch v14, :sswitch_data_f0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid unit: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :sswitch_d1
    move v6, v15

    goto :goto_8c

    .line 148
    :sswitch_d3
    move v7, v15

    goto :goto_8c

    .line 149
    :sswitch_d5
    move v8, v15

    goto :goto_8c

    .line 154
    .end local v10           #match:Ljava/lang/String;
    .end local v11           #matcher:Ljava/util/regex/Matcher;
    .end local v14           #unit:C
    .end local v15           #value:F
    :cond_d7
    new-instance v1, Lcom/google/android/youtube/core/model/Duration;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/youtube/core/model/Duration;-><init>(FFFFFFF)V

    return-object v1

    .line 130
    nop

    :sswitch_data_de
    .sparse-switch
        0x44 -> :sswitch_7e
        0x4d -> :sswitch_7a
        0x57 -> :sswitch_7c
        0x59 -> :sswitch_78
    .end sparse-switch

    .line 146
    :sswitch_data_f0
    .sparse-switch
        0x48 -> :sswitch_d1
        0x4d -> :sswitch_d3
        0x53 -> :sswitch_d5
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p0, p1, :cond_5

    .line 74
    :cond_4
    :goto_4
    return v1

    .line 70
    :cond_5
    instance-of v3, p1, Lcom/google/android/youtube/core/model/Duration;

    if-nez v3, :cond_b

    move v1, v2

    .line 71
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/google/android/youtube/core/model/Duration;

    .line 74
    .local v0, other:Lcom/google/android/youtube/core/model/Duration;
    iget v3, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    iget v4, v0, Lcom/google/android/youtube/core/model/Duration;->years:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_46

    iget v3, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    iget v4, v0, Lcom/google/android/youtube/core/model/Duration;->months:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_46

    iget v3, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    iget v4, v0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_46

    iget v3, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    iget v4, v0, Lcom/google/android/youtube/core/model/Duration;->days:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_46

    iget v3, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    iget v4, v0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_46

    iget v3, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    iget v4, v0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_46

    iget v3, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    iget v4, v0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    :cond_46
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 86
    .local v0, result:I
    if-nez v0, :cond_37

    .line 87
    const/16 v0, 0x11

    .line 88
    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    float-to-int v1, v1

    add-int/lit16 v0, v1, 0x20f

    .line 89
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 91
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 95
    iput v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 97
    :cond_37
    return v0
.end method

.method public inHours()I
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
