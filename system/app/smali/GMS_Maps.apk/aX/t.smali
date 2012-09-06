.class final Lax/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lax/A;Lax/A;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Lax/A;->u()J

    move-result-wide v0

    .line 56
    invoke-virtual {p2}, Lax/A;->u()J

    move-result-wide v2

    .line 57
    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_d
    return v0

    :cond_e
    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_d

    :cond_14
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p1, Lax/A;

    check-cast p2, Lax/A;

    invoke-virtual {p0, p1, p2}, Lax/t;->a(Lax/A;Lax/A;)I

    move-result v0

    return v0
.end method
