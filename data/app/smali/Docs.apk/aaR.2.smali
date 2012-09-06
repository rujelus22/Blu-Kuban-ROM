.class public LaaR;
.super Landroid/database/DataSetObserver;
.source "LinearLayoutListView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/LinearLayoutListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 216
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 217
    iget-object v0, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    iget-object v1, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 218
    iget-object v0, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    .line 219
    iget-object v0, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 220
    iget-object v0, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    .line 222
    :cond_28
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 227
    iget-object v0, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    iget-object v1, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, LaaR;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    .line 229
    return-void
.end method
