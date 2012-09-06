.class public abstract Lcom/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final h:[Ljava/lang/Class;

.field private static i:[Ljava/lang/Class;

.field private static j:[Ljava/lang/Class;

.field private static final k:[Ljava/lang/Class;

.field private static l:[Ljava/lang/Class;

.field private static final m:[Ljava/lang/Class;

.field private static n:[Ljava/lang/Class;

.field private static o:Ljava/util/WeakHashMap;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Ljava/lang/Object;

.field protected c:Lcom/a/a/a;

.field private d:Landroid/view/View;

.field private e:Landroid/app/Activity;

.field private f:Landroid/content/Context;

.field private g:Lcom/a/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/b;->h:[Ljava/lang/Class;

    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AdapterView;

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/b;->i:[Ljava/lang/Class;

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AbsListView;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/b;->j:[Ljava/lang/Class;

    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/b;->k:[Ljava/lang/Class;

    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/b;->l:[Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/b;->m:[Ljava/lang/Class;

    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/graphics/Paint;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/b;->n:[Ljava/lang/Class;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/a/b;->o:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b;->d:Landroid/view/View;

    iput-object p1, p0, Lcom/a/b;->a:Landroid/view/View;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b;->d:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/a/b;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/a/b;->e:Landroid/app/Activity;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/a/b;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public final a()Lcom/a/b;
    .registers 3

    const/4 v1, 0x0

    const v0, 0x7f070006

    invoke-direct {p0, v0}, Lcom/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b;->a:Landroid/view/View;

    iput-object v1, p0, Lcom/a/b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/a/b;->c:Lcom/a/a/a;

    return-object p0
.end method

.method public final a(Landroid/app/Dialog;)Lcom/a/b;
    .registers 4

    if-eqz p1, :cond_b

    :try_start_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object v0, Lcom/a/b;->o:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-object p0

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public final a(Ljava/lang/String;Lcom/a/b/d;)Lcom/a/b;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/a/b/d;->f()Lcom/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/d;->g()Lcom/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/d;

    invoke-virtual {v0}, Lcom/a/b/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/d;

    invoke-virtual {v0}, Lcom/a/b/d;->a()Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/a/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/a/b/d;->a(Landroid/widget/ImageView;)Lcom/a/b/d;

    iget-object v0, p0, Lcom/a/b;->c:Lcom/a/a/a;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/a/b;->c:Lcom/a/a/a;

    invoke-virtual {p2, v0}, Lcom/a/b/a;->a(Lcom/a/a/a;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/a/b;->c:Lcom/a/a/a;

    :cond_30
    iget-object v0, p0, Lcom/a/b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/a/b;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/a/b;->b:Ljava/lang/Object;

    :cond_3b
    iget-object v0, p0, Lcom/a/b;->g:Lcom/a/b/e;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/a/b;->g:Lcom/a/b/e;

    invoke-virtual {p2, v0}, Lcom/a/b/a;->a(Lcom/a/b/e;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/a/b;->g:Lcom/a/b/e;

    :cond_46
    iget-object v0, p0, Lcom/a/b;->e:Landroid/app/Activity;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/a/b;->e:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/a/b/a;->a(Landroid/app/Activity;)V

    :cond_4f
    :goto_4f
    return-object p0

    :cond_50
    iget-object v0, p0, Lcom/a/b;->e:Landroid/app/Activity;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/a/b;->e:Landroid/app/Activity;

    :goto_56
    invoke-virtual {p2, v0}, Lcom/a/b/a;->a(Landroid/content/Context;)V

    goto :goto_4f

    :cond_5a
    iget-object v0, p0, Lcom/a/b;->d:Landroid/view/View;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/a/b;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_56

    :cond_65
    iget-object v0, p0, Lcom/a/b;->f:Landroid/content/Context;

    goto :goto_56
.end method

.method public final b()Lcom/a/b;
    .registers 2

    const v0, 0x7f070020

    invoke-direct {p0, v0}, Lcom/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Landroid/app/Dialog;)Lcom/a/b;
    .registers 3

    if-eqz p1, :cond_a

    :try_start_2
    sget-object v0, Lcom/a/b;->o:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    goto :goto_a
.end method
