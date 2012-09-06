.class final Lcom/anddoes/launcher/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/bm;

.field private b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/anddoes/launcher/bo;->a:Lcom/anddoes/launcher/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method


# virtual methods
.method final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 702
    iput p1, p0, Lcom/anddoes/launcher/bo;->b:I

    .line 703
    return-void
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/anddoes/launcher/bo;->a:Lcom/anddoes/launcher/bm;

    invoke-static {v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bm;)Lcom/anddoes/launcher/bv;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 690
    iget v0, p0, Lcom/anddoes/launcher/bo;->b:I

    if-nez v0, :cond_29

    .line 691
    iget-object v0, p0, Lcom/anddoes/launcher/bo;->a:Lcom/anddoes/launcher/bm;

    invoke-static {v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bm;)Lcom/anddoes/launcher/bv;

    move-result-object v0

    invoke-interface {v0}, Lcom/anddoes/launcher/bv;->b_()V

    .line 695
    :goto_15
    iget-object v0, p0, Lcom/anddoes/launcher/bo;->a:Lcom/anddoes/launcher/bm;

    invoke-static {v0}, Lcom/anddoes/launcher/bm;->b(Lcom/anddoes/launcher/bm;)V

    .line 696
    iget-object v0, p0, Lcom/anddoes/launcher/bo;->a:Lcom/anddoes/launcher/bm;

    invoke-static {v0}, Lcom/anddoes/launcher/bm;->c(Lcom/anddoes/launcher/bm;)V

    .line 697
    iget-object v0, p0, Lcom/anddoes/launcher/bo;->a:Lcom/anddoes/launcher/bm;

    invoke-static {v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bm;)Lcom/anddoes/launcher/bv;

    move-result-object v0

    invoke-interface {v0}, Lcom/anddoes/launcher/bv;->d()Z

    .line 699
    :cond_28
    return-void

    .line 693
    :cond_29
    iget-object v0, p0, Lcom/anddoes/launcher/bo;->a:Lcom/anddoes/launcher/bm;

    invoke-static {v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bm;)Lcom/anddoes/launcher/bv;

    move-result-object v0

    invoke-interface {v0}, Lcom/anddoes/launcher/bv;->c_()V

    goto :goto_15
.end method
