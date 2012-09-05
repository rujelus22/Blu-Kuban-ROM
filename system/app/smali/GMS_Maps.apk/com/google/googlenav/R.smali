.class final Lcom/google/googlenav/R;
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
    .registers 7

    check-cast p1, Lcom/google/googlenav/T;

    check-cast p2, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/T;->s()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/googlenav/T;->s()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
