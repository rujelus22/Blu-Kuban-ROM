.class final Lahg;
.super Lahe;
.source "LocalCache.java"

# interfaces
.implements LagU;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lahe",
        "<TK;TV;>;",
        "LagU",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field a:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILagU;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1211
    invoke-direct {p0, p1, p2, p3}, Lahe;-><init>(Ljava/lang/Object;ILagU;)V

    .line 1216
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lahg;->a:J

    .line 1228
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahg;->a:LagU;

    .line 1241
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahg;->b:LagU;

    .line 1212
    return-void
.end method


# virtual methods
.method public b()J
    .registers 3

    .prologue
    .line 1220
    iget-wide v0, p0, Lahg;->a:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 1225
    iput-wide p1, p0, Lahg;->a:J

    .line 1226
    return-void
.end method

.method public c(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1238
    iput-object p1, p0, Lahg;->a:LagU;

    .line 1239
    return-void
.end method

.method public d()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1233
    iget-object v0, p0, Lahg;->a:LagU;

    return-object v0
.end method

.method public d(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1251
    iput-object p1, p0, Lahg;->b:LagU;

    .line 1252
    return-void
.end method

.method public e()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v0, p0, Lahg;->b:LagU;

    return-object v0
.end method
