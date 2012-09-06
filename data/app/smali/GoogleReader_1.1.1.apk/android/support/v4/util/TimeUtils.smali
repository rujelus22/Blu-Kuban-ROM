.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 33
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 5
    .parameter "amt"
    .parameter "suffix"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 36
    const/16 v0, 0x63

    if-gt p0, v0, :cond_9

    if-eqz p2, :cond_c

    const/4 v0, 0x3

    if-lt p3, v0, :cond_c

    .line 37
    :cond_9
    add-int/lit8 v0, p1, 0x3

    .line 45
    :goto_b
    return v0

    .line 39
    :cond_c
    const/16 v0, 0x9

    if-gt p0, v0, :cond_15

    if-eqz p2, :cond_18

    const/4 v0, 0x2

    if-lt p3, v0, :cond_18

    .line 40
    :cond_15
    add-int/lit8 v0, p1, 0x2

    goto :goto_b

    .line 42
    :cond_18
    if-nez p2, :cond_1c

    if-lez p0, :cond_1f

    .line 43
    :cond_1c
    add-int/lit8 v0, p1, 0x1

    goto :goto_b

    .line 45
    :cond_1f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 8
    .parameter "time"
    .parameter "now"
    .parameter "pw"

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 167
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    :goto_b
    return-void

    .line 170
    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_b
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 4
    .parameter "duration"
    .parameter "pw"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 162
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 9
    .parameter "duration"
    .parameter "pw"
    .parameter "fieldLen"

    .prologue
    .line 153
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 155
    .local v0, len:I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    .end local v0           #len:I
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 145
    sget-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 147
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 148
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .registers 21
    .parameter "duration"
    .parameter "fieldLen"

    .prologue
    .line 73
    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_f

    .line 74
    move/from16 v0, p2

    new-array v0, v0, [C

    move-object v4, v0

    sput-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 77
    :cond_f
    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 79
    .local v4, formatStr:[C
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-nez v5, :cond_2b

    .line 80
    const/4 v7, 0x0

    .line 81
    .local v7, pos:I
    add-int/lit8 p2, p2, -0x1

    .line 82
    .end local p0
    :goto_1a
    move v0, v7

    move/from16 v1, p2

    if-ge v0, v1, :cond_24

    .line 83
    const/16 p0, 0x20

    aput-char p0, v4, v7

    goto :goto_1a

    .line 85
    :cond_24
    const/16 p0, 0x30

    aput-char p0, v4, v7

    .line 86
    add-int/lit8 p0, v7, 0x1

    .line 140
    :goto_2a
    return p0

    .line 90
    .end local v7           #pos:I
    .restart local p0
    :cond_2b
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_c3

    .line 91
    const/16 v5, 0x2b

    .local v5, prefix:C
    move v8, v5

    .line 97
    .end local v5           #prefix:C
    .local v8, prefix:C
    :goto_34
    const-wide/16 v5, 0x3e8

    rem-long v5, p0, v5

    long-to-int v14, v5

    .line 98
    .local v14, millis:I
    const-wide/16 v5, 0x3e8

    div-long p0, p0, v5

    .end local p0
    move-wide/from16 v0, p0

    long-to-double v0, v0

    move-wide/from16 p0, v0

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    move-wide/from16 v0, p0

    double-to-int v0, v0

    move v6, v0

    .line 99
    .local v6, seconds:I
    const/4 v5, 0x0

    .local v5, days:I
    const/16 p0, 0x0

    .local p0, hours:I
    const/16 p1, 0x0

    .line 101
    .local p1, minutes:I
    const v7, 0x15180

    if-le v6, v7, :cond_5e

    .line 102
    const v5, 0x15180

    div-int v5, v6, v5

    .line 103
    const v7, 0x15180

    mul-int/2addr v7, v5

    sub-int/2addr v6, v7

    .line 105
    :cond_5e
    const/16 v7, 0xe10

    if-le v6, v7, :cond_6d

    .line 106
    move v0, v6

    div-int/lit16 v0, v0, 0xe10

    move/from16 p0, v0

    .line 107
    move/from16 v0, p0

    mul-int/lit16 v0, v0, 0xe10

    move v7, v0

    sub-int/2addr v6, v7

    .line 109
    :cond_6d
    const/16 v7, 0x3c

    if-le v6, v7, :cond_16e

    .line 110
    div-int/lit8 p1, v6, 0x3c

    .line 111
    mul-int/lit8 v7, p1, 0x3c

    sub-int/2addr v6, v7

    move v15, v6

    .line 114
    .end local v6           #seconds:I
    .local v15, seconds:I
    :goto_77
    const/4 v7, 0x0

    .line 116
    .restart local v7       #pos:I
    if-eqz p2, :cond_d5

    .line 117
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v6

    .line 118
    .local v6, myLen:I
    const/4 v9, 0x1

    if-lez v6, :cond_cd

    const/4 v10, 0x1

    :goto_85
    const/4 v11, 0x2

    move/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 119
    const/4 v9, 0x1

    if-lez v6, :cond_cf

    const/4 v10, 0x1

    :goto_94
    const/4 v11, 0x2

    move/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 120
    const/4 v9, 0x1

    if-lez v6, :cond_d1

    const/4 v10, 0x1

    :goto_a3
    const/4 v11, 0x2

    invoke-static {v15, v9, v10, v11}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    .line 121
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lez v6, :cond_d3

    const/4 v11, 0x3

    :goto_ae
    invoke-static {v14, v9, v10, v11}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v6, v9

    .line 122
    :goto_b5
    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_d5

    .line 123
    const/16 v9, 0x20

    aput-char v9, v4, v7

    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    .line 93
    .end local v5           #days:I
    .end local v6           #myLen:I
    .end local v7           #pos:I
    .end local v8           #prefix:C
    .end local v14           #millis:I
    .end local v15           #seconds:I
    .end local p1           #minutes:I
    .local p0, duration:J
    :cond_c3
    const/16 v5, 0x2d

    .line 94
    .local v5, prefix:C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move v8, v5

    .end local v5           #prefix:C
    .restart local v8       #prefix:C
    goto/16 :goto_34

    .line 118
    .local v5, days:I
    .restart local v6       #myLen:I
    .restart local v7       #pos:I
    .restart local v14       #millis:I
    .restart local v15       #seconds:I
    .local p0, hours:I
    .restart local p1       #minutes:I
    :cond_cd
    const/4 v10, 0x0

    goto :goto_85

    .line 119
    :cond_cf
    const/4 v10, 0x0

    goto :goto_94

    .line 120
    :cond_d1
    const/4 v10, 0x0

    goto :goto_a3

    .line 121
    :cond_d3
    const/4 v11, 0x0

    goto :goto_ae

    .line 129
    .end local v6           #myLen:I
    :cond_d5
    aput-char v8, v4, v7

    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 132
    move/from16 v16, v7

    .line 133
    .local v16, start:I
    if-eqz p2, :cond_14b

    const/4 v6, 0x1

    move/from16 v17, v6

    .line 134
    .local v17, zeropad:Z
    :goto_e0
    const/16 v6, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    .end local v8           #prefix:C
    move-result v7

    .line 135
    const/16 v10, 0x68

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_14f

    const/4 v5, 0x1

    move v12, v5

    .end local v5           #days:I
    :goto_f1
    if-eqz v17, :cond_152

    const/4 v5, 0x2

    move v13, v5

    :goto_f5
    move-object v8, v4

    move/from16 v9, p0

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 136
    const/16 v10, 0x6d

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_155

    const/16 p0, 0x1

    move/from16 v12, p0

    .end local p0           #hours:I
    :goto_108
    if-eqz v17, :cond_15a

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_10e
    move-object v8, v4

    move/from16 v9, p1

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 137
    const/16 v10, 0x73

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_15f

    const/16 p0, 0x1

    move/from16 v12, p0

    :goto_121
    if-eqz v17, :cond_164

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_127
    move-object v8, v4

    move v9, v15

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 138
    const/16 v10, 0x6d

    const/4 v12, 0x1

    if-eqz v17, :cond_169

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_169

    const/16 p0, 0x3

    move/from16 v13, p0

    :goto_13c
    move-object v8, v4

    move v9, v14

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    .line 139
    const/16 p0, 0x73

    aput-char p0, v4, v7

    .line 140
    add-int/lit8 p0, v7, 0x1

    goto/16 :goto_2a

    .line 133
    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_14b
    const/4 v6, 0x0

    move/from16 v17, v6

    goto :goto_e0

    .line 135
    .end local v8           #prefix:C
    .restart local v17       #zeropad:Z
    :cond_14f
    const/4 v5, 0x0

    move v12, v5

    goto :goto_f1

    .end local v5           #days:I
    :cond_152
    const/4 v5, 0x0

    move v13, v5

    goto :goto_f5

    .line 136
    :cond_155
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_108

    .end local p0           #hours:I
    :cond_15a
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_10e

    .line 137
    :cond_15f
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_121

    :cond_164
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_127

    .line 138
    :cond_169
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_13c

    .end local v7           #pos:I
    .end local v15           #seconds:I
    .end local v16           #start:I
    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .local v6, seconds:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_16e
    move v15, v6

    .end local v6           #seconds:I
    .restart local v15       #seconds:I
    goto/16 :goto_77
.end method

.method private static printField([CICIZI)I
    .registers 9
    .parameter "formatStr"
    .parameter "amt"
    .parameter "suffix"
    .parameter "pos"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 50
    if-nez p4, :cond_4

    if-lez p1, :cond_3c

    .line 51
    :cond_4
    move v1, p3

    .line 52
    .local v1, startPos:I
    if-eqz p4, :cond_a

    const/4 v2, 0x3

    if-ge p5, v2, :cond_e

    :cond_a
    const/16 v2, 0x63

    if-le p1, v2, :cond_1a

    .line 53
    :cond_e
    div-int/lit8 v0, p1, 0x64

    .line 54
    .local v0, dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 55
    add-int/lit8 p3, p3, 0x1

    .line 56
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 58
    .end local v0           #dig:I
    :cond_1a
    if-eqz p4, :cond_1f

    const/4 v2, 0x2

    if-ge p5, v2, :cond_25

    :cond_1f
    const/16 v2, 0x9

    if-gt p1, v2, :cond_25

    if-eq v1, p3, :cond_31

    .line 59
    :cond_25
    div-int/lit8 v0, p1, 0xa

    .line 60
    .restart local v0       #dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 61
    add-int/lit8 p3, p3, 0x1

    .line 62
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 64
    .end local v0           #dig:I
    :cond_31
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 65
    add-int/lit8 p3, p3, 0x1

    .line 66
    aput-char p2, p0, p3

    .line 67
    add-int/lit8 p3, p3, 0x1

    .line 69
    .end local v1           #startPos:I
    :cond_3c
    return p3
.end method
