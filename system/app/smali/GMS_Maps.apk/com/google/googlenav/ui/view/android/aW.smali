.class Lcom/google/googlenav/ui/view/android/aw;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/av;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/av;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aw;->b:Lcom/google/googlenav/ui/view/android/av;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/aw;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aw;->b:Lcom/google/googlenav/ui/view/android/av;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aw;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/av;->a(Lcom/google/googlenav/ui/view/android/av;I)V

    .line 75
    return-void
.end method
