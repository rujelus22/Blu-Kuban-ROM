.class Lyl;
.super Ljava/lang/Object;
.source "RedrawManager.java"

# interfaces
.implements Lye;


# instance fields
.field final synthetic a:LvZ;

.field final synthetic a:Lyj;


# direct methods
.method constructor <init>(Lyj;LvZ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lyl;->a:Lyj;

    iput-object p2, p0, Lyl;->a:LvZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lyl;->a:LvZ;

    invoke-interface {v0, p1, p2}, LvZ;->a(II)V

    .line 435
    return-void
.end method

.method public b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lyl;->a:LvZ;

    invoke-interface {v0, p1, p2}, LvZ;->b(II)V

    .line 431
    return-void
.end method
