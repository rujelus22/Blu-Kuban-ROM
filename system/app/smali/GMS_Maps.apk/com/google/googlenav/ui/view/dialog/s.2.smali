.class Lcom/google/googlenav/ui/view/dialog/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/R;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/S;->a:Lcom/google/googlenav/ui/view/dialog/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/S;->a:Lcom/google/googlenav/ui/view/dialog/R;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/R;->a(Lcom/google/googlenav/ui/view/dialog/R;)Lcom/google/googlenav/ui/view/dialog/W;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/S;->a:Lcom/google/googlenav/ui/view/dialog/R;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/R;->a(Lcom/google/googlenav/ui/view/dialog/R;)Lcom/google/googlenav/ui/view/dialog/W;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/W;->a()V

    .line 141
    :cond_15
    return-void
.end method
