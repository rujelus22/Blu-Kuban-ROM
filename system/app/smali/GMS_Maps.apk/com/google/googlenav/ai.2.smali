.class final Lcom/google/googlenav/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/o;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ah;)Ljava/lang/Long;
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/googlenav/ah;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/ah;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
