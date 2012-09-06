.class Lam/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Lah/p;

.field final synthetic b:Lam/j;


# direct methods
.method constructor <init>(Lam/j;Lah/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lam/k;->b:Lam/j;

    iput-object p2, p0, Lam/k;->a:Lah/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lam/k;->a:Lah/p;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, Lam/k;->a:Lah/p;

    invoke-interface {v0}, Lah/p;->P_()V

    .line 216
    :cond_9
    iget-object v0, p0, Lam/k;->b:Lam/j;

    invoke-static {v0}, Lam/j;->a(Lam/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 217
    iget-object v0, p0, Lam/k;->b:Lam/j;

    iget-object v1, p0, Lam/k;->a:Lah/p;

    invoke-virtual {v0, v1}, Lam/j;->a(Lah/p;)I

    .line 219
    :cond_1c
    return-void
.end method
