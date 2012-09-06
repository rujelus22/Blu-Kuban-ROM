.class public Lcom/google/googlenav/mylocationnotifier/l;
.super Lcom/google/googlenav/mylocationnotifier/a;
.source "SourceFile"


# instance fields
.field private final f:[Lcom/google/googlenav/ai;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private i:Lcom/google/googlenav/mylocationnotifier/d;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/mylocationnotifier/k;Ljava/lang/String;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p2}, Lcom/google/googlenav/mylocationnotifier/a;-><init>(Lcom/google/googlenav/mylocationnotifier/k;)V

    .line 54
    iput-object p3, p0, Lcom/google/googlenav/mylocationnotifier/l;->g:Ljava/lang/String;

    .line 55
    iput-boolean p4, p0, Lcom/google/googlenav/mylocationnotifier/l;->h:Z

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 58
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    move v1, v2

    .line 59
    :goto_13
    if-ge v1, v3, :cond_27

    .line 60
    iget-object v4, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;B)Lcom/google/googlenav/ai;

    move-result-object v0

    aput-object v0, v4, v1

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 65
    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    new-instance v1, Lcom/google/googlenav/mylocationnotifier/q;

    invoke-direct {v1, p0}, Lcom/google/googlenav/mylocationnotifier/q;-><init>(Lcom/google/googlenav/mylocationnotifier/l;)V

    aput-object v1, v0, v3

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/mylocationnotifier/l;Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/mylocationnotifier/d;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/l;->i:Lcom/google/googlenav/mylocationnotifier/d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/mylocationnotifier/l;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/mylocationnotifier/l;Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/mylocationnotifier/l;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/o;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/mylocationnotifier/o;-><init>(Lcom/google/googlenav/mylocationnotifier/l;I)V

    .line 182
    new-instance v1, Lcom/google/googlenav/f;

    invoke-direct {v1, v0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 184
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/mylocationnotifier/l;)[Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/mylocationnotifier/l;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/googlenav/mylocationnotifier/l;->m()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/mylocationnotifier/l;)Lcom/google/googlenav/mylocationnotifier/d;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->i:Lcom/google/googlenav/mylocationnotifier/d;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/mylocationnotifier/l;)Z
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->h:Z

    return v0
.end method

.method private m()V
    .registers 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/l;->l()V

    .line 191
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/mylocationnotifier/p;

    invoke-direct {v1, p0}, Lcom/google/googlenav/mylocationnotifier/p;-><init>(Lcom/google/googlenav/mylocationnotifier/l;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/googlenav/actionbar/b;)V

    .line 230
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->d()Z

    .line 231
    return-void
.end method

.method private n()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 274
    iget-boolean v1, p0, Lcom/google/googlenav/mylocationnotifier/l;->h:Z

    if-eqz v1, :cond_12

    .line 275
    const/16 v0, 0x2db

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_11
    return-object v0

    .line 277
    :cond_12
    if-gt v0, v2, :cond_27

    .line 278
    const/16 v1, 0x2d5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 281
    :cond_27
    const/16 v1, 0x2d4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 262
    :goto_a
    if-ge p1, v1, :cond_23

    .line 263
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_20

    .line 265
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 268
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 244
    const/4 v0, 0x1

    .line 245
    new-instance v1, Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/google/googlenav/mylocationnotifier/l;-><init>(Ljava/util/List;Lcom/google/googlenav/mylocationnotifier/k;Ljava/lang/String;Z)V

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    .line 248
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    array-length v1, v1

    if-gt v1, v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-nez v0, :cond_41

    .line 79
    sget-object v0, Lcom/google/googlenav/mylocationnotifier/l;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/mylocationnotifier/HeaderView;

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const v1, 0x7f10001e

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/mylocationnotifier/l;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/mylocationnotifier/l;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/l;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    const v2, 0x7f1001ab

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/mylocationnotifier/l;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/mylocationnotifier/l;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    new-instance v1, Lcom/google/googlenav/mylocationnotifier/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/mylocationnotifier/m;-><init>(Lcom/google/googlenav/mylocationnotifier/l;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/HeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_41
    return-void
.end method

.method protected c()Landroid/widget/ListAdapter;
    .registers 4

    .prologue
    .line 101
    new-instance v0, Lcom/google/googlenav/ui/view/android/bX;

    sget-object v1, Lcom/google/googlenav/mylocationnotifier/l;->a:Lcom/google/android/maps/MapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/l;->f:[Lcom/google/googlenav/ai;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bX;-><init>(Landroid/content/Context;[Lcom/google/googlenav/ai;)V

    return-object v0
.end method

.method protected d()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 106
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/n;

    invoke-direct {v0, p0}, Lcom/google/googlenav/mylocationnotifier/n;-><init>(Lcom/google/googlenav/mylocationnotifier/l;)V

    return-object v0
.end method

.method protected f()V
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/l;->h:Z

    if-nez v0, :cond_7

    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/l;->k()V

    .line 74
    :cond_7
    return-void
.end method
