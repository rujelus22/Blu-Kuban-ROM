.class LapA;
.super Ljava/lang/Object;
.source "ProviderToInternalFactoryAdapter.java"

# interfaces
.implements Laov;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laov",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laoy;

.field final synthetic a:Lapz;


# direct methods
.method constructor <init>(Lapz;Laoy;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, LapA;->a:Lapz;

    iput-object p2, p0, LapA;->a:Laoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lapb;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Lapb;->a()Laqk;

    move-result-object v0

    .line 46
    iget-object v1, p0, LapA;->a:Lapz;

    invoke-static {v1}, Lapz;->a(Lapz;)Lapc;

    move-result-object v1

    iget-object v2, p0, LapA;->a:Laoy;

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v0, v3}, Lapc;->a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
