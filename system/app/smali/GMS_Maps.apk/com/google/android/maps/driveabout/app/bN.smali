.class public Lcom/google/android/maps/driveabout/app/bn;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/bs;

.field private final b:Lcom/google/android/maps/driveabout/app/br;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZLcom/google/android/maps/driveabout/app/bs;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bn;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f02019e

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/bn;->requestWindowFeature(I)Z

    .line 68
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bn;->setContentView(I)V

    .line 70
    invoke-static {p1}, Lh/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 71
    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    if-eqz v0, :cond_40

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    new-instance v3, Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/bo;-><init>(Lcom/google/android/maps/driveabout/app/bn;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_40
    invoke-static/range {p1 .. p7}, Lcom/google/android/maps/driveabout/app/bn;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZ)[Lcom/google/android/maps/driveabout/app/by;

    move-result-object v3

    .line 87
    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 88
    new-instance v4, Lcom/google/android/maps/driveabout/app/br;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v3, v5}, Lcom/google/android/maps/driveabout/app/br;-><init>(Lcom/google/android/maps/driveabout/app/bn;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/by;Lcom/google/android/maps/driveabout/app/bo;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/app/bn;->b:Lcom/google/android/maps/driveabout/app/br;

    .line 89
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bn;->b:Lcom/google/android/maps/driveabout/app/br;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bn;->b:Lcom/google/android/maps/driveabout/app/br;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iput-object p8, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    .line 93
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bn;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 94
    new-instance v0, Lcom/google/android/maps/driveabout/app/bp;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bp;-><init>(Lcom/google/android/maps/driveabout/app/bn;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    array-length v5, v3

    move v0, v2

    :goto_72
    if-ge v0, v5, :cond_84

    aget-object v6, v3, v0

    .line 103
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v6

    if-eqz v6, :cond_81

    move v0, v1

    .line 108
    :goto_7d
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    return-void

    .line 102
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_84
    move v0, v2

    goto :goto_7d
.end method

.method private static a(Landroid/content/Context;I)Lcom/google/android/maps/driveabout/app/by;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 339
    if-nez p1, :cond_f

    .line 343
    const v1, 0x7f0d003b

    .line 344
    const v0, 0x7f020122

    .line 349
    :goto_8
    new-instance v2, Lcom/google/android/maps/driveabout/app/bt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/google/android/maps/driveabout/app/bt;-><init>(Landroid/content/Context;IILcom/google/android/maps/driveabout/app/bo;)V

    return-object v2

    .line 346
    :cond_f
    const v1, 0x7f0d003e

    .line 347
    const v0, 0x7f020118

    goto :goto_8
.end method

.method private a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    if-eqz v0, :cond_19

    .line 253
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bs;->b(Z)V

    .line 254
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bs;->a(Z)V

    .line 255
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bs;->c(Z)V

    .line 256
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/bs;->a()V

    .line 258
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bn;->dismiss()V

    .line 259
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bn;)V
    .registers 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bn;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bn;Lcom/google/android/maps/driveabout/app/by;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bn;->a(Lcom/google/android/maps/driveabout/app/by;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/by;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    if-eqz v2, :cond_1c

    .line 231
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/bu;

    if-eqz v2, :cond_22

    .line 232
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v2

    if-nez v2, :cond_20

    :goto_10
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Z)V

    .line 233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bs;->b(Z)V

    .line 247
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bn;->dismiss()V

    .line 248
    return-void

    :cond_20
    move v0, v1

    .line 232
    goto :goto_10

    .line 234
    :cond_22
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/bv;

    if-eqz v2, :cond_3b

    .line 235
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v2

    if-nez v2, :cond_39

    :goto_2c
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Z)V

    .line 236
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bs;->a(Z)V

    goto :goto_1c

    :cond_39
    move v0, v1

    .line 235
    goto :goto_2c

    .line 237
    :cond_3b
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/bt;

    if-eqz v2, :cond_54

    .line 238
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v2

    if-nez v2, :cond_52

    :goto_45
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Z)V

    .line 239
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bs;->c(Z)V

    goto :goto_1c

    :cond_52
    move v0, v1

    .line 238
    goto :goto_45

    .line 240
    :cond_54
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/bq;

    if-eqz v2, :cond_6d

    .line 241
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v2

    if-nez v2, :cond_6b

    :goto_5e
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Z)V

    .line 242
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bs;->d(Z)V

    goto :goto_1c

    :cond_6b
    move v0, v1

    .line 241
    goto :goto_5e

    .line 244
    :cond_6d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bs;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/bs;->a(Lcom/google/android/maps/driveabout/app/by;)V

    goto :goto_1c
.end method

.method private static a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/bC;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bC;->j()I

    move-result v0

    if-ge v2, v0, :cond_22

    .line 221
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bC;->d(I)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v1

    .line 222
    instance-of v0, v1, Lcom/google/android/maps/driveabout/app/by;

    if-eqz v0, :cond_1e

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/by;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 224
    check-cast v1, Lcom/google/android/maps/driveabout/app/by;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 227
    :cond_22
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZ)[Lcom/google/android/maps/driveabout/app/by;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-static {p0, p3}, Lcom/google/android/maps/driveabout/app/bn;->a(Landroid/content/Context;I)Lcom/google/android/maps/driveabout/app/by;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p5}, Lcom/google/android/maps/driveabout/app/by;->a(Z)V

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lcom/google/android/maps/driveabout/app/bu;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/bu;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bo;)V

    .line 200
    invoke-virtual {v1, p4}, Lcom/google/android/maps/driveabout/app/bu;->a(Z)V

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v1, 0x3

    if-ne p3, v1, :cond_29

    .line 204
    new-instance v1, Lcom/google/android/maps/driveabout/app/bq;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/bq;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bo;)V

    .line 205
    invoke-virtual {v1, p6}, Lcom/google/android/maps/driveabout/app/bq;->a(Z)V

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_29
    invoke-static {v0, p1, p3}, Lcom/google/android/maps/driveabout/app/bn;->a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/bC;I)V

    .line 213
    invoke-static {v0, p2, p3}, Lcom/google/android/maps/driveabout/app/bn;->a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/bC;I)V

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/app/by;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/by;

    return-object v0
.end method
