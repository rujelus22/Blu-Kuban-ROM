.class final Lcom/twitter/android/widget/d;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/c;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/c;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/d;->a:Lcom/twitter/android/widget/c;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/d;->a:Lcom/twitter/android/widget/c;

    invoke-virtual {v0}, Lcom/twitter/android/widget/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/d;->a:Lcom/twitter/android/widget/c;

    invoke-virtual {v0}, Lcom/twitter/android/widget/c;->notifyDataSetInvalidated()V

    return-void
.end method
