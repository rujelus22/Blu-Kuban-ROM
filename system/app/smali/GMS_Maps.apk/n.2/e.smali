.class public LN/e;
.super LN/f;
.source "SourceFile"


# static fields
.field private static b:LN/e;


# instance fields
.field private final c:Lcom/google/googlenav/ui/v;

.field private d:Ljava/util/TreeSet;

.field private e:Lcom/google/android/maps/driveabout/vector/g;

.field private f:Lcom/google/android/maps/driveabout/vector/d;

.field private g:LN/c;


# direct methods
.method public static b()LN/e;
    .registers 1

    .prologue
    .line 145
    sget-object v0, LN/e;->b:LN/e;

    return-object v0
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 152
    sget-object v0, LN/e;->b:LN/e;

    if-eqz v0, :cond_a

    sget-object v0, LN/e;->b:LN/e;

    iget-object v0, v0, LN/e;->a:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_c

    .line 153
    :cond_a
    const/4 v0, 0x0

    .line 155
    :goto_b
    return v0

    :cond_c
    sget-object v0, LN/e;->b:LN/e;

    iget-object v0, v0, LN/e;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Ld/a;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    goto :goto_b
.end method

.method private f()V
    .registers 8

    .prologue
    .line 218
    invoke-static {}, Lcom/google/common/collect/dm;->c()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    .line 221
    iget-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    iget-object v1, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v1

    invoke-static {v1}, LN/a;->a(Lat/u;)LN/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, LN/e;->e:Lcom/google/android/maps/driveabout/vector/g;

    if-eqz v0, :cond_51

    iget-object v0, p0, LN/e;->f:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->e()Ln/Q;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 225
    iget-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    iget-object v1, p0, LN/e;->e:Lcom/google/android/maps/driveabout/vector/g;

    iget-object v2, p0, LN/e;->f:Lcom/google/android/maps/driveabout/vector/d;

    iget-object v3, p0, LN/e;->g:LN/c;

    iget-object v4, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, LN/a;->a(Lcom/google/android/maps/driveabout/vector/g;Lcom/google/android/maps/driveabout/vector/d;LN/c;Lat/u;)LN/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, LN/e;->f:Lcom/google/android/maps/driveabout/vector/d;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cl;

    if-nez v0, :cond_51

    .line 230
    iget-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    iget-object v1, p0, LN/e;->e:Lcom/google/android/maps/driveabout/vector/g;

    iget-object v2, p0, LN/e;->f:Lcom/google/android/maps/driveabout/vector/d;

    iget-object v3, p0, LN/e;->g:LN/c;

    iget-object v4, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, LN/a;->b(Lcom/google/android/maps/driveabout/vector/g;Lcom/google/android/maps/driveabout/vector/d;LN/c;Lat/u;)LN/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_51
    iget-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    iget-object v1, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    iget-object v2, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v2

    invoke-static {v1, v2}, LN/a;->a(Lcom/google/googlenav/ui/ap;Lat/u;)LN/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->J()Ljava/util/Vector;

    move-result-object v4

    .line 242
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_77
    if-ltz v3, :cond_c9

    .line 243
    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 244
    const/4 v1, 0x0

    move v2, v1

    :goto_81
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    if-ge v2, v1, :cond_c5

    .line 245
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v5

    if-eqz v5, :cond_a9

    iget-object v5, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v6

    invoke-virtual {v5, v6}, Lat/u;->d(Lat/B;)Z

    move-result v5

    if-nez v5, :cond_ad

    .line 244
    :cond_a9
    :goto_a9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_81

    .line 255
    :cond_ad
    invoke-interface {v1}, Lcom/google/googlenav/E;->d()I

    move-result v5

    if-nez v5, :cond_a9

    .line 256
    iget-object v5, p0, LN/e;->d:Ljava/util/TreeSet;

    check-cast v1, Lcom/google/googlenav/ai;

    iget-object v6, p0, LN/e;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v6

    invoke-static {v1, v6}, LN/a;->a(Lcom/google/googlenav/ai;Lat/u;)LN/a;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 242
    :cond_c5
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_77

    .line 261
    :cond_c9
    return-void
.end method


# virtual methods
.method protected a(LN/a;)I
    .registers 3
    .parameter

    .prologue
    .line 338
    if-nez p1, :cond_4

    .line 339
    const/4 v0, -0x1

    .line 341
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, LN/a;->c()I

    move-result v0

    goto :goto_3
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 52
    check-cast p1, LN/a;

    invoke-virtual {p0, p1}, LN/e;->a(LN/a;)I

    move-result v0

    return v0
.end method

.method protected a(LN/a;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 168
    if-nez p1, :cond_8

    .line 171
    const-string v0, " "

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    :goto_7
    return-void

    .line 173
    :cond_8
    invoke-virtual {p1}, LN/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method protected a(LN/a;Ld/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 180
    if-nez p1, :cond_4

    .line 189
    :goto_3
    return-void

    .line 184
    :cond_4
    invoke-virtual {p1}, LN/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld/f;->c(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p2, v1}, Ld/f;->a(Z)V

    .line 186
    invoke-virtual {p2, v1}, Ld/f;->c(Z)V

    .line 187
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ld/f;->a(I)V

    .line 188
    invoke-virtual {p1}, LN/a;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld/f;->b(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p1, LN/a;

    invoke-virtual {p0, p1, p2}, LN/e;->a(LN/a;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ld/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p1, LN/a;

    invoke-virtual {p0, p1, p2}, LN/e;->a(LN/a;Ld/f;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    if-nez v0, :cond_7

    .line 195
    invoke-direct {p0}, LN/e;->f()V

    .line 198
    :cond_7
    iget-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    return-void
.end method

.method protected a(LN/a;ILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p1, LN/a;

    invoke-virtual {p0, p1, p2, p3}, LN/e;->a(LN/a;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected b(I)LN/a;
    .registers 5
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, LN/e;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN/a;

    .line 350
    invoke-virtual {v0}, LN/a;->c()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 354
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected synthetic c(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, LN/e;->b(I)LN/a;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 362
    invoke-direct {p0}, LN/e;->f()V

    .line 363
    invoke-virtual {p0}, LN/e;->e()V

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/e;->b(I)LN/a;

    move-result-object v0

    .line 367
    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, LN/e;->a(Ljava/lang/Object;I)V

    .line 368
    return-void
.end method
