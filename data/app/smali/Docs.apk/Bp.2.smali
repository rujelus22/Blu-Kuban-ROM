.class LBp;
.super Lyt;
.source "UnsupportedStyle.java"


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
.field final synthetic a:LBo;


# direct methods
.method constructor <init>(LBo;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, LBp;->a:LBo;

    invoke-direct {p0}, Lyt;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, LBp;->a()LBo;

    move-result-object v0

    return-object v0
.end method

.method public a()LBo;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, LBp;->a:LBo;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 65
    new-instance v0, LAU;

    iget-object v1, p0, LBp;->a:LBo;

    invoke-virtual {v1, p1}, LBo;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, LAU;-><init>(Landroid/view/View;)V

    return-object v0
.end method
