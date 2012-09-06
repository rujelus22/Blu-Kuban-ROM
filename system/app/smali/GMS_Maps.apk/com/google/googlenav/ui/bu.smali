.class Lcom/google/googlenav/ui/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:C

.field final b:J


# direct methods
.method constructor <init>(CJ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3824
    iput-char p1, p0, Lcom/google/googlenav/ui/bu;->a:C

    .line 3825
    iput-wide p2, p0, Lcom/google/googlenav/ui/bu;->b:J

    .line 3826
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3830
    instance-of v1, p1, Lcom/google/googlenav/ui/bu;

    if-nez v1, :cond_6

    .line 3834
    :cond_5
    :goto_5
    return v0

    .line 3833
    :cond_6
    check-cast p1, Lcom/google/googlenav/ui/bu;

    .line 3834
    iget-wide v1, p0, Lcom/google/googlenav/ui/bu;->b:J

    iget-wide v3, p1, Lcom/google/googlenav/ui/bu;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-char v1, p0, Lcom/google/googlenav/ui/bu;->a:C

    iget-char v2, p1, Lcom/google/googlenav/ui/bu;->a:C

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 3839
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-char v2, p0, Lcom/google/googlenav/ui/bu;->a:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlenav/ui/bu;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/K;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
