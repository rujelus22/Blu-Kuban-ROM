.class public abstract Lhr;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lhq;)Lhj;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lhq;",
            ")",
            "Lhj",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lhr;->a(Lnd;Lhq;)Lhj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lnd;Lhq;)Lhj;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lhr;->a(Ljava/lang/Class;Lhq;)Lhj;

    move-result-object v0

    return-object v0
.end method

.method public b(Lnd;Lhq;)Lhu;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
