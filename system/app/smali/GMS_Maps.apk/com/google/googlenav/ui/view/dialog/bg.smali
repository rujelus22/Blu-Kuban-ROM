.class Lcom/google/googlenav/ui/view/dialog/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/be;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/be;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bg;->a:Lcom/google/googlenav/ui/view/dialog/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bg;->a:Lcom/google/googlenav/ui/view/dialog/be;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/be;->b(Lcom/google/googlenav/ui/view/dialog/be;)LaM/bU;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/bU;->a(IILjava/lang/Object;)Z

    .line 119
    return-void
.end method
