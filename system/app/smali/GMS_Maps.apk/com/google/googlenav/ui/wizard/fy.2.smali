.class Lcom/google/googlenav/ui/wizard/fY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gg;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fX;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fX;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fX;->e()V

    .line 135
    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 3
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/fX;->a(Lcom/google/googlenav/h;)V

    .line 130
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_d

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 142
    :cond_d
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_d

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 149
    :cond_d
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fY;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->invalidateOptionsMenu()V

    .line 157
    :cond_13
    return-void
.end method
