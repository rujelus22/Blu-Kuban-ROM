.class Lbd/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/widget/LinearLayout;

.field e:Ljava/util/List;

.field final synthetic f:Lbd/Y;


# direct methods
.method constructor <init>(Lbd/Y;)V
    .registers 3

    iput-object p1, p0, Lbd/aa;->f:Lbd/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbd/aa;->e:Ljava/util/List;

    return-void
.end method
