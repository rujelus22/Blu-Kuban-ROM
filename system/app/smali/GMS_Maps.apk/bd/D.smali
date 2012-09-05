.class Lbd/D;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/view/ViewGroup;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/view/View;

.field h:Landroid/view/ViewGroup;

.field i:Ljava/util/List;

.field j:Ljava/util/List;

.field private k:Lbd/x;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbd/D;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbd/D;->j:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lbd/y;)V
    .registers 2

    invoke-direct {p0}, Lbd/D;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lbd/x;)V
    .registers 3

    iget-object v0, p0, Lbd/D;->k:Lbd/x;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbd/D;->k:Lbd/x;

    invoke-static {v0}, Lbd/x;->a(Lbd/x;)V

    :cond_9
    iput-object p1, p0, Lbd/D;->k:Lbd/x;

    invoke-static {p1, p0}, Lbd/x;->a(Lbd/x;Lbd/D;)V

    return-void
.end method
