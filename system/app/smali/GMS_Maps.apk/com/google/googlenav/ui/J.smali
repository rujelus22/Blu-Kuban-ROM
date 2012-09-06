.class final Lcom/google/googlenav/ui/j;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/V;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/V;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/googlenav/ui/j;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/googlenav/ui/j;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->r()Lcom/google/googlenav/ui/g;

    move-result-object v0

    const/16 v1, 0xdd

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 331
    return-void
.end method
