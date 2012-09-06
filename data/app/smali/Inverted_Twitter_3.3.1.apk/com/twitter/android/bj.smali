.class public final Lcom/twitter/android/bj;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private final a:Lcom/twitter/android/client/b;

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZZ)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p3, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/client/b;

    iput-boolean p4, p0, Lcom/twitter/android/bj;->b:Z

    iput-boolean p5, p0, Lcom/twitter/android/bj;->c:Z

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bk;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/twitter/android/bk;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5e

    move v1, v2

    :goto_1b
    if-eqz v1, :cond_60

    iget-object v1, v0, Lcom/twitter/android/bk;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v6, v6, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2d
    iget-object v1, v0, Lcom/twitter/android/bk;->c:Landroid/widget/TextView;

    const v4, 0x7f0b0080

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v5, 0xb

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p2, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v2, p0, Lcom/twitter/android/bj;->a:Lcom/twitter/android/client/b;

    const/4 v3, 0x6

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v7, v3, v4, v1}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_66

    iget-object v0, v0, Lcom/twitter/android/bk;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    move v1, v3

    goto :goto_1b

    :cond_60
    iget-object v1, v0, Lcom/twitter/android/bk;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d

    :cond_66
    iget-object v0, v0, Lcom/twitter/android/bk;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5d
.end method

.method public final getCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/bj;->c:Z

    if-eqz v0, :cond_b

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    goto :goto_a
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 7

    iget-boolean v0, p0, Lcom/twitter/android/bj;->c:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/twitter/android/bj;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-boolean v0, p0, Lcom/twitter/android/bj;->b:Z

    if-eqz v0, :cond_6a

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/bj;->mContext:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/ListTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "owner_id"

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "creator_id"

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "list_id"

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "list_name"

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_description"

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_fullname"

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_mode"

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_d

    :cond_6a
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public final getItemViewType(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/bj;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-boolean v0, p0, Lcom/twitter/android/bj;->c:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/twitter/android/bj;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_29

    if-nez p2, :cond_33

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_1e
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/bj;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_29
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1e

    :cond_2e
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1e

    :cond_33
    move-object v1, p2

    goto :goto_1e
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bk;

    invoke-direct {v1, v0}, Lcom/twitter/android/bk;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
