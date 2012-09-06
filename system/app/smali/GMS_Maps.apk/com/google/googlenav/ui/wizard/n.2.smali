.class Lcom/google/googlenav/ui/wizard/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/ac;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/M;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/M;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/M;->e()V

    .line 146
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/M;->f()V

    .line 151
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 158
    :cond_d
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 165
    :cond_d
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/N;->a:Lcom/google/googlenav/ui/wizard/M;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->invalidateOptionsMenu()V

    .line 173
    :cond_13
    return-void
.end method
