.class final Lakn;
.super Lakl;
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
        "Lakl",
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
.method constructor <init>(Ljava/lang/Object;ILaka;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1066
    invoke-direct {p0, p1, p2, p3}, Lakl;-><init>(Ljava/lang/Object;ILaka;)V

    .line 1071
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lakn;->a:J

    .line 1083
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lakn;->b:Laka;

    .line 1096
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lakn;->c:Laka;

    .line 1067
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 1075
    iget-wide v0, p0, Lakn;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1080
    iput-wide p1, p0, Lakn;->a:J

    .line 1081
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
    .line 1093
    iput-object p1, p0, Lakn;->b:Laka;

    .line 1094
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
    .line 1088
    iget-object v0, p0, Lakn;->b:Laka;

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
    .line 1106
    iput-object p1, p0, Lakn;->c:Laka;

    .line 1107
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
    .line 1101
    iget-object v0, p0, Lakn;->c:Laka;

    return-object v0
.end method
