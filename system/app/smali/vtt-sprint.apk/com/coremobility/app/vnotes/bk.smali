.class public final Lcom/coremobility/app/vnotes/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 12

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lcom/coremobility/app/vnotes/bj;

    check-cast p2, Lcom/coremobility/app/vnotes/bj;

    invoke-virtual {p1}, Lcom/coremobility/app/vnotes/bj;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/coremobility/app/vnotes/bj;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/coremobility/app/vnotes/bj;->b()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/coremobility/app/vnotes/bj;->b()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    cmp-long v4, v4, v6

    if-lez v4, :cond_21

    move v0, v1

    goto :goto_1a

    :cond_21
    if-lt v2, v3, :cond_1a

    if-le v2, v3, :cond_27

    move v0, v1

    goto :goto_1a

    :cond_27
    const/4 v0, 0x0

    goto :goto_1a
.end method
