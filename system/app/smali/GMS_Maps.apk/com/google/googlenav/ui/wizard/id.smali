.class public Lcom/google/googlenav/ui/wizard/id;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/ig;


# direct methods
.method static synthetic a(Lcom/google/googlenav/ui/wizard/id;)Lcom/google/googlenav/ui/wizard/ig;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->a:Lcom/google/googlenav/ui/wizard/ig;

    return-object v0
.end method


# virtual methods
.method public T_()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->a:Lcom/google/googlenav/ui/wizard/ig;

    .line 163
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/id;->a()V

    .line 164
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->a:Lcom/google/googlenav/ui/wizard/ig;

    .line 165
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/id;->j()V

    .line 166
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 184
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 185
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/id;->h()V

    .line 187
    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/id;->g:I

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 195
    iget v0, p0, Lcom/google/googlenav/ui/wizard/id;->g:I

    return v0
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/id;->g:I

    .line 142
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/id;->e()Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->h:Lcom/google/googlenav/ui/view/android/bb;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ie;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ie;-><init>(Lcom/google/googlenav/ui/wizard/id;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 152
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->a:Lcom/google/googlenav/ui/wizard/ig;

    .line 157
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 158
    return-void
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/V;
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lcom/google/googlenav/ui/wizard/ih;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/ih;-><init>(Lcom/google/googlenav/ui/wizard/id;Lcom/google/googlenav/ui/g;)V

    return-object v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->a:Lcom/google/googlenav/ui/wizard/ig;

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/id;->a:Lcom/google/googlenav/ui/wizard/ig;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ig;->a:Lcom/google/googlenav/ui/wizard/if;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/if;->a()V

    .line 176
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/id;->a()V

    .line 177
    return-void
.end method
