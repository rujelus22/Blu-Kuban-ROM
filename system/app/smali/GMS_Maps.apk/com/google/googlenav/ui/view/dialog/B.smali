.class Lcom/google/googlenav/ui/view/dialog/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/b;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 117
    if-eqz p2, :cond_14

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/b;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/b;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :goto_13
    return-void

    .line 121
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/b;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/b;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13
.end method
