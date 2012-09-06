.class Lcom/google/googlenav/suggest/android/l;
.super Lcom/google/googlenav/suggest/android/i;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/suggest/android/i;-><init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 153
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 163
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 168
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :cond_25
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    invoke-static {v3}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 179
    :cond_56
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 180
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_5e
    return-void

    .line 182
    :cond_5f
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 183
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    const v1, 0x7f040179

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 196
    const-string v0, ""

    .line 197
    if-eqz p1, :cond_9

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_9
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-boolean v1, v1, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    if-nez v1, :cond_10

    .line 228
    :cond_f
    :goto_f
    return-object v2

    .line 208
    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 212
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/googlenav/suggest/android/SuggestView;->b:Z

    .line 216
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v3, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v3, v3, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/suggest/android/SuggestView;->post(Ljava/lang/Runnable;)Z

    .line 218
    new-instance v1, LaI/u;

    invoke-direct {v1}, LaI/u;-><init>()V

    invoke-virtual {v1, v0}, LaI/u;->a(Ljava/lang/String;)LaI/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;)I

    move-result v1

    invoke-virtual {v0, v1}, LaI/u;->a(I)LaI/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Lcom/google/googlenav/suggest/android/SuggestView;)I

    move-result v1

    invoke-virtual {v0, v1}, LaI/u;->b(I)LaI/u;

    move-result-object v0

    invoke-virtual {v0}, LaI/u;->a()LaI/s;

    move-result-object v3

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/l;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {v3}, LaI/s;->h()[Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 227
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/l;->a()V

    goto :goto_f
.end method
