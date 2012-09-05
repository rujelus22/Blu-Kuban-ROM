.class Lp/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Lp/e;

.field public b:Lt/af;

.field public c:Lp/b;


# direct methods
.method public constructor <init>(Lp/e;Lt/af;Lp/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/c;->a:Lp/e;

    iput-object p2, p0, Lp/c;->b:Lt/af;

    iput-object p3, p0, Lp/c;->c:Lp/b;

    return-void
.end method


# virtual methods
.method public a(Lp/c;)I
    .registers 5

    iget-object v0, p0, Lp/c;->c:Lp/b;

    iget-wide v0, v0, Lp/b;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lp/c;->c:Lp/b;

    iget-wide v1, v1, Lp/b;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lp/c;

    invoke-virtual {p0, p1}, Lp/c;->a(Lp/c;)I

    move-result v0

    return v0
.end method
