.class public LaaW;
.super Landroid/widget/ScrollView;
.source "LinearLayoutListView.java"


# instance fields
.field a:I

.field final synthetic a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

.field b:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, LaaW;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    .line 192
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, LaaW;->getScrollX()I

    move-result v0

    iput v0, p0, LaaW;->a:I

    .line 194
    invoke-virtual {p0}, LaaW;->getScrollY()I

    move-result v0

    iput v0, p0, LaaW;->b:I

    .line 195
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 200
    invoke-virtual {p0}, LaaW;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 204
    iget v0, p0, LaaW;->a:I

    if-ne v0, p1, :cond_12

    iget v0, p0, LaaW;->b:I

    if-eq v0, p2, :cond_1b

    .line 205
    :cond_12
    iput p1, p0, LaaW;->a:I

    .line 206
    iput p2, p0, LaaW;->b:I

    .line 207
    iget-object v0, p0, LaaW;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(IIII)V

    .line 209
    :cond_1b
    return-void
.end method
