.class Lcom/google/googlenav/ui/view/dialog/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bv;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bv;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bx;->a:Lcom/google/googlenav/ui/view/dialog/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bx;->a:Lcom/google/googlenav/ui/view/dialog/bv;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bv;->b:LaM/m;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 132
    return-void
.end method
