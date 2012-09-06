.class Lcom/google/googlenav/ui/view/android/al;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/ak;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ak;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/al;->b:Lcom/google/googlenav/ui/view/android/ak;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/al;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->a:Lcom/google/googlenav/ui/g;

    invoke-interface {v0}, Lcom/google/googlenav/ui/g;->h()V

    .line 129
    const/4 v0, 0x1

    return v0
.end method
