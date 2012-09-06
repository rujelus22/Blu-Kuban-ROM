.class Lcom/google/googlenav/ui/view/android/am;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/ak;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ak;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/am;->b:Lcom/google/googlenav/ui/view/android/ak;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/am;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/am;->b:Lcom/google/googlenav/ui/view/android/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/android/ak;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/am;->a:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/V;->d(I)V

    .line 152
    return-void
.end method
