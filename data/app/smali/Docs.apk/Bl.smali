.class LBl;
.super Lyt;
.source "TableStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyt",
        "<",
        "LBo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LBk;


# direct methods
.method constructor <init>(LBk;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, LBl;->a:LBk;

    invoke-direct {p0}, Lyt;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, LBl;->a()LBk;

    move-result-object v0

    return-object v0
.end method

.method public a()LBk;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, LBl;->a:LBk;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 32
    new-instance v0, LAT;

    iget-object v1, p0, LBl;->a:LBk;

    invoke-virtual {v1, p1}, LBk;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, LBl;->a:LBk;

    invoke-static {v2}, LBk;->a(LBk;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LAT;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
