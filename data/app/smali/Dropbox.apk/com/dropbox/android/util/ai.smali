.class final Lcom/dropbox/android/util/ai;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/FragmentListActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/util/FragmentListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dropbox/android/util/ai;->a:Lcom/dropbox/android/util/FragmentListActivity;

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
    .line 157
    iget-object v0, p0, Lcom/dropbox/android/util/ai;->a:Lcom/dropbox/android/util/FragmentListActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/util/FragmentListActivity;->b(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 158
    return-void
.end method
