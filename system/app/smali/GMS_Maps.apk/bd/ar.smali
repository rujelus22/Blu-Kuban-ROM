.class Lbd/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lbd/aq;


# direct methods
.method constructor <init>(Lbd/aq;)V
    .registers 2

    iput-object p1, p0, Lbd/ar;->a:Lbd/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lbd/ar;->a:Lbd/aq;

    invoke-static {v0}, Lbd/aq;->a(Lbd/aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iget-object v1, p0, Lbd/ar;->a:Lbd/aq;

    invoke-static {v1}, Lbd/aq;->b(Lbd/aq;)Lbd/as;

    move-result-object v1

    invoke-interface {v1, v0}, Lbd/as;->a(Landroid/location/Address;)V

    return-void
.end method
