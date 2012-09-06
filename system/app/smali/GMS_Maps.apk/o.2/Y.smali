.class final Lo/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/B;Lo/B;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 927
    invoke-static {p1}, Lo/B;->b(Lo/B;)D

    move-result-wide v0

    invoke-static {p2}, Lo/B;->b(Lo/B;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    .line 928
    const/4 v0, -0x1

    .line 932
    :goto_d
    return v0

    .line 929
    :cond_e
    invoke-static {p1}, Lo/B;->b(Lo/B;)D

    move-result-wide v0

    invoke-static {p2}, Lo/B;->b(Lo/B;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 930
    const/4 v0, 0x1

    goto :goto_d

    .line 932
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 924
    check-cast p1, Lo/B;

    check-cast p2, Lo/B;

    invoke-virtual {p0, p1, p2}, Lo/y;->a(Lo/B;Lo/B;)I

    move-result v0

    return v0
.end method
