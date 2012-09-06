.class final Landroid/support/v4/app/v;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/ListFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Landroid/support/v4/app/v;->a:Landroid/support/v4/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/app/v;->a:Landroid/support/v4/app/ListFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/ListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 59
    return-void
.end method
