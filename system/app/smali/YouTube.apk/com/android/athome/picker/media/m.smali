.class final Lcom/android/athome/picker/media/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/athome/picker/media/l;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 109
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/v;->e()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, Lcom/android/athome/picker/media/v;->a(Landroid/content/Context;)Lcom/android/athome/picker/media/v;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 114
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/v;->c(I)Lcom/android/athome/picker/media/z;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1, p2, p3}, Lcom/android/athome/picker/media/v;->a(Ljava/lang/CharSequence;Z)Lcom/android/athome/picker/media/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 256
    check-cast p1, Lcom/android/athome/picker/media/x;

    if-nez p2, :cond_22

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    iget-object v0, p1, Lcom/android/athome/picker/media/x;->d:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/v;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_26

    iget-object v2, p1, Lcom/android/athome/picker/media/x;->d:Lcom/android/athome/picker/media/v;

    invoke-virtual {v2, v0}, Lcom/android/athome/picker/media/v;->c(I)Lcom/android/athome/picker/media/z;

    move-result-object v2

    iget-object v3, v2, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    if-ne v3, p1, :cond_1f

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_22
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_9

    :cond_26
    return-object p2
.end method

.method public final a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1, p2, p3}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/b;)V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    check-cast p1, Lcom/android/athome/picker/media/v;

    check-cast p3, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1, p2, p3}, Lcom/android/athome/picker/media/v;->a(ILcom/android/athome/picker/media/z;)V

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/support/v4/app/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-static {}, Lcom/android/athome/picker/media/v;->c()V

    .line 135
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/athome/picker/media/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 129
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/b;)V

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/athome/picker/media/d;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 368
    check-cast p1, Lcom/android/athome/picker/media/aa;

    new-instance v0, Lcom/android/athome/picker/media/ab;

    invoke-direct {v0, p2, p1}, Lcom/android/athome/picker/media/ab;-><init>(Lcom/android/athome/picker/media/d;Lcom/android/athome/picker/media/z;)V

    iput-object v0, p1, Lcom/android/athome/picker/media/aa;->m:Lcom/android/athome/picker/media/ab;

    .line 369
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 208
    check-cast p1, Lcom/android/athome/picker/media/aa;

    iput-object p2, p1, Lcom/android/athome/picker/media/aa;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/aa;->d()V

    .line 209
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p1, Lcom/android/athome/picker/media/v;

    check-cast p2, Lcom/android/athome/picker/media/aa;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/aa;)V

    .line 147
    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 162
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/v;->d()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/v;->b()Lcom/android/athome/picker/media/z;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 213
    check-cast p1, Lcom/android/athome/picker/media/aa;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/aa;->a(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    check-cast p1, Lcom/android/athome/picker/media/v;

    check-cast p2, Lcom/android/athome/picker/media/aa;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/v;->b(Lcom/android/athome/picker/media/aa;)V

    .line 153
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 183
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/z;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 167
    check-cast p1, Lcom/android/athome/picker/media/v;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/v;->b(I)Lcom/android/athome/picker/media/x;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 172
    check-cast p1, Lcom/android/athome/picker/media/v;

    check-cast p2, Lcom/android/athome/picker/media/x;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/x;)Lcom/android/athome/picker/media/aa;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 188
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/z;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 236
    check-cast p1, Lcom/android/athome/picker/media/y;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/y;->a(I)V

    .line 237
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 218
    check-cast p1, Lcom/android/athome/picker/media/y;

    check-cast p2, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/y;->a(Lcom/android/athome/picker/media/z;)V

    .line 220
    return-void
.end method

.method public final e(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 193
    check-cast p1, Lcom/android/athome/picker/media/z;

    iget v0, p1, Lcom/android/athome/picker/media/z;->d:I

    return v0
.end method

.method public final e(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 246
    check-cast p1, Lcom/android/athome/picker/media/y;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/y;->b(I)Lcom/android/athome/picker/media/z;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 230
    check-cast p1, Lcom/android/athome/picker/media/y;

    check-cast p2, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/y;->b(Lcom/android/athome/picker/media/z;)V

    .line 232
    return-void
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 198
    check-cast p1, Lcom/android/athome/picker/media/z;

    iget-object v0, p1, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 323
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/z;->c(I)V

    .line 324
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 303
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/z;->a(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 203
    check-cast p1, Lcom/android/athome/picker/media/z;

    iget-object v0, p1, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 373
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/z;->d(I)V

    .line 374
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 241
    check-cast p1, Lcom/android/athome/picker/media/y;

    iget-object v0, p1, Lcom/android/athome/picker/media/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 343
    check-cast p1, Lcom/android/athome/picker/media/aa;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/athome/picker/media/aa;->g()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Lcom/android/athome/picker/media/aa;->j:I

    if-eq v1, v0, :cond_23

    iput v0, p1, Lcom/android/athome/picker/media/aa;->j:I

    iget-object v0, p1, Lcom/android/athome/picker/media/aa;->a:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/media/v;->c(Lcom/android/athome/picker/media/z;)V

    iget-object v0, p1, Lcom/android/athome/picker/media/aa;->e:Lcom/android/athome/picker/media/y;

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/android/athome/picker/media/aa;->e:Lcom/android/athome/picker/media/y;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/y;->c()V

    .line 344
    :cond_23
    return-void
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 251
    check-cast p1, Lcom/android/athome/picker/media/x;

    iget-object v0, p1, Lcom/android/athome/picker/media/x;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 348
    check-cast p1, Lcom/android/athome/picker/media/aa;

    iget v0, p1, Lcom/android/athome/picker/media/aa;->i:I

    if-eq v0, p2, :cond_8

    iput p2, p1, Lcom/android/athome/picker/media/aa;->i:I

    .line 349
    :cond_8
    return-void
.end method

.method public final j(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 353
    check-cast p1, Lcom/android/athome/picker/media/aa;

    iget v0, p1, Lcom/android/athome/picker/media/aa;->h:I

    if-eq v0, p2, :cond_8

    iput p2, p1, Lcom/android/athome/picker/media/aa;->h:I

    .line 354
    :cond_8
    return-void
.end method

.method public final j(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 266
    check-cast p1, Lcom/android/athome/picker/media/x;

    iget-boolean v0, p1, Lcom/android/athome/picker/media/x;->c:Z

    return v0
.end method

.method public final k(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter

    .prologue
    .line 288
    check-cast p1, Lcom/android/athome/picker/media/z;

    iget-object v0, p1, Lcom/android/athome/picker/media/z;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 358
    check-cast p1, Lcom/android/athome/picker/media/aa;

    iget v0, p1, Lcom/android/athome/picker/media/aa;->l:I

    if-eq v0, p2, :cond_8

    iput p2, p1, Lcom/android/athome/picker/media/aa;->l:I

    .line 359
    :cond_8
    return-void
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 308
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/z;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 313
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/z;->f()I

    move-result v0

    return v0
.end method

.method public final n(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/android/athome/picker/media/z;

    invoke-virtual {p1}, Lcom/android/athome/picker/media/z;->g()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 328
    check-cast p1, Lcom/android/athome/picker/media/z;

    iget v0, p1, Lcom/android/athome/picker/media/z;->l:I

    return v0
.end method

.method public final p(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 333
    check-cast p1, Lcom/android/athome/picker/media/z;

    iget v0, p1, Lcom/android/athome/picker/media/z;->h:I

    return v0
.end method

.method public final q(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 378
    instance-of v0, p1, Lcom/android/athome/picker/media/z;

    return v0
.end method

.method public final r(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 393
    instance-of v0, p1, Lcom/android/athome/picker/media/x;

    return v0
.end method
