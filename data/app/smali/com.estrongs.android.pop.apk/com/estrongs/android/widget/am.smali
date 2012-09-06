.class Lcom/estrongs/android/widget/am;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/al;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/widget/al;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/al;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/widget/al;Lcom/estrongs/android/widget/am;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/am;-><init>(Lcom/estrongs/android/widget/al;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 4

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/al;

    invoke-static {v1}, Lcom/estrongs/android/widget/al;->a(Lcom/estrongs/android/widget/al;)Lcom/estrongs/android/widget/an;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/al;

    invoke-static {v1}, Lcom/estrongs/android/widget/al;->a(Lcom/estrongs/android/widget/al;)Lcom/estrongs/android/widget/an;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/widget/an;->c()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/al;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/widget/an;

    invoke-static {v1, v0}, Lcom/estrongs/android/widget/al;->a(Lcom/estrongs/android/widget/al;Lcom/estrongs/android/widget/an;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/al;

    invoke-static {v0}, Lcom/estrongs/android/widget/al;->a(Lcom/estrongs/android/widget/al;)Lcom/estrongs/android/widget/an;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/widget/an;->c()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/al;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/al;->notifyDataSetChanged()V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/estrongs/android/widget/am;->a:Lcom/estrongs/android/widget/al;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/al;->notifyDataSetInvalidated()V

    goto :goto_1a
.end method
