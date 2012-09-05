.class final Lu/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/B;Lu/B;)I
    .registers 7

    invoke-static {p1}, Lu/B;->b(Lu/B;)D

    move-result-wide v0

    invoke-static {p2}, Lu/B;->b(Lu/B;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-static {p1}, Lu/B;->b(Lu/B;)D

    move-result-wide v0

    invoke-static {p2}, Lu/B;->b(Lu/B;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lu/B;

    check-cast p2, Lu/B;

    invoke-virtual {p0, p1, p2}, Lu/y;->a(Lu/B;Lu/B;)I

    move-result v0

    return v0
.end method
