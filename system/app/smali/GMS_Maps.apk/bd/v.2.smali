.class Lbd/v;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/ViewGroup;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/ViewGroup;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbd/v;->i:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lbd/t;)V
    .registers 2

    invoke-direct {p0}, Lbd/v;-><init>()V

    return-void
.end method
