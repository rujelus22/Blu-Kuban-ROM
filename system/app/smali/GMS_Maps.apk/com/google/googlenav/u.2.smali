.class final Lcom/google/googlenav/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/W;Lcom/google/googlenav/W;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/google/googlenav/W;->s()J

    move-result-wide v0

    .line 121
    invoke-virtual {p2}, Lcom/google/googlenav/W;->s()J

    move-result-wide v2

    .line 122
    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_d
    return v0

    :cond_e
    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, -0x1

    goto :goto_d

    :cond_14
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 117
    check-cast p1, Lcom/google/googlenav/W;

    check-cast p2, Lcom/google/googlenav/W;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/U;->a(Lcom/google/googlenav/W;Lcom/google/googlenav/W;)I

    move-result v0

    return v0
.end method
