.class public Lcom/google/googlenav/ui/wizard/hi;
.super Lcom/google/googlenav/ui/wizard/z;


# static fields
.field private static final a:I


# instance fields
.field private g:Lcom/google/googlenav/ah;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/pm/PackageManager;

.field private final j:Ljava/util/ArrayList;

.field private k:J

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/wizard/hi;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->i:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hi;->h:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const-string v1, "mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    goto :goto_15

    :cond_20
    const-string v1, "com.facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x2

    goto :goto_15

    :cond_2a
    const/16 v0, 0x64

    goto :goto_15
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hi;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->h:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Ljava/util/List;)Ljava/util/List;
    .registers 12

    const/4 v2, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_8a

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hi;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v3, Lai/f;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v5}, Lai/f;-><init>(Landroid/graphics/Bitmap;)V

    sget v5, Lcom/google/googlenav/ui/wizard/hi;->a:I

    if-eq v4, v5, :cond_63

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    sget v8, Lcom/google/googlenav/ui/wizard/hi;->a:I

    mul-int/2addr v5, v8

    div-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    sget v8, Lcom/google/googlenav/ui/wizard/hi;->a:I

    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    invoke-interface {v3, v5, v0}, Lah/f;->a(II)Lah/f;

    move-result-object v3

    :cond_63
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hi;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    check-cast v3, Lai/f;

    new-instance v5, Lbb/a;

    const/16 v4, 0x642

    invoke-direct {v5, v4, v6, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_7

    :cond_8a
    return-object v7
.end method

.method private a(ILcom/google/googlenav/ui/wizard/ho;)V
    .registers 10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->g:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_26

    new-instance v2, Lcom/google/googlenav/ui/wizard/hn;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->g:Lcom/google/googlenav/ah;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/googlenav/ui/wizard/hn;-><init>(Lcom/google/googlenav/ui/wizard/hi;Lcom/google/googlenav/ah;ILcom/google/googlenav/ui/wizard/ho;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    :goto_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hi;->a()V

    return-void

    :cond_26
    const-string v0, "SHARE WIZARD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/hi;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/hi;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_22
.end method


# virtual methods
.method public W_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->g:Lcom/google/googlenav/ah;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hi;->a()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hi;->a(Lcom/google/googlenav/ah;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hi;->g:Lcom/google/googlenav/ah;

    if-nez p1, :cond_b

    const-string v0, "SHARE WIZARD"

    const-string v1, "activated with null"

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/hi;->l:J

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/16 v0, 0x642

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/hi;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/hj;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/wizard/hj;-><init>(Lcom/google/googlenav/ui/wizard/hi;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/hi;->a(ILcom/google/googlenav/ui/wizard/ho;)V

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected b()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hi;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const/16 v0, 0x642

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hi;->a(IILjava/lang/Object;)Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hi;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/googlenav/ui/wizard/hm;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/hm;-><init>(Lcom/google/googlenav/ui/wizard/hi;Ljava/util/List;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hi;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_12
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->g:Lcom/google/googlenav/ah;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/hi;->k:J

    return-void
.end method

.method protected e()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hi;->i:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/hi;->a(Landroid/content/Intent;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
