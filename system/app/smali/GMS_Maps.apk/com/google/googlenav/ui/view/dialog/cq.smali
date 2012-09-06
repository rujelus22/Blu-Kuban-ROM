.class Lcom/google/googlenav/ui/view/dialog/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/co;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/co;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cq;->a:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cq;->a:Lcom/google/googlenav/ui/view/dialog/co;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/co;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->f()V

    .line 138
    return-void
.end method
