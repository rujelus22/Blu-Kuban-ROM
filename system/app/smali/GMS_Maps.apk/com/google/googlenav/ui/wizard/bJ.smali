.class public Lcom/google/googlenav/ui/wizard/bj;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/wizard/bp;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 92
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->f:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 153
    :goto_a
    return-void

    .line 150
    :cond_b
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    const v0, 0x7f1000b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bj;)V
    .registers 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bj;->g()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bj;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bj;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const v1, 0x7f100031

    const v2, 0x7f100030

    const/4 v4, 0x0

    .line 157
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    .line 158
    :goto_e
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 160
    :goto_14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 161
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v1, Lcom/google/googlenav/ui/wizard/bk;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/bk;-><init>(Lcom/google/googlenav/ui/wizard/bj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->d:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 177
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 178
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v1, Lcom/google/googlenav/ui/wizard/bl;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/bl;-><init>(Lcom/google/googlenav/ui/wizard/bj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    :cond_4e
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    return-void

    :cond_59
    move v0, v2

    .line 157
    goto :goto_e

    :cond_5b
    move v2, v1

    .line 158
    goto :goto_14
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/bj;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bj;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    new-instance v0, Lcom/google/googlenav/ui/wizard/bp;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/bp;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/bp;->a:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iput-object p2, v0, Lcom/google/googlenav/ui/wizard/bp;->b:Ljava/lang/CharSequence;

    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    if-eqz p3, :cond_2c

    :goto_13
    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/bp;->c:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    if-eqz p4, :cond_33

    :goto_19
    iput-object p4, v0, Lcom/google/googlenav/ui/wizard/bp;->d:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iput-boolean p5, v0, Lcom/google/googlenav/ui/wizard/bp;->e:Z

    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iput-object p6, v0, Lcom/google/googlenav/ui/wizard/bp;->f:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iput-boolean p7, v0, Lcom/google/googlenav/ui/wizard/bp;->g:Z

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iput-object p8, v0, Lcom/google/googlenav/ui/wizard/bp;->h:Lcom/google/googlenav/ui/wizard/bn;

    .line 256
    return-void

    .line 250
    :cond_2c
    const/16 v1, 0x362

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_13

    .line 251
    :cond_33
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_19
.end method

.method private g()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    if-nez v0, :cond_8

    .line 321
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->a()V

    .line 329
    :cond_7
    :goto_7
    return-void

    .line 322
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/wizard/bp;->e:Z

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->h:Lcom/google/googlenav/ui/wizard/bn;

    if-eqz v0, :cond_22

    .line 324
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    .line 325
    :goto_1b
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bp;->h:Lcom/google/googlenav/ui/wizard/bn;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/bn;->c(Z)V

    .line 327
    :cond_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->a()V

    goto :goto_7

    .line 324
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_1b
.end method


# virtual methods
.method public T_()V
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    .line 306
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->a()V

    .line 307
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    .line 308
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->j()V

    .line 309
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 336
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 337
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->h()V

    .line 339
    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bj;->g:I

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 347
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bj;->g:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct/range {p0 .. p8}, Lcom/google/googlenav/ui/wizard/bj;->b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->j()V

    .line 242
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 264
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/wizard/bj;->b(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 268
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iput-object v4, v0, Lcom/google/googlenav/ui/wizard/bp;->d:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->j()V

    .line 270
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 277
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bj;->g:I

    .line 278
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_8

    .line 295
    :goto_7
    return-void

    .line 285
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->e()Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 288
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->h:Lcom/google/googlenav/ui/view/android/bb;

    new-instance v1, Lcom/google/googlenav/ui/wizard/bm;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/bm;-><init>(Lcom/google/googlenav/ui/wizard/bj;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    goto :goto_7
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    .line 300
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 301
    return-void
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/V;
    .registers 2

    .prologue
    .line 95
    new-instance v0, Lcom/google/googlenav/ui/wizard/bo;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/bo;-><init>(Lcom/google/googlenav/ui/wizard/bj;Lcom/google/googlenav/ui/g;)V

    return-object v0
.end method

.method public f()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bp;->h:Lcom/google/googlenav/ui/wizard/bn;

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 208
    :goto_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bj;->a()V

    .line 209
    if-eqz v1, :cond_13

    .line 210
    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/bn;->a(Z)V

    .line 212
    :cond_13
    return-void

    .line 207
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_b
.end method

.method public h()V
    .registers 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bj;->g()V

    .line 317
    return-void
.end method
