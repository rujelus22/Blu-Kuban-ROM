.class Lcom/google/googlenav/ui/view/dialog/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bn;->a:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bn;->a:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bm;->dismiss()V

    .line 67
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/bm;->i()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->q(Z)V

    .line 70
    return-void
.end method
