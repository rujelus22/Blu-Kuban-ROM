.class Lcom/google/googlenav/ui/view/android/bP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/google/googlenav/ui/view/a;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bJ;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/bJ;Lcom/google/googlenav/ui/view/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bP;->b:Lcom/google/googlenav/ui/view/android/bJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bP;->a:Lcom/google/googlenav/ui/view/a;

    .line 417
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->a:Lcom/google/googlenav/ui/view/a;

    if-eqz v0, :cond_1d

    .line 422
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bP;->b:Lcom/google/googlenav/ui/view/android/bJ;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bJ;->E:Lcom/google/googlenav/ui/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bP;->a:Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bP;->a:Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bP;->a:Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 425
    :cond_1d
    return-void
.end method
