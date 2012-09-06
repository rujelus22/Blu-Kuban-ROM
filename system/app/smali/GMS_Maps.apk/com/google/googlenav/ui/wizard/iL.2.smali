.class Lcom/google/googlenav/ui/wizard/iL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iK;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iK;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 160
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/iN;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/iN;-><init>(Lcom/google/googlenav/ui/wizard/iL;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 167
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/iM;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/iM;-><init>(Lcom/google/googlenav/ui/wizard/iL;Ljava/util/List;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 154
    return-void
.end method
