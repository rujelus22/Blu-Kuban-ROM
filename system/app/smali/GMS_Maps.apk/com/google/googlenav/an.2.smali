.class Lcom/google/googlenav/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/aM;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/googlenav/aN;->a:Lcom/google/googlenav/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/a;Lcom/google/googlenav/a;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p2}, Lcom/google/googlenav/a;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/googlenav/a;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    check-cast p1, Lcom/google/googlenav/a;

    check-cast p2, Lcom/google/googlenav/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/aN;->a(Lcom/google/googlenav/a;Lcom/google/googlenav/a;)I

    move-result v0

    return v0
.end method
