.class final Lakv;
.super Lakt;
.source "MapMakerInternalMap.java"

# interfaces
.implements Laka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lakt",
        "<TK;TV;>;",
        "Laka",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field b:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILaka;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1579
    invoke-direct {p0, p1, p2, p3, p4}, Lakt;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILaka;)V

    .line 1584
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lakv;->a:J

    .line 1596
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lakv;->b:Laka;

    .line 1609
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lakv;->c:Laka;

    .line 1580
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 1588
    iget-wide v0, p0, Lakv;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1593
    iput-wide p1, p0, Lakv;->a:J

    .line 1594
    return-void
.end method

.method public a(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1606
    iput-object p1, p0, Lakv;->b:Laka;

    .line 1607
    return-void
.end method

.method public b()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1601
    iget-object v0, p0, Lakv;->b:Laka;

    return-object v0
.end method

.method public b(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1619
    iput-object p1, p0, Lakv;->c:Laka;

    .line 1620
    return-void
.end method

.method public c()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1614
    iget-object v0, p0, Lakv;->c:Laka;

    return-object v0
.end method
