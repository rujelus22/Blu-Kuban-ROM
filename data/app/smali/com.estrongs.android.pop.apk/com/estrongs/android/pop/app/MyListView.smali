.class Lcom/estrongs/android/pop/app/MyListView;
.super Landroid/widget/ListView;


# instance fields
.field private a:I

.field private b:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/MyListView;->a:I

    new-instance v0, Lcom/estrongs/android/pop/app/bq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bq;-><init>(Lcom/estrongs/android/pop/app/MyListView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/MyListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/MyListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/MyListView;->a:I

    new-instance v0, Lcom/estrongs/android/pop/app/bq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bq;-><init>(Lcom/estrongs/android/pop/app/MyListView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/MyListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/MyListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/MyListView;->a:I

    new-instance v0, Lcom/estrongs/android/pop/app/bq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bq;-><init>(Lcom/estrongs/android/pop/app/MyListView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/MyListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/MyListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/MyListView;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/MyListView;->a:I

    return-void
.end method

.method b()V
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/MyListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
