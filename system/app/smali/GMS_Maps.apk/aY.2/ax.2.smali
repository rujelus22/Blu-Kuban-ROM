.class LaY/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/View;

.field c:Ljava/util/ArrayList;

.field d:LaY/au;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaY/ax;->c:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(LaY/at;)V
    .registers 2

    invoke-direct {p0}, LaY/ax;-><init>()V

    return-void
.end method


# virtual methods
.method a(LaY/au;)V
    .registers 3

    iget-object v0, p0, LaY/ax;->d:LaY/au;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/ax;->d:LaY/au;

    invoke-static {v0}, LaY/au;->a(LaY/au;)V

    :cond_9
    iput-object p1, p0, LaY/ax;->d:LaY/au;

    invoke-static {p1, p0}, LaY/au;->a(LaY/au;LaY/ax;)V

    return-void
.end method
