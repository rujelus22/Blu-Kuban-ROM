.class final Lcom/twitter/android/widget/u;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/t;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/t;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/u;->a:Lcom/twitter/android/widget/t;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/u;->a:Lcom/twitter/android/widget/t;

    iget-boolean v0, v0, Lcom/twitter/android/widget/t;->a:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/u;->a:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/u;->a:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->getCount()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/widget/u;->a:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->notifyDataSetInvalidated()V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/twitter/android/widget/u;->onChanged()V

    goto :goto_d
.end method
