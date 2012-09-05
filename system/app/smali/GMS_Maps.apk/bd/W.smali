.class Lbd/W;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0f0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f015e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1, v2}, Lbd/W;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/W;->a:Landroid/view/View;

    iput-object p2, p0, Lbd/W;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lbd/W;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lbd/W;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lbd/W;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lbd/W;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lbd/W;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lbd/W;->d:Landroid/widget/ImageView;

    return-object v0
.end method
