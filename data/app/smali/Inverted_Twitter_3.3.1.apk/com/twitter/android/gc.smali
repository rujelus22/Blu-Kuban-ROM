.class public final Lcom/twitter/android/gc;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Lcom/twitter/android/client/b;

.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/twitter/android/widget/am;

.field private final e:Z

.field private final f:Lcom/twitter/android/widget/ai;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/twitter/android/cj;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/twitter/android/widget/am;Lcom/twitter/android/client/b;Lcom/twitter/android/widget/ai;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/gc;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/gc;->c:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/twitter/android/gc;->e:Z

    iput-object p4, p0, Lcom/twitter/android/gc;->d:Lcom/twitter/android/widget/am;

    iput-object p5, p0, Lcom/twitter/android/gc;->b:Lcom/twitter/android/client/b;

    iput-object p6, p0, Lcom/twitter/android/gc;->f:Lcom/twitter/android/widget/ai;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/gc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gb;

    iget-object v0, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->b()V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public final a(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/gc;->h:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_d

    iget v0, p0, Lcom/twitter/android/gc;->h:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/gc;->h:I

    invoke-virtual {p0}, Lcom/twitter/android/gc;->notifyDataSetChanged()V

    :cond_d
    return-void
.end method

.method public final a(J)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/gc;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/twitter/android/cj;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gc;->i:Lcom/twitter/android/cj;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/gc;->g:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/gc;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/twitter/android/gc;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/gc;->notifyDataSetChanged()V

    goto :goto_c
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/gc;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/16 v0, 0x14

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gd;

    iget-object v3, p0, Lcom/twitter/android/gc;->a:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/twitter/android/gd;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/twitter/android/gd;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2d
    :goto_2d
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :cond_3b
    iget-object v1, v0, Lcom/twitter/android/gd;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/twitter/android/gd;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d

    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gb;

    iget-object v1, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/gc;->b:Lcom/twitter/android/client/b;

    iget v2, v2, Lcom/twitter/android/client/b;->f:F

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(F)V

    new-instance v1, Lcom/twitter/android/provider/m;

    invoke-direct {v1, p3}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    iget-object v0, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/m;)V

    iget-object v0, p0, Lcom/twitter/android/gc;->i:Lcom/twitter/android/cj;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/twitter/android/gc;->i:Lcom/twitter/android/cj;

    invoke-interface {v0, p1, v1}, Lcom/twitter/android/cj;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_2d
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/gc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final d()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/gc;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final e()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/gc;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final getCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/gc;->d()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/twitter/android/gc;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    goto :goto_d
.end method

.method public final getItemId(I)J
    .registers 5

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/gc;->d()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/twitter/android/gc;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move-wide v0, v1

    :goto_f
    return-wide v0

    :cond_10
    invoke-virtual {p0, p1}, Lcom/twitter/android/gc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1f

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_f

    :cond_1f
    move-wide v0, v1

    goto :goto_f
.end method

.method public final getItemViewType(I)I
    .registers 5

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/twitter/android/gc;->d()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/twitter/android/gc;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/twitter/android/gc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v2, 0x14

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v4, 0x0

    const v3, 0x7f07004b

    const v1, 0x7f030058

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/gc;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v2, p0, Lcom/twitter/android/gc;->mContext:Landroid/content/Context;

    if-nez p2, :cond_76

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1b
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0053

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/android/gc;->g:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {v0, v6, v7}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    :goto_3b
    return-object v1

    :cond_3c
    invoke-virtual {p0}, Lcom/twitter/android/gc;->e()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v2, p0, Lcom/twitter/android/gc;->mContext:Landroid/content/Context;

    if-nez p2, :cond_74

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_4e
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0052

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/android/gc;->g:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {v0, v6, v7}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    goto :goto_3b

    :cond_6f
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_3b

    :cond_74
    move-object v1, p2

    goto :goto_4e

    :cond_76
    move-object v1, p2

    goto :goto_1b
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/gc;->d()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/twitter/android/gc;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_d
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    const v1, 0x7f030055

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/gd;

    invoke-direct {v2}, Lcom/twitter/android/gd;-><init>()V

    const v0, 0x7f07006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/twitter/android/gd;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0700b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twitter/android/gd;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_34
    return-object v0

    :cond_35
    const v1, 0x7f030059

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/gb;

    invoke-direct {v1, v0}, Lcom/twitter/android/gb;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/gc;->d:Lcom/twitter/android/widget/am;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/am;)V

    iget-object v2, v1, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-boolean v3, p0, Lcom/twitter/android/gc;->e:Z

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Z)V

    iget-object v2, v1, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/gc;->f:Lcom/twitter/android/widget/ai;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/ai;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/gc;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34
.end method
