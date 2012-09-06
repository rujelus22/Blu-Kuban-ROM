.class public LsV;
.super Ljava/lang/Object;
.source "TimeRange.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/32 v9, 0x5265c00

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 44
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 45
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 46
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object v0, p1

    move v5, v4

    move v6, v4

    .line 48
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 49
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, LsV;->a:J

    .line 51
    iget-wide v0, p0, LsV;->a:J

    sub-long/2addr v0, v9

    iput-wide v0, p0, LsV;->b:J

    .line 52
    iget-wide v0, p0, LsV;->a:J

    add-int/lit8 v2, v7, -0x1

    int-to-long v4, v2

    mul-long/2addr v4, v9

    sub-long/2addr v0, v4

    iput-wide v0, p0, LsV;->c:J

    .line 53
    iget-wide v0, p0, LsV;->a:J

    add-int/lit8 v2, v3, -0x1

    int-to-long v2, v2

    mul-long/2addr v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, p0, LsV;->d:J

    .line 54
    iget-wide v0, p0, LsV;->a:J

    add-int/lit8 v2, v8, -0x1

    int-to-long v2, v2

    mul-long/2addr v2, v9

    sub-long/2addr v0, v2

    iput-wide v0, p0, LsV;->e:J

    .line 55
    return-void
.end method


# virtual methods
.method public a(J)LsM;
    .registers 5
    .parameter

    .prologue
    .line 84
    iget-wide v0, p0, LsV;->a:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 85
    sget-object v0, LsU;->b:LsU;

    .line 99
    :goto_8
    return-object v0

    .line 87
    :cond_9
    iget-wide v0, p0, LsV;->b:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    .line 88
    sget-object v0, LsU;->c:LsU;

    goto :goto_8

    .line 90
    :cond_12
    iget-wide v0, p0, LsV;->c:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1b

    .line 91
    sget-object v0, LsU;->d:LsU;

    goto :goto_8

    .line 93
    :cond_1b
    iget-wide v0, p0, LsV;->d:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_24

    .line 94
    sget-object v0, LsU;->e:LsU;

    goto :goto_8

    .line 96
    :cond_24
    iget-wide v0, p0, LsV;->e:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2d

    .line 97
    sget-object v0, LsU;->f:LsU;

    goto :goto_8

    .line 99
    :cond_2d
    sget-object v0, LsU;->g:LsU;

    goto :goto_8
.end method

.method a(JJ)LsM;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, LsV;->a(J)LsM;

    move-result-object v0

    .line 68
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_b

    .line 72
    :cond_a
    :goto_a
    return-object v0

    .line 71
    :cond_b
    invoke-virtual {p0, p3, p4}, LsV;->a(J)LsM;

    move-result-object v1

    .line 72
    if-ne v1, v0, :cond_a

    sget-object v0, LsU;->a:LsU;

    goto :goto_a
.end method
