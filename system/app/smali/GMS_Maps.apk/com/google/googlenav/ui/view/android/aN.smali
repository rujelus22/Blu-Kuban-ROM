.class Lcom/google/googlenav/ui/view/android/an;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bd;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/ak;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ak;Lcom/google/googlenav/ui/bd;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/an;->b:Lcom/google/googlenav/ui/view/android/ak;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/an;->a:Lcom/google/googlenav/ui/bd;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/an;->b:Lcom/google/googlenav/ui/view/android/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/android/ak;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/an;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ah;->a(Lcom/google/googlenav/ui/aQ;)Z

    .line 169
    return-void
.end method
