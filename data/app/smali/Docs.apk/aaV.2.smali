.class public LaaV;
.super Landroid/widget/HorizontalScrollView;
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
    .line 163
    iput-object p1, p0, LaaV;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    .line 164
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {p0}, LaaV;->getScrollX()I

    move-result v0

    iput v0, p0, LaaV;->a:I

    .line 166
    invoke-virtual {p0}, LaaV;->getScrollY()I

    move-result v0

    iput v0, p0, LaaV;->b:I

    .line 167
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
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 172
    invoke-virtual {p0}, LaaV;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 176
    iget v0, p0, LaaV;->a:I

    if-ne v0, p1, :cond_12

    iget v0, p0, LaaV;->b:I

    if-eq v0, p2, :cond_1b

    .line 177
    :cond_12
    iput p1, p0, LaaV;->a:I

    .line 178
    iput p2, p0, LaaV;->b:I

    .line 179
    iget-object v0, p0, LaaV;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(IIII)V

    .line 181
    :cond_1b
    return-void
.end method
