.class LQB;
.super Ljava/lang/Object;
.source "SharingListAdapter.java"

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
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LQA;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, LQB;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 64
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method


# virtual methods
.method public a(LQC;LQC;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    if-ne p1, p2, :cond_4

    .line 38
    const/4 v0, 0x0

    .line 60
    :cond_3
    :goto_3
    return v0

    .line 40
    :cond_4
    if-nez p1, :cond_8

    .line 41
    const/4 v0, 0x1

    goto :goto_3

    .line 43
    :cond_8
    if-nez p2, :cond_c

    .line 44
    const/4 v0, -0x1

    goto :goto_3

    .line 46
    :cond_c
    invoke-virtual {p1}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ldw;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, LQC;->a()LQl;

    move-result-object v1

    invoke-virtual {v1}, LQl;->a()Ldw;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ldw;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 52
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v0

    invoke-interface {v0}, LPh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LQB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, LQC;->a()LPh;

    move-result-object v1

    invoke-interface {v1}, LPh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LQB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 58
    invoke-virtual {p1}, LQC;->a()LPh;

    move-result-object v0

    invoke-interface {v0}, LPh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LQB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, LQC;->a()LPh;

    move-result-object v1

    invoke-interface {v1}, LPh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LQB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    check-cast p1, LQC;

    check-cast p2, LQC;

    invoke-virtual {p0, p1, p2}, LQB;->a(LQC;LQC;)I

    move-result v0

    return v0
.end method
