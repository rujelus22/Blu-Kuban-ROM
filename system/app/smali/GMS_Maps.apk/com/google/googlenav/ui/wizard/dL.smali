.class Lcom/google/googlenav/ui/wizard/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/da;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/di;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/di;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/di;Lcom/google/googlenav/ui/wizard/dj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dl;-><init>(Lcom/google/googlenav/ui/wizard/di;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 281
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/dialog/bd;-><init>()V

    const/16 v1, 0x26f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x281

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x27e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x280

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x27a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v1

    .line 289
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aY;

    const v2, 0x7f02020f

    new-instance v4, Lcom/google/googlenav/ui/wizard/do;

    invoke-direct {v4, p0, v3}, Lcom/google/googlenav/ui/wizard/do;-><init>(Lcom/google/googlenav/ui/wizard/dl;Lcom/google/googlenav/ui/wizard/dj;)V

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/di;->d(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/J;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v5

    invoke-virtual {v5}, Lah/o;->b()Lah/s;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/aY;-><init>(Lcom/google/googlenav/ui/view/dialog/bd;ILjava/lang/String;Lcom/google/googlenav/ui/view/dialog/bc;Lcom/google/googlenav/friend/ah;Lah/s;)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/V;)V
    .registers 3
    .parameter

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/V;->show()V

    .line 270
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_10

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 273
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/di;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 274
    return-void
.end method

.method private b(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;
    .registers 9
    .parameter

    .prologue
    .line 303
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/dialog/bd;-><init>()V

    const/16 v1, 0x222

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x2ab

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x2a9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x2aa

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v0

    const/16 v1, 0x2a7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bd;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/bd;

    move-result-object v1

    .line 311
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aY;

    const v2, 0x7f020210

    const-string v3, "location_graphic.png"

    new-instance v4, Lcom/google/googlenav/ui/wizard/do;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/googlenav/ui/wizard/do;-><init>(Lcom/google/googlenav/ui/wizard/dl;Lcom/google/googlenav/ui/wizard/dj;)V

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/di;->d(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/J;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v5

    invoke-virtual {v5}, Lah/o;->b()Lah/s;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/aY;-><init>(Lcom/google/googlenav/ui/view/dialog/bd;ILjava/lang/String;Lcom/google/googlenav/ui/view/dialog/bc;Lcom/google/googlenav/friend/ah;Lah/s;)V

    return-object v0
.end method

.method private c(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;
    .registers 4
    .parameter

    .prologue
    .line 327
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aO;

    new-instance v1, Lcom/google/googlenav/ui/wizard/dm;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dm;-><init>(Lcom/google/googlenav/ui/wizard/dl;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aO;-><init>(Lcom/google/googlenav/ui/view/dialog/aS;)V

    return-object v0
.end method

.method private d(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;
    .registers 6
    .parameter

    .prologue
    .line 352
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aT;

    new-instance v1, Lcom/google/googlenav/ui/wizard/dn;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dn;-><init>(Lcom/google/googlenav/ui/wizard/dl;)V

    invoke-virtual {p1}, Lcom/google/googlenav/friend/ah;->b()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/friend/ah;->j()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/aT;-><init>(Lcom/google/googlenav/ui/view/dialog/aX;ZZ)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dl;->b(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V

    .line 201
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->a(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/db;

    move-result-object v0

    if-eq v0, p1, :cond_1e

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/di;->a(Lcom/google/googlenav/ui/wizard/di;Lcom/google/googlenav/ui/wizard/db;)Lcom/google/googlenav/ui/wizard/db;

    .line 209
    sget-object v0, Lcom/google/googlenav/ui/wizard/dj;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/di;->a(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/db;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/db;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b0

    .line 263
    :cond_1e
    :goto_1e
    :pswitch_1e
    return-void

    .line 214
    :pswitch_1f
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/dl;->a(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dl;->a(Lcom/google/googlenav/ui/view/android/V;)V

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    goto :goto_1e

    .line 219
    :pswitch_2e
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/dl;->c(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dl;->a(Lcom/google/googlenav/ui/view/android/V;)V

    goto :goto_1e

    .line 223
    :pswitch_36
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/dl;->b(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dl;->a(Lcom/google/googlenav/ui/view/android/V;)V

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    goto :goto_1e

    .line 228
    :pswitch_45
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/dl;->d(Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dl;->a(Lcom/google/googlenav/ui/view/android/V;)V

    goto :goto_1e

    .line 234
    :pswitch_4d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x167

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->b(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/cX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cX;->d()V

    goto :goto_1e

    .line 246
    :pswitch_72
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->c(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/dk;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->c(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/dk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dk;->b()V

    .line 250
    :cond_8a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/di;->a()V

    goto :goto_1e

    .line 254
    :pswitch_90
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/di;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->c(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/dk;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 256
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/di;->c(Lcom/google/googlenav/ui/wizard/di;)Lcom/google/googlenav/ui/wizard/dk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dk;->a()V

    .line 258
    :cond_a8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dl;->a:Lcom/google/googlenav/ui/wizard/di;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/di;->a()V

    goto/16 :goto_1e

    .line 209
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1f
        :pswitch_2e
        :pswitch_36
        :pswitch_45
        :pswitch_4d
        :pswitch_72
        :pswitch_90
    .end packed-switch
.end method
