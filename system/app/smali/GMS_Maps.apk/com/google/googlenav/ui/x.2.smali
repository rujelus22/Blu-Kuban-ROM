.class Lcom/google/googlenav/ui/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 5718
    iput-object p1, p0, Lcom/google/googlenav/ui/X;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5718
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/X;-><init>(Lcom/google/googlenav/ui/v;)V

    return-void
.end method

.method private c(Lac/g;)Z
    .registers 3
    .parameter

    .prologue
    .line 5772
    invoke-interface {p1}, Lac/g;->h_()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5773
    const/4 v0, 0x0

    .line 5775
    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lac/g;->g()Z

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 5760
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5748
    const/4 v0, 0x7

    if-ne p1, v0, :cond_14

    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5751
    iget-object v0, p0, Lcom/google/googlenav/ui/X;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 5754
    :cond_14
    return-void
.end method

.method public a(Lac/g;)V
    .registers 5
    .parameter

    .prologue
    .line 5722
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/X;->c(Lac/g;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5723
    const/4 v0, 0x0

    .line 5724
    iget-object v1, p0, Lcom/google/googlenav/ui/X;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v1}, Lcom/google/googlenav/ui/v;->g(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/Y;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/Y;-><init>(Lcom/google/googlenav/ui/X;Lac/g;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 5731
    :cond_15
    return-void
.end method

.method public b(Lac/g;)V
    .registers 5
    .parameter

    .prologue
    .line 5735
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/X;->c(Lac/g;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5736
    const/4 v0, 0x0

    .line 5737
    iget-object v1, p0, Lcom/google/googlenav/ui/X;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v1}, Lcom/google/googlenav/ui/v;->g(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/Z;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/Z;-><init>(Lcom/google/googlenav/ui/X;Lac/g;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 5744
    :cond_15
    return-void
.end method
