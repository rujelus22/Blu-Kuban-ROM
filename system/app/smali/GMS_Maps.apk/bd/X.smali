.class Lbd/X;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/X;->a:Landroid/view/View;

    iput-object p2, p0, Lbd/X;->b:Ljava/util/List;

    iput-object p3, p0, Lbd/X;->c:Landroid/view/View;

    iput-object p4, p0, Lbd/X;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lbd/X;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lbd/X;->f:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lbd/X;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lbd/X;->c:Landroid/view/View;

    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lbd/X;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lbd/X;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lbd/X;->f:Landroid/widget/ImageView;

    return-object v0
.end method
