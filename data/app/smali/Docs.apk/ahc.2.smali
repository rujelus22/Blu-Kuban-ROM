.class final Lahc;
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
    .line 1164
    invoke-direct {p0, p1, p2, p3}, Lahe;-><init>(Ljava/lang/Object;ILagU;)V

    .line 1169
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lahc;->a:J

    .line 1181
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahc;->a:LagU;

    .line 1194
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahc;->b:LagU;

    .line 1165
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 1173
    iget-wide v0, p0, Lahc;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1178
    iput-wide p1, p0, Lahc;->a:J

    .line 1179
    return-void
.end method

.method public a(LagU;)V
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
    .line 1191
    iput-object p1, p0, Lahc;->a:LagU;

    .line 1192
    return-void
.end method

.method public b()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Lahc;->a:LagU;

    return-object v0
.end method

.method public b(LagU;)V
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
    .line 1204
    iput-object p1, p0, Lahc;->b:LagU;

    .line 1205
    return-void
.end method

.method public c()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lahc;->b:LagU;

    return-object v0
.end method
