.class public LalE;
.super Ljava/lang/Number;
.source "UnsignedLong.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "LalE;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:LalE;

.field public static final b:LalE;

.field public static final c:LalE;


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, LalE;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, LalE;-><init>(J)V

    sput-object v0, LalE;->a:LalE;

    .line 48
    new-instance v0, LalE;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, LalE;-><init>(J)V

    sput-object v0, LalE;->b:LalE;

    .line 49
    new-instance v0, LalE;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, LalE;-><init>(J)V

    sput-object v0, LalE;->c:LalE;

    return-void
.end method

.method protected constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput-wide p1, p0, LalE;->a:J

    .line 55
    return-void
.end method

.method public static a(J)LalE;
    .registers 3
    .parameter

    .prologue
    .line 65
    new-instance v0, LalE;

    invoke-direct {v0, p0, p1}, LalE;-><init>(J)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)LalE;
    .registers 2
    .parameter

    .prologue
    .line 89
    const/16 v0, 0xa

    invoke-static {p0, v0}, LalE;->a(Ljava/lang/String;I)LalE;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)LalE;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p0, p1}, LalF;->a(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, LalE;->a(J)LalE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(LalE;)I
    .registers 6
    .parameter

    .prologue
    .line 208
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-wide v0, p0, LalE;->a:J

    iget-wide v2, p1, LalE;->a:J

    invoke-static {v0, v1, v2, v3}, LalF;->a(JJ)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 40
    check-cast p1, LalE;

    invoke-virtual {p0, p1}, LalE;->a(LalE;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 7

    .prologue
    .line 188
    iget-wide v0, p0, LalE;->a:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 189
    iget-wide v2, p0, LalE;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_14

    .line 190
    const-wide/high16 v2, 0x43e0

    add-double/2addr v0, v2

    .line 192
    :cond_14
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    instance-of v1, p1, LalE;

    if-eqz v1, :cond_10

    .line 220
    check-cast p1, LalE;

    .line 221
    iget-wide v1, p0, LalE;->a:J

    iget-wide v3, p1, LalE;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 223
    :cond_10
    return v0
.end method

.method public floatValue()F
    .registers 6

    .prologue
    .line 174
    iget-wide v0, p0, LalE;->a:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-float v0, v0

    .line 175
    iget-wide v1, p0, LalE;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_14

    .line 176
    const/high16 v1, 0x5f00

    add-float/2addr v0, v1

    .line 178
    :cond_14
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 214
    iget-wide v0, p0, LalE;->a:J

    invoke-static {v0, v1}, LalB;->a(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 152
    iget-wide v0, p0, LalE;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 164
    iget-wide v0, p0, LalE;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    iget-wide v0, p0, LalE;->a:J

    invoke-static {v0, v1}, LalF;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
