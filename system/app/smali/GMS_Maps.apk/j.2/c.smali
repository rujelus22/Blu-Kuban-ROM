.class Lj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Landroid/util/Pair;

.field public b:Ln/am;

.field public c:Lj/b;


# direct methods
.method public constructor <init>(Landroid/util/Pair;Ln/am;Lj/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p1, p0, Lj/c;->a:Landroid/util/Pair;

    .line 749
    iput-object p2, p0, Lj/c;->b:Ln/am;

    .line 750
    iput-object p3, p0, Lj/c;->c:Lj/b;

    .line 751
    return-void
.end method


# virtual methods
.method public a(Lj/c;)I
    .registers 5
    .parameter

    .prologue
    .line 759
    iget-object v0, p0, Lj/c;->c:Lj/b;

    iget-wide v0, v0, Lj/b;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lj/c;->c:Lj/b;

    iget-wide v1, v1, Lj/b;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 741
    check-cast p1, Lj/c;

    invoke-virtual {p0, p1}, Lj/c;->a(Lj/c;)I

    move-result v0

    return v0
.end method
