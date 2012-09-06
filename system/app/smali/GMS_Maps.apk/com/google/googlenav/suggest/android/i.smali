.class public abstract Lcom/google/googlenav/suggest/android/i;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/BaseSuggestView;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    .line 334
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 335
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 377
    if-nez p1, :cond_5

    .line 378
    const-string v0, ""

    .line 388
    :cond_4
    :goto_4
    return-object v0

    .line 380
    :cond_5
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    if-nez v0, :cond_4

    .line 384
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    if-nez v0, :cond_4

    .line 388
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected final a()V
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9

    .line 435
    :goto_8
    return-void

    .line 421
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/i;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 428
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iget-object v1, v1, Lcom/google/googlenav/suggest/android/BaseSuggestView;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 433
    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b(Lcom/google/googlenav/suggest/android/BaseSuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/google/googlenav/suggest/android/i;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/i;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 346
    const/4 v0, 0x0

    .line 348
    :goto_b
    return-object v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/i;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1b

    .line 358
    if-nez p2, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/i;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/googlenav/suggest/android/i;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 360
    :cond_1a
    :goto_1a
    return-object p2

    :cond_1b
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1a
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iget-boolean v0, v0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b:Z

    if-eqz v0, :cond_1f

    .line 395
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 403
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/i;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a(Lcom/google/googlenav/suggest/android/BaseSuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->post(Ljava/lang/Runnable;)Z

    .line 404
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/i;->a()V

    .line 406
    :cond_1f
    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .registers 1

    .prologue
    .line 410
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 411
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/i;->a()V

    .line 412
    return-void
.end method
