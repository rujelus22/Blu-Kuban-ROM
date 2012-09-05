.class final LaM/q;
.super Ljava/lang/Object;

# interfaces
.implements Lar/d;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    check-cast p1, LaM/m;

    invoke-virtual {p1}, LaM/m;->f()J

    move-result-wide v0

    check-cast p2, LaM/m;

    invoke-virtual {p2}, LaM/m;->f()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, -0x1

    goto :goto_11

    :cond_18
    const/4 v0, 0x1

    goto :goto_11
.end method
