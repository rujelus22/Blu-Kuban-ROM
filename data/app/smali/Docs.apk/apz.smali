.class final Lapz;
.super Ljava/lang/Object;
.source "ProviderToInternalFactoryAdapter.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LanD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:LaoP;

.field private final a:Lapc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapc",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LaoP;Lapc;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaoP;",
            "Lapc",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lapz;->a:LaoP;

    .line 34
    iput-object p2, p0, Lapz;->a:Lapc;

    .line 35
    return-void
.end method

.method static synthetic a(Lapz;)Lapc;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lapz;->a:Lapc;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Laoy;

    invoke-direct {v1}, Laoy;-><init>()V

    .line 40
    :try_start_5
    iget-object v0, p0, Lapz;->a:LaoP;

    new-instance v2, LapA;

    invoke-direct {v2, p0, v1}, LapA;-><init>(Lapz;Laoy;)V

    invoke-virtual {v0, v2}, LaoP;->a(Laov;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoy;->a(I)V
    :try_end_14
    .catch LaoE; {:try_start_5 .. :try_end_14} :catch_15

    .line 50
    return-object v0

    .line 51
    :catch_15
    move-exception v0

    .line 52
    new-instance v2, LanF;

    invoke-virtual {v0}, LaoE;->a()Laoy;

    move-result-object v0

    invoke-virtual {v1, v0}, Laoy;->a(Laoy;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, LanF;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lapz;->a:Lapc;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
