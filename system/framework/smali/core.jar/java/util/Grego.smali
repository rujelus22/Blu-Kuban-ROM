.class Ljava/util/Grego;
.super Ljava/lang/Object;
.source "Grego.java"


# static fields
.field private static final DAYS_BEFORE:[I = null

.field private static final JULIAN_1970_CE:I = 0x253d8c

.field private static final JULIAN_1_CE:I = 0x1a4452

.field public static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MILLIS_PER_DAY:I = 0x5265c00

.field public static final MILLIS_PER_HOUR:I = 0x36ee80

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final MILLIS_PER_SECOND:I = 0x3e8

.field public static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field private static final MONTH_LENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x18

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Ljava/util/Grego;->MONTH_LENGTH:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_46

    sput-object v0, Ljava/util/Grego;->DAYS_BEFORE:[I

    return-void

    .line 46
    nop

    :array_12
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_46
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOfWeek(J)I
    .registers 8
    .parameter "day"

    .prologue
    .line 108
    const/4 v2, 0x1

    new-array v1, v2, [J

    .line 109
    .local v1, remainder:[J
    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5, v1}, Ljava/util/Grego;->floorDivide(JJ[J)J

    .line 110
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v0, v2

    .line 111
    .local v0, dayOfWeek:I
    if-nez v0, :cond_12

    const/4 v0, 0x7

    .line 112
    :cond_12
    return v0
.end method

.method public static dayToFields(J[I)[I
    .registers 29
    .parameter "day"
    .parameter "fields"

    .prologue
    .line 116
    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 117
    :cond_f
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 p2, v0

    .line 120
    :cond_17
    const-wide/32 v22, 0xaf93a

    add-long p0, p0, v22

    .line 122
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 123
    .local v20, rem:[J
    const-wide/32 v22, 0x23ab1

    move-wide/from16 v0, p0

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v18

    .line 124
    .local v18, n400:J
    const/16 v22, 0x0

    aget-wide v22, v20, v22

    const-wide/32 v24, 0x8eac

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v14

    .line 125
    .local v14, n100:J
    const/16 v22, 0x0

    aget-wide v22, v20, v22

    const-wide/16 v24, 0x5b5

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v16

    .line 126
    .local v16, n4:J
    const/16 v22, 0x0

    aget-wide v22, v20, v22

    const-wide/16 v24, 0x16d

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v12

    .line 128
    .local v12, n1:J
    const-wide/16 v22, 0x190

    mul-long v22, v22, v18

    const-wide/16 v24, 0x64

    mul-long v24, v24, v14

    add-long v22, v22, v24

    const-wide/16 v24, 0x4

    mul-long v24, v24, v16

    add-long v22, v22, v24

    add-long v22, v22, v12

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    .line 129
    .local v21, year:I
    const/16 v22, 0x0

    aget-wide v22, v20, v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 130
    .local v8, dayOfYear:I
    const-wide/16 v22, 0x4

    cmp-long v22, v14, v22

    if-eqz v22, :cond_8c

    const-wide/16 v22, 0x4

    cmp-long v22, v12, v22

    if-nez v22, :cond_dc

    .line 131
    :cond_8c
    const/16 v8, 0x16d

    .line 137
    :goto_8e
    invoke-static/range {v21 .. v21}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v9

    .line 138
    .local v9, isLeap:Z
    const/4 v5, 0x0

    .line 139
    .local v5, correction:I
    if-eqz v9, :cond_df

    const/16 v10, 0x3c

    .line 140
    .local v10, march1:I
    :goto_97
    if-lt v8, v10, :cond_9c

    .line 141
    if-eqz v9, :cond_e2

    const/4 v5, 0x1

    .line 143
    :cond_9c
    :goto_9c
    add-int v22, v8, v5

    mul-int/lit8 v22, v22, 0xc

    add-int/lit8 v22, v22, 0x6

    move/from16 v0, v22

    div-int/lit16 v11, v0, 0x16f

    .line 144
    .local v11, month:I
    sget-object v23, Ljava/util/Grego;->DAYS_BEFORE:[I

    if-eqz v9, :cond_e4

    add-int/lit8 v22, v11, 0xc

    :goto_ac
    aget v22, v23, v22

    sub-int v22, v8, v22

    add-int/lit8 v6, v22, 0x1

    .line 145
    .local v6, dayOfMonth:I
    const-wide/16 v22, 0x2

    add-long v22, v22, p0

    const-wide/16 v24, 0x7

    rem-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v7, v0

    .line 146
    .local v7, dayOfWeek:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_c5

    .line 147
    add-int/lit8 v7, v7, 0x7

    .line 149
    :cond_c5
    add-int/lit8 v8, v8, 0x1

    .line 151
    const/16 v22, 0x0

    aput v21, p2, v22

    .line 152
    const/16 v22, 0x1

    aput v11, p2, v22

    .line 153
    const/16 v22, 0x2

    aput v6, p2, v22

    .line 154
    const/16 v22, 0x3

    aput v7, p2, v22

    .line 155
    const/16 v22, 0x4

    aput v8, p2, v22

    .line 157
    return-object p2

    .line 134
    .end local v5           #correction:I
    .end local v6           #dayOfMonth:I
    .end local v7           #dayOfWeek:I
    .end local v9           #isLeap:Z
    .end local v10           #march1:I
    .end local v11           #month:I
    :cond_dc
    add-int/lit8 v21, v21, 0x1

    goto :goto_8e

    .line 139
    .restart local v5       #correction:I
    .restart local v9       #isLeap:Z
    :cond_df
    const/16 v10, 0x3b

    goto :goto_97

    .line 141
    .restart local v10       #march1:I
    :cond_e2
    const/4 v5, 0x2

    goto :goto_9c

    .restart local v11       #month:I
    :cond_e4
    move/from16 v22, v11

    .line 144
    goto :goto_ac
.end method

.method public static fieldsToDay(III)J
    .registers 12
    .parameter "year"
    .parameter "month"
    .parameter "dom"

    .prologue
    .line 94
    add-int/lit8 v2, p0, -0x1

    .line 95
    .local v2, y:I
    mul-int/lit16 v3, v2, 0x16d

    int-to-long v3, v3

    int-to-long v5, v2

    const-wide/16 v7, 0x4

    invoke-static {v5, v6, v7, v8}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/32 v5, 0x1a444f

    add-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0x190

    invoke-static {v5, v6, v7, v8}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long v4, v3, v5

    sget-object v6, Ljava/util/Grego;->DAYS_BEFORE:[I

    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/16 v3, 0xc

    :goto_2f
    add-int/2addr v3, p1

    aget v3, v6, v3

    int-to-long v6, v3

    add-long v3, v4, v6

    int-to-long v5, p2

    add-long v0, v3, v5

    .line 99
    .local v0, julian:J
    const-wide/32 v3, 0x253d8c

    sub-long v3, v0, v3

    return-wide v3

    .line 95
    .end local v0           #julian:J
    :cond_3e
    const/4 v3, 0x0

    goto :goto_2f
.end method

.method public static floorDivide(JJ)J
    .registers 8
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    const-wide/16 v2, 0x1

    .line 184
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    div-long v0, p0, p2

    :goto_a
    return-wide v0

    :cond_b
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method private static floorDivide(JJ[J)J
    .registers 12
    .parameter "numerator"
    .parameter "denominator"
    .parameter "remainder"

    .prologue
    const-wide/16 v5, 0x1

    const/4 v4, 0x0

    .line 190
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_10

    .line 191
    rem-long v2, p0, p2

    aput-wide v2, p4, v4

    .line 192
    div-long v0, p0, p2

    .line 196
    :goto_f
    return-wide v0

    .line 194
    :cond_10
    add-long v2, p0, v5

    div-long/2addr v2, p2

    sub-long v0, v2, v5

    .line 195
    .local v0, quotient:J
    mul-long v2, v0, p2

    sub-long v2, p0, v2

    aput-wide v2, p4, v4

    goto :goto_f
.end method

.method public static getDayOfWeekInMonth(III)I
    .registers 6
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 204
    add-int/lit8 v1, p2, 0x6

    div-int/lit8 v0, v1, 0x7

    .line 205
    .local v0, weekInMonth:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 206
    add-int/lit8 v1, p2, 0x7

    invoke-static {p0, p1}, Ljava/util/Grego;->monthLength(II)I

    move-result v2

    if-le v1, v2, :cond_10

    .line 207
    const/4 v0, -0x1

    .line 212
    :cond_10
    :goto_10
    return v0

    .line 209
    :cond_11
    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 210
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public static final isLeapYear(I)Z
    .registers 2
    .parameter "year"

    .prologue
    .line 62
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final monthLength(II)I
    .registers 4
    .parameter "year"
    .parameter "month"

    .prologue
    .line 72
    sget-object v1, Ljava/util/Grego;->MONTH_LENGTH:[I

    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    :goto_a
    add-int/2addr v0, p1

    aget v0, v1, v0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final previousMonthLength(II)I
    .registers 3
    .parameter "year"
    .parameter "month"

    .prologue
    .line 82
    if-lez p1, :cond_9

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Ljava/util/Grego;->monthLength(II)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x1f

    goto :goto_8
.end method

.method public static timeToFields(J[I)[I
    .registers 9
    .parameter "time"
    .parameter "fields"

    .prologue
    const/4 v4, 0x6

    .line 171
    if-eqz p2, :cond_6

    array-length v3, p2

    if-ge v3, v4, :cond_8

    .line 172
    :cond_6
    new-array p2, v4, [I

    .line 174
    :cond_8
    const/4 v3, 0x1

    new-array v2, v3, [J

    .line 175
    .local v2, remainder:[J
    const-wide/32 v3, 0x5265c00

    invoke-static {p0, p1, v3, v4, v2}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v0

    .line 176
    .local v0, day:J
    invoke-static {v0, v1, p2}, Ljava/util/Grego;->dayToFields(J[I)[I

    .line 177
    const/4 v3, 0x5

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    long-to-int v4, v4

    aput v4, p2, v3

    .line 178
    return-object p2
.end method
