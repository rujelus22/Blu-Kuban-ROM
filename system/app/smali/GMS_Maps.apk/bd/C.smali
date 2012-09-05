.class Lbd/C;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/view/ViewGroup;

.field i:I

.field j:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbd/C;->j:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lbd/y;)V
    .registers 2

    invoke-direct {p0}, Lbd/C;-><init>()V

    return-void
.end method
