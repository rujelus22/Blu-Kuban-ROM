.class final Lcom/dropbox/android/activity/aj;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dropbox/android/activity/aj;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

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
    .line 124
    iget-object v0, p0, Lcom/dropbox/android/activity/aj;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a(Lcom/dropbox/android/activity/LocalFileBrowseFragment;Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 125
    return-void
.end method
