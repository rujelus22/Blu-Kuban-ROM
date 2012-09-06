.class public LHU;
.super Ljava/lang/Object;
.source "SharingListElementComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "LQC;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ldw;Ldw;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    if-ne p1, p2, :cond_4

    .line 66
    :cond_3
    :goto_3
    return v0

    .line 60
    :cond_4
    sget-object v1, Ldw;->a:Ldw;

    if-ne p1, v1, :cond_a

    .line 61
    const/4 v0, -0x1

    goto :goto_3

    .line 62
    :cond_a
    sget-object v1, Ldw;->a:Ldw;

    if-ne p2, v1, :cond_3

    .line 63
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private a(Ldx;Ldx;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 70
    if-ne p1, p2, :cond_6

    .line 86
    :cond_5
    :goto_5
    return v0

    .line 74
    :cond_6
    sget-object v3, Ldx;->d:Ldx;

    if-ne p1, v3, :cond_c

    move v0, v1

    .line 75
    goto :goto_5

    .line 76
    :cond_c
    sget-object v3, Ldx;->d:Ldx;

    if-ne p2, v3, :cond_12

    move v0, v2

    .line 77
    goto :goto_5

    .line 80
    :cond_12
    sget-object v3, Ldx;->c:Ldx;

    if-ne p1, v3, :cond_18

    move v0, v1

    .line 81
    goto :goto_5

    .line 82
    :cond_18
    sget-object v1, Ldx;->c:Ldx;

    if-ne p2, v1, :cond_5

    move v0, v2

    .line 83
    goto :goto_5
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    if-ne p1, p2, :cond_4

    .line 91
    const/4 v0, 0x0

    .line 101
    :goto_3
    return v0

    .line 94
    :cond_4
    if-nez p1, :cond_8

    .line 95
    const-string p1, ""

    .line 97
    :cond_8
    if-nez p2, :cond_c

    .line 98
    const-string p2, ""

    .line 101
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public a(LQC;LQC;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 28
    if-ne p1, p2, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 50
    :cond_3
    :goto_3
    return v0

    .line 32
    :cond_4
    invoke-virtual {p1}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v0

    invoke-virtual {p2}, LQC;->a()LQl;

    move-result-object v1

    invoke-virtual {v1}, LQl;->a()Ldw;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LHU;->a(Ldw;Ldw;)I

    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 38
    invoke-virtual {p1}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ldx;

    move-result-object v0

    invoke-virtual {p2}, LQC;->a()LQl;

    move-result-object v1

    invoke-virtual {v1}, LQl;->a()Ldx;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LHU;->a(Ldx;Ldx;)I

    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 44
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v0

    invoke-interface {v0}, LPh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LQC;->a()LPh;

    move-result-object v1

    invoke-interface {v1}, LPh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LHU;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v0

    invoke-interface {v0}, LPh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LQC;->a()LPh;

    move-result-object v1

    invoke-interface {v1}, LPh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LHU;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p1, LQC;

    check-cast p2, LQC;

    invoke-virtual {p0, p1, p2}, LHU;->a(LQC;LQC;)I

    move-result v0

    return v0
.end method
