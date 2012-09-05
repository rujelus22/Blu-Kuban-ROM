.class public Lcom/google/googlenav/ui/android/FloorPickerView;
.super Landroid/widget/ListView;

# interfaces
.implements LaE/m;
.implements LaY/ad;
.implements Lr/n;


# instance fields
.field private a:I

.field private b:Lt/q;

.field private c:Lr/l;

.field private d:I

.field private volatile e:Lt/y;

.field private f:Lcom/google/googlenav/ui/D;

.field private g:Lcom/google/googlenav/ui/android/H;

.field private h:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->h:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->h:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/FloorPickerView;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->smoothScrollToPosition(I)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setSelection(I)V

    goto :goto_10
.end method

.method private a(I)V
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Lcom/google/googlenav/ui/android/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/H;->notifyDataSetChanged()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/I;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/I;->a()Lt/u;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lt/u;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Lr/l;

    if-eqz v1, :cond_4

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Lr/l;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    invoke-virtual {v0, v1}, Lr/l;->a(Lt/q;)V

    goto :goto_4

    :cond_2c
    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Lr/l;

    invoke-virtual {v0}, Lt/u;->a()Lt/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr/l;->a(Lt/y;)V

    goto :goto_4
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/android/A;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/A;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/FloorPickerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/FloorPickerView;Lt/q;Lt/y;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lt/q;Lt/y;)V

    return-void
.end method

.method private a(Lt/q;Lt/y;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lt/q;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Lt/q;Lt/y;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a()V

    goto :goto_7
.end method

.method private static a(Lt/u;)V
    .registers 4

    if-nez p0, :cond_12

    const-string v0, "none"

    :goto_4
    const-string v1, "l"

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x68

    const-string v2, "s"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_12
    invoke-virtual {p0}, Lt/u;->b()Lt/r;

    move-result-object v0

    invoke-virtual {v0}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic a(Lt/q;Lt/q;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Lt/q;Lt/q;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/FloorPickerView;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    return v0
.end method

.method private static b(Lt/q;Lt/y;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-nez p1, :cond_11

    invoke-virtual {p0}, Lt/q;->d()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    :cond_d
    :goto_d
    if-ltz v1, :cond_3

    move v0, v1

    goto :goto_3

    :cond_11
    invoke-virtual {p0, p1}, Lt/q;->b(Lt/y;)I

    move-result v1

    if-ltz v1, :cond_d

    invoke-virtual {p0}, Lt/q;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    move v1, v0

    goto :goto_d
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Lt/y;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Lt/y;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Lt/q;Lt/y;)I

    move-result v0

    :cond_12
    iget v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Lcom/google/googlenav/ui/android/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/H;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method private b(Lt/q;)V
    .registers 5

    const-string v0, "b"

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v1}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x68

    const-string v2, "f"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static b(Lt/q;Lt/q;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lt/q;->a()Lt/r;

    move-result-object v0

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/FloorPickerView;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->h:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->J()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, LaY/aG;

    if-eqz v2, :cond_13

    check-cast v0, LaY/aG;

    invoke-virtual {v0}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v2

    const/4 v0, 0x0

    :goto_28
    invoke-interface {v2}, Lcom/google/googlenav/E;->f()I

    move-result v3

    if-ge v0, v3, :cond_13

    invoke-interface {v2, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/D;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v4, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->h:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Lcom/google/googlenav/ui/android/H;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Lcom/google/googlenav/ui/android/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/H;->notifyDataSetChanged()V

    :cond_49
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/android/FloorPickerView;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/android/FloorPickerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/android/FloorPickerView;)Lt/q;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    return-object v0
.end method


# virtual methods
.method public a(ILaE/h;)V
    .registers 3

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 5

    invoke-virtual {p2}, LaE/h;->A()Lt/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Lt/y;

    invoke-static {v1, v0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Lcom/google/googlenav/ui/android/F;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/android/F;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lt/y;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public a(LaY/i;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->c()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/D;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_14

    invoke-static {v1}, Lz/a;->a([I)Lz/a;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, LaY/Y;->a(LaY/ad;Lz/a;)V

    return-void

    :array_14
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public a(Lr/l;)V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/android/D;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/android/D;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lr/l;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lr/l;Lt/q;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/android/E;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/ui/android/E;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lr/l;Lt/q;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Lt/q;)V
    .registers 9

    const-wide/16 v5, 0x1f4

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Lt/q;Lt/q;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    iput v2, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    iput v2, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lt/q;->d()Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v1

    :goto_23
    invoke-virtual {p1}, Lt/q;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_5e

    iput-object p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/android/B;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/B;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/google/googlenav/ui/android/H;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/android/H;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Landroid/content/Context;Lt/q;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Lcom/google/googlenav/ui/android/H;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Lcom/google/googlenav/ui/android/H;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b()V

    :cond_5e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Lt/q;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/android/C;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/C;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_f

    :cond_81
    const/4 v0, 0x2

    goto :goto_23
.end method

.method a(Lt/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Lt/y;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b()V

    return-void
.end method

.method public b(LaY/i;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->c()V

    return-void
.end method

.method public b(Lr/l;)V
    .registers 2

    return-void
.end method

.method public c(LaY/i;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->c()V

    return-void
.end method

.method c(Lr/l;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Lr/l;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lr/l;)V

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Lr/l;

    invoke-virtual {v0, p0}, Lr/l;->a(Lr/n;)V

    return-void
.end method

.method d(Lr/l;)V
    .registers 4

    invoke-virtual {p1}, Lr/l;->b()Lt/q;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_12

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Lt/q;)V

    invoke-virtual {v1}, Lt/q;->a()Lt/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr/l;->a(Lt/r;)Lt/y;

    move-result-object v0

    :cond_12
    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lt/q;Lt/y;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    new-instance v0, Lcom/google/googlenav/ui/android/G;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/G;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
