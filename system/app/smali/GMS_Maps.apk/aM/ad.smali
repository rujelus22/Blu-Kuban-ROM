.class LaM/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/ac;


# direct methods
.method constructor <init>(LaM/ac;)V
    .registers 2
    .parameter

    .prologue
    .line 1800
    iput-object p1, p0, LaM/ad;->a:LaM/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1804
    iget-object v0, p0, LaM/ad;->a:LaM/ac;

    iget-object v0, v0, LaM/ac;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->ax()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1813
    :goto_a
    return-void

    .line 1807
    :cond_b
    iget-object v0, p0, LaM/ad;->a:LaM/ac;

    iget-object v0, v0, LaM/ac;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->ag()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1808
    iget-object v0, p0, LaM/ad;->a:LaM/ac;

    iget-object v0, v0, LaM/ac;->a:LaM/X;

    invoke-static {v0}, LaM/X;->d(LaM/X;)V

    .line 1812
    :goto_1c
    iget-object v0, p0, LaM/ad;->a:LaM/ac;

    invoke-static {v0}, LaM/ac;->a(LaM/ac;)Lcom/google/googlenav/ui/friend/C;

    move-result-object v0

    iget-object v1, p0, LaM/ad;->a:LaM/ac;

    iget-object v1, v1, LaM/ac;->a:LaM/X;

    invoke-virtual {v1}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v1

    iget-object v2, p0, LaM/ad;->a:LaM/ac;

    iget-object v2, v2, LaM/ac;->a:LaM/X;

    invoke-virtual {v2}, LaM/X;->bH()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/friend/C;->a(Lcom/google/googlenav/friend/aM;J)V

    goto :goto_a

    .line 1810
    :cond_36
    iget-object v0, p0, LaM/ad;->a:LaM/ac;

    iget-object v0, v0, LaM/ac;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->bG()V

    goto :goto_1c
.end method
