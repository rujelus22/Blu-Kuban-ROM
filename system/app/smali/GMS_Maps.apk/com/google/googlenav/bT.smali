.class Lcom/google/googlenav/bT;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bS;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bT;->a:Lcom/google/googlenav/bS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bV;Lcom/google/googlenav/bV;)I
    .registers 7

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/googlenav/bV;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/bN;->a(JJ)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/googlenav/bV;

    check-cast p2, Lcom/google/googlenav/bV;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/bT;->a(Lcom/google/googlenav/bV;Lcom/google/googlenav/bV;)I

    move-result v0

    return v0
.end method
