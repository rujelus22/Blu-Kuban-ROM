.class public Lcom/google/googlenav/ui/wizard/M;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/Q;

.field private b:Lcom/google/googlenav/ui/wizard/S;

.field private final c:Lcom/google/googlenav/ui/wizard/aE;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/wizard/aE;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    .line 110
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/M;->c:Lcom/google/googlenav/ui/wizard/aE;

    .line 111
    return-void
.end method

.method private a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 211
    if-nez p1, :cond_3

    .line 241
    :cond_2
    :goto_2
    return-void

    .line 215
    :cond_3
    const v0, 0x7f02020d

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 217
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2

    .line 223
    new-instance v1, Lcom/google/googlenav/ui/wizard/P;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/P;-><init>(Lcom/google/googlenav/ui/wizard/M;)V

    .line 240
    invoke-virtual {v0, p1, v1}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/M;Landroid/app/ActionBar;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/M;->a(Landroid/app/ActionBar;)V

    return-void
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    .line 295
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    .line 296
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/M;->a()V

    .line 298
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    .line 299
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/M;->j()V

    .line 300
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 312
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 313
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/M;->h()V

    .line 314
    iget v0, p0, Lcom/google/googlenav/ui/wizard/M;->g:I

    .line 317
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/M;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 322
    iget v0, p0, Lcom/google/googlenav/ui/wizard/M;->g:I

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    .line 119
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 120
    return-void
.end method

.method public b()V
    .registers 8

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 134
    :cond_c
    new-instance v0, Lcom/google/googlenav/ui/wizard/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/Q;->a(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/Q;->a(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->m()LaM/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/Q;->b(Lcom/google/googlenav/ui/wizard/Q;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/M;->c:Lcom/google/googlenav/ui/wizard/aE;

    new-instance v6, Lcom/google/googlenav/ui/wizard/N;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/wizard/N;-><init>(Lcom/google/googlenav/ui/wizard/M;)V

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/S;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/ap;LaM/a;ZLcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    .line 182
    new-instance v0, Lcom/google/googlenav/ui/wizard/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/Q;->c(Lcom/google/googlenav/ui/wizard/Q;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/Q;->d(Lcom/google/googlenav/ui/wizard/Q;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/wizard/am;-><init>(Lcom/google/googlenav/ui/g;ZZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 186
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/S;->a()Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/aB;)V

    .line 189
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/am;)V

    .line 192
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    new-instance v1, Lcom/google/googlenav/ui/wizard/O;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/O;-><init>(Lcom/google/googlenav/ui/wizard/M;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 204
    :cond_73
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/Q;->e(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/h;)V

    .line 208
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    if-eqz v0, :cond_c

    .line 246
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/am;)V

    .line 247
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    .line 250
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_17

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/aB;)V

    .line 255
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    if-eqz v0, :cond_2a

    .line 260
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/Q;->a(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->d()V

    .line 263
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    .line 267
    :cond_2a
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 268
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/Q;->f(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/wizard/R;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 276
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/Q;->f(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/wizard/R;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/R;->a()V

    .line 278
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/M;->a()V

    .line 279
    return-void
.end method

.method f()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/Q;->f(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/wizard/R;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/Q;->f(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/wizard/R;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/R;->b()V

    .line 289
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/M;->a()V

    .line 290
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->b:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/S;->b()Z

    move-result v0

    if-nez v0, :cond_14

    .line 305
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/M;->f()V

    .line 306
    const-string v0, "cy"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    .line 308
    :cond_14
    return-void
.end method
