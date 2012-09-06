.class Lcom/google/googlenav/android/e;
.super Lac/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/d;


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/googlenav/android/e;->a:Lcom/google/googlenav/android/d;

    invoke-static {v0}, Lcom/google/googlenav/android/d;->a(Lcom/google/googlenav/android/d;)Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->a()V

    .line 185
    return-void
.end method
