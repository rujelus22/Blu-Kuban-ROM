.class Lcom/google/googlenav/ui/wizard/gk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/actionbar/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gk;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 3
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public a(LaI/w;)Z
    .registers 4
    .parameter

    .prologue
    .line 310
    invoke-virtual {p1}, LaI/w;->g()Ljava/lang/String;

    move-result-object v0

    .line 311
    if-nez v0, :cond_8

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_7
    return v0

    .line 316
    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gk;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/gj;->b(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()V
    .registers 1

    .prologue
    .line 306
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gk;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gj;->a(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    return v0
.end method
