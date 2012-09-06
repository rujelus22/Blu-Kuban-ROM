.class public Lcom/google/googlenav/ui/wizard/eh;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/googlenav/ui/wizard/el;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 36
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/el;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/el;

    .line 120
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eh;->a()V

    .line 121
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eh;->a(Lcom/google/googlenav/ui/wizard/el;)V

    .line 122
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/el;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/el;

    .line 45
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eh;->j()V

    .line 46
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 54
    new-instance v0, Lcom/google/googlenav/ui/wizard/ec;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ei;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ei;-><init>(Lcom/google/googlenav/ui/wizard/eh;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/ec;-><init>(Lcom/google/googlenav/ui/wizard/eg;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->I()Lcom/google/googlenav/friend/j;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/ek;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ek;-><init>(Lcom/google/googlenav/ui/wizard/eh;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/j;->a(Lcom/google/googlenav/friend/k;)V

    .line 97
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/el;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/el;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/el;->a()V

    .line 107
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/el;

    .line 108
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 109
    return-void
.end method
