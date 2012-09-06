.class public Lcom/google/googlenav/ui/wizard/iT;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# static fields
.field private static final a:I


# instance fields
.field private b:Lcom/google/googlenav/ai;

.field private final c:Landroid/content/Context;

.field private final i:Landroid/content/pm/PackageManager;

.field private final j:Ljava/util/ArrayList;

.field private k:J

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/wizard/iT;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 76
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->j:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->i:Landroid/content/pm/PackageManager;

    .line 87
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iT;->c:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 375
    :cond_14
    const/4 v0, 0x0

    .line 381
    :goto_15
    return v0

    .line 376
    :cond_16
    const-string v1, "mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 377
    const/4 v0, 0x1

    goto :goto_15

    .line 378
    :cond_20
    const-string v1, "com.facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 379
    const/4 v0, 0x2

    goto :goto_15

    .line 381
    :cond_2a
    const/16 v0, 0x64

    goto :goto_15
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iT;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 426
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 427
    const/4 v0, 0x0

    move v6, v0

    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_8a

    .line 428
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 431
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 435
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 436
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 437
    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 438
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/iT;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 442
    new-instance v3, LT/f;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v5}, LT/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    sget v5, Lcom/google/googlenav/ui/wizard/iT;->a:I

    if-eq v4, v5, :cond_63

    .line 444
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    sget v8, Lcom/google/googlenav/ui/wizard/iT;->a:I

    mul-int/2addr v5, v8

    div-int/2addr v5, v4

    .line 445
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    sget v8, Lcom/google/googlenav/ui/wizard/iT;->a:I

    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    .line 446
    invoke-interface {v3, v5, v0}, LS/f;->a(II)LS/f;

    move-result-object v3

    .line 448
    :cond_63
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/iT;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v3, LT/f;

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/16 v4, 0x642

    invoke-direct {v5, v4, v6, v2}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    .line 452
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_7

    .line 454
    :cond_8a
    return-object v7
.end method

.method private a(ILcom/google/googlenav/ui/wizard/iZ;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->b:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_26

    .line 216
    new-instance v2, Lcom/google/googlenav/ui/wizard/iY;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->b:Lcom/google/googlenav/ai;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/googlenav/ui/wizard/iY;-><init>(Lcom/google/googlenav/ui/wizard/iT;Lcom/google/googlenav/ai;ILcom/google/googlenav/ui/wizard/iZ;)V

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 219
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 226
    :goto_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iT;->a()V

    .line 227
    return-void

    .line 223
    :cond_26
    const-string v0, "SHARE WIZARD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/iT;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/iT;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method


# virtual methods
.method public T_()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->b:Lcom/google/googlenav/ai;

    .line 133
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iT;->a()V

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/iT;->a(Lcom/google/googlenav/ai;)V

    .line 135
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iT;->b:Lcom/google/googlenav/ai;

    .line 94
    if-nez p1, :cond_b

    .line 95
    const-string v0, "SHARE WIZARD"

    const-string v1, "activated with null"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_b
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/iT;->l:J

    .line 98
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 99
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    const/16 v0, 0x642

    if-ne p1, v0, :cond_22

    .line 388
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 391
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/iT;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/iU;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/wizard/iU;-><init>(Lcom/google/googlenav/ui/wizard/iT;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/iT;->a(ILcom/google/googlenav/ui/wizard/iZ;)V

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iT;->e()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 108
    const/16 v0, 0x642

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iT;->a(IILjava/lang/Object;)Z

    .line 121
    :cond_12
    :goto_12
    return-void

    .line 112
    :cond_13
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iT;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-nez v1, :cond_12

    .line 119
    new-instance v1, Lcom/google/googlenav/ui/wizard/iX;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/iX;-><init>(Lcom/google/googlenav/ui/wizard/iT;Ljava/util/List;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iT;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    goto :goto_12
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->b:Lcom/google/googlenav/ai;

    .line 127
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/iT;->k:J

    .line 128
    return-void
.end method

.method protected e()Ljava/util/List;
    .registers 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iT;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iT;->i:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/iT;->a(Landroid/content/Intent;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 191
    return-object v0
.end method
