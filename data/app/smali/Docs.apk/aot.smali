.class Laot;
.super Ljava/lang/Object;
.source "ConstructorInjector.java"

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

.field final synthetic a:Laos;

.field final synthetic a:Laoy;

.field final synthetic a:Lapb;


# direct methods
.method constructor <init>(Laos;Laoy;Lapb;Laoo;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Laot;->a:Laos;

    iput-object p2, p0, Laot;->a:Laoy;

    iput-object p3, p0, Laot;->a:Lapb;

    iput-object p4, p0, Laot;->a:Laoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Laot;->a:Laos;

    iget-object v1, p0, Laot;->a:Laoy;

    iget-object v2, p0, Laot;->a:Lapb;

    iget-object v3, p0, Laot;->a:Laoo;

    invoke-static {v0, v1, v2, v3}, Laos;->a(Laos;Laoy;Lapb;Laoo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
