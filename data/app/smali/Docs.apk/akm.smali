.class final Lakm;
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
    .registers 5
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
    .line 1113
    invoke-direct {p0, p1, p2, p3}, Lakl;-><init>(Ljava/lang/Object;ILaka;)V

    .line 1118
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lakm;->b:Laka;

    .line 1131
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Lakm;->c:Laka;

    .line 1114
    return-void
.end method


# virtual methods
.method public c(Laka;)V
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
    .line 1128
    iput-object p1, p0, Lakm;->b:Laka;

    .line 1129
    return-void
.end method

.method public d()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1123
    iget-object v0, p0, Lakm;->b:Laka;

    return-object v0
.end method

.method public d(Laka;)V
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
    .line 1141
    iput-object p1, p0, Lakm;->c:Laka;

    .line 1142
    return-void
.end method

.method public e()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1136
    iget-object v0, p0, Lakm;->c:Laka;

    return-object v0
.end method
