.class Lapv;
.super Ljava/lang/Object;
.source "ProviderInternalFactory.java"

# interfaces
.implements LapF;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LapF",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laoo;

.field final synthetic a:Laoy;

.field final synthetic a:Lapu;

.field final synthetic a:Laqk;

.field final synthetic a:LasT;


# direct methods
.method constructor <init>(Lapu;LasT;Laoy;Laqk;Laoo;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lapv;->a:Lapu;

    iput-object p2, p0, Lapv;->a:LasT;

    iput-object p3, p0, Lapv;->a:Laoy;

    iput-object p4, p0, Lapv;->a:Laqk;

    iput-object p5, p0, Lapv;->a:Laoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lapv;->a:Lapu;

    iget-object v1, p0, Lapv;->a:LasT;

    iget-object v2, p0, Lapv;->a:Laoy;

    iget-object v3, p0, Lapv;->a:Laqk;

    iget-object v4, p0, Lapv;->a:Laoo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lapu;->a(LasT;Laoy;Laqk;Laoo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
