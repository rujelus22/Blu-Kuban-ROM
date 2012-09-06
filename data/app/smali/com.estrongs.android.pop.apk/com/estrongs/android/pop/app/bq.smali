.class Lcom/estrongs/android/pop/app/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/MyListView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/MyListView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/MyListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/app/MyListView;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bq;->a:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/MyListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
