.class final Lcom/twitter/android/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/BaseListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/q;->a:Lcom/twitter/android/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lcom/twitter/android/q;->a:Lcom/twitter/android/BaseListFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/BaseListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
