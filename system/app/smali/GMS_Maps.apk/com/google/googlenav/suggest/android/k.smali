.class Lcom/google/googlenav/suggest/android/k;
.super Landroid/widget/CursorAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;Lcom/google/googlenav/suggest/android/e;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/suggest/android/k;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/k;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->d(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->e(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string v0, ""

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_25
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Las/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    :cond_56
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5b
    return-void

    :cond_5c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5b
.end method

.method public synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/suggest/android/k;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/k;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/k;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1b

    if-nez p2, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/k;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/googlenav/suggest/android/k;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1a
    :goto_1a
    return-object p2

    :cond_1b
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1a
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030135

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->c(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/k;->a()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_27
.end method

.method public notifyDataSetInvalidated()V
    .registers 1

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/k;->a()V

    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v0, ""

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->f(Lcom/google/googlenav/suggest/android/SuggestView;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-object v2

    :cond_14
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;Z)Z

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v3, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v3}, Lcom/google/googlenav/suggest/android/SuggestView;->d(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->g(Lcom/google/googlenav/suggest/android/SuggestView;)I

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    aput-object v0, v4, v6

    const-string v0, ""

    aput-object v0, v4, v5

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->g(Lcom/google/googlenav/suggest/android/SuggestView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    :goto_4a
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/suggest/android/SuggestProvider;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/k;->a()V

    goto :goto_13

    :cond_60
    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v6

    goto :goto_4a
.end method
