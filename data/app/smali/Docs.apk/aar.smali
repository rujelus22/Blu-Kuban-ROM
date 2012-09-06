.class Laar;
.super Ljava/lang/Object;
.source "DocListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:J

.field final synthetic a:Laaq;


# direct methods
.method constructor <init>(Laaq;IJ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Laar;->a:Laaq;

    iput p2, p0, Laar;->a:I

    iput-wide p3, p0, Laar;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Laar;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 577
    iget-object v0, p0, Laar;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Lcom/google/android/apps/docs/view/DocListView;

    iget v1, p0, Laar;->a:I

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;I)I

    .line 578
    iget-object v0, p0, Laar;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Laar;->a:Laaq;

    iget-object v1, v1, Laaq;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Landroid/widget/ListView;

    move-result-object v1

    iget v3, p0, Laar;->a:I

    iget-wide v4, p0, Laar;->a:J

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 580
    :cond_2b
    return-void
.end method
