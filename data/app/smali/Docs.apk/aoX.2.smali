.class final LaoX;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lapc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapc",
        "<",
        "LanD",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LanD;


# direct methods
.method constructor <init>(LanD;)V
    .registers 2
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, LaoX;->a:LanD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laoy;Lapb;Laqk;Z)LanD;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Laqk;",
            "Z)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, LaoX;->a:LanD;

    return-object v0
.end method

.method public bridge synthetic a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2, p3, p4}, LaoX;->a(Laoy;Lapb;Laqk;Z)LanD;

    move-result-object v0

    return-object v0
.end method
