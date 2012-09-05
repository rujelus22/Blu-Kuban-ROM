.class public La/z;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(IIII)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, v2, v2}, La/x;->a(IIII)J

    move-result-wide v0

    iput-wide v0, p0, La/z;->a:J

    invoke-static {p3, p4, v2, v2}, La/x;->a(IIII)J

    move-result-wide v0

    iput-wide v0, p0, La/z;->b:J

    iget-wide v0, p0, La/z;->b:J

    iget-wide v2, p0, La/z;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time span."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    iget-wide v0, p0, La/z;->b:J

    iget-wide v2, p0, La/z;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)Z
    .registers 7

    iget-wide v0, p0, La/z;->b:J

    invoke-static {p1, p2}, La/x;->a(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Ljava/util/Calendar;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/z;->a(J)Z

    move-result v0

    return v0
.end method

.method public b(J)Z
    .registers 5

    iget-wide v0, p0, La/z;->a:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_e

    iget-wide v0, p0, La/z;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Ljava/util/Calendar;)Z
    .registers 4

    invoke-static {p1}, La/x;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/z;->b(J)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/util/Calendar;)J
    .registers 6

    invoke-static {p1}, La/x;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    iget-wide v2, p0, La/z;->a:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    invoke-virtual {p0}, La/z;->a()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    iget-wide v2, p0, La/z;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    iget-wide v2, p0, La/z;->b:J

    sub-long v0, v2, v0

    goto :goto_e

    :cond_1a
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "TimeSpan: [%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, La/z;->a:J

    invoke-static {v3, v4}, La/x;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, La/z;->b:J

    invoke-static {v3, v4}, La/x;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
