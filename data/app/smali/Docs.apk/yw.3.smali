.class Lyw;
.super Ljava/lang/Object;
.source "SpanList.java"

# interfaces
.implements LFs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFs",
        "<",
        "LyD",
        "<TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:LBj;

.field final synthetic a:Lyu;


# direct methods
.method constructor <init>(Lyu;LBj;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lyw;->a:Lyu;

    iput-object p2, p0, Lyw;->a:LBj;

    iput p3, p0, Lyw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LFr;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lyw;->a(LFr;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(LFr;I)Ljava/lang/Void;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;I)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-static {p1}, Lyu;->a(LFr;)LBj;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lyw;->a:LBj;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lyw;->a:LBj;

    invoke-interface {v1, v0}, LBj;->a(LBj;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 97
    :cond_11
    iget v0, p0, Lyw;->a:I

    invoke-interface {p1, v0}, LFr;->a(I)V

    .line 117
    :goto_16
    return-object v3

    .line 102
    :cond_17
    if-nez p2, :cond_3b

    .line 103
    invoke-interface {p1}, LFr;->b()LFr;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lyw;->a:Lyu;

    invoke-static {v1}, Lyu;->a(Lyu;)LEY;

    move-result-object v1

    invoke-virtual {v1}, LEY;->b()LFb;

    move-result-object v1

    if-eq v0, v1, :cond_47

    iget-object v1, p0, Lyw;->a:LBj;

    invoke-static {v0}, Lyu;->a(LFr;)LBj;

    move-result-object v2

    invoke-interface {v1, v2}, LBj;->a(LBj;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 106
    iget v1, p0, Lyw;->a:I

    invoke-interface {v0, v1}, LFr;->a(I)V

    goto :goto_16

    .line 112
    :cond_3b
    invoke-static {p1}, Lyu;->a(LFr;)LBj;

    move-result-object v0

    invoke-interface {v0}, LBj;->a()LyD;

    move-result-object v0

    .line 113
    invoke-interface {p1, p2, v0}, LFr;->a(ILjava/lang/Object;)LFr;

    move-result-object p1

    .line 115
    :cond_47
    iget-object v0, p0, Lyw;->a:LBj;

    invoke-interface {v0}, LBj;->a()LyD;

    move-result-object v0

    .line 116
    iget v1, p0, Lyw;->a:I

    invoke-interface {p1, v0, v1}, LFr;->a(Ljava/lang/Object;I)LFr;

    goto :goto_16
.end method
