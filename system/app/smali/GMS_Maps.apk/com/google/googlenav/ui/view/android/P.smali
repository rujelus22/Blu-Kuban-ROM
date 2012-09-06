.class Lcom/google/googlenav/ui/view/android/p;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/p;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/p;->a:Lcom/google/googlenav/ui/view/android/j;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/j;->g:Lcom/google/googlenav/ui/g;

    invoke-interface {v0}, Lcom/google/googlenav/ui/g;->h()V

    .line 338
    return-void
.end method
