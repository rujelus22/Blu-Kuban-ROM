.class public Lcom/twitter/android/gm;
.super Landroid/support/v4/widget/CursorAdapter;

# interfaces
.implements Lcom/twitter/android/widget/an;


# instance fields
.field private final a:Z

.field private final b:Lcom/twitter/android/client/b;

.field private final c:I

.field private final d:Lcom/twitter/android/widget/an;

.field private final e:Lcom/twitter/android/util/FriendshipCache;

.field private final f:I

.field private final g:I

.field private final h:Z

.field private i:J

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:Landroid/view/View$OnClickListener;

.field private n:Lcom/twitter/android/cj;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V
    .registers 12

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p3, p0, Lcom/twitter/android/gm;->b:Lcom/twitter/android/client/b;

    iput-boolean p4, p0, Lcom/twitter/android/gm;->a:Z

    iput p5, p0, Lcom/twitter/android/gm;->c:I

    iput-object p6, p0, Lcom/twitter/android/gm;->d:Lcom/twitter/android/widget/an;

    iput-object p7, p0, Lcom/twitter/android/gm;->e:Lcom/twitter/android/util/FriendshipCache;

    iput p8, p0, Lcom/twitter/android/gm;->f:I

    iput p9, p0, Lcom/twitter/android/gm;->g:I

    if-lez p8, :cond_2b

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    invoke-virtual {p3}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/gm;->i:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/gm;->l:I

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gm;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Lcom/twitter/android/cj;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gm;->n:Lcom/twitter/android/cj;

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/gm;->d:Lcom/twitter/android/widget/an;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/android/widget/an;->a(Lcom/twitter/android/widget/UserView;J)V

    iget-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/twitter/android/gm;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/gm;->e:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->b()I

    move-result v0

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/gm;->e:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->d()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Lcom/twitter/android/widget/UserView;

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/android/widget/UserView;->a(J)V

    if-eqz v1, :cond_66

    iget-object v6, p0, Lcom/twitter/android/gm;->b:Lcom/twitter/android/client/b;

    invoke-virtual {v6, v7, v4, v5, v1}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :goto_1e
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_6b

    move v1, v2

    :goto_32
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->b(Z)V

    const/4 v1, 0x7

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_6d

    move v1, v2

    :goto_3d
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->c(Z)V

    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Lcom/twitter/android/api/PromotedContent;)V

    iget v6, p0, Lcom/twitter/android/gm;->c:I

    if-lez v6, :cond_5c

    iget-wide v6, p0, Lcom/twitter/android/gm;->i:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_6f

    invoke-virtual {v0, v8}, Lcom/twitter/android/widget/UserView;->b(I)V

    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/twitter/android/gm;->n:Lcom/twitter/android/cj;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/twitter/android/gm;->n:Lcom/twitter/android/cj;

    invoke-interface {v0, p1, v1}, Lcom/twitter/android/cj;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_65
    return-void

    :cond_66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1e

    :cond_6b
    move v1, v3

    goto :goto_32

    :cond_6d
    move v1, v3

    goto :goto_3d

    :cond_6f
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/UserView;->b(I)V

    iget-object v6, p0, Lcom/twitter/android/gm;->e:Lcom/twitter/android/util/FriendshipCache;

    if-eqz v6, :cond_5c

    invoke-virtual {v6, v4, v5}, Lcom/twitter/android/util/FriendshipCache;->a(J)Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-virtual {v6, v4, v5}, Lcom/twitter/android/util/FriendshipCache;->e(J)Z

    move-result v2

    :cond_80
    :goto_80
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/UserView;->setChecked(Z)V

    goto :goto_5c

    :cond_84
    const/16 v4, 0x8

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_80

    move v2, v3

    goto :goto_80
.end method

.method public getCount()I
    .registers 3

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/twitter/android/gm;->h:Z

    if-eqz v1, :cond_c

    if-lez v0, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_c
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    if-eqz v0, :cond_f

    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_f
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 5

    const-wide/16 v1, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    if-eqz v0, :cond_c

    if-nez p1, :cond_a

    move-wide v0, v1

    :goto_9
    return-wide v0

    :cond_a
    add-int/lit8 p1, p1, -0x1

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_9

    :cond_1a
    move-wide v0, v1

    goto :goto_9
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    if-eqz v0, :cond_7f

    if-nez p1, :cond_78

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_4b

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001a

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/twitter/android/gm;->g:I

    if-lez v2, :cond_73

    iget v2, p0, Lcom/twitter/android/gm;->g:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_2a
    const v0, 0x7f070059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/gm;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/gm;->m:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/twitter/android/gm;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/twitter/android/gm;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    const v0, 0x7f070058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/gm;->k:Landroid/widget/TextView;

    :cond_4b
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/twitter/android/gm;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/twitter/android/gm;->f:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p2

    :goto_68
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/gm;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_73
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    :cond_78
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_68

    :cond_7f
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_68
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/gm;->h:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_10

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_12
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_f
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UserView;

    iget-boolean v1, p0, Lcom/twitter/android/gm;->a:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Z)V

    :cond_16
    :goto_16
    return-object v0

    :cond_17
    iget v1, p0, Lcom/twitter/android/gm;->c:I

    if-lez v1, :cond_16

    iget v1, p0, Lcom/twitter/android/gm;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/widget/UserView;->a(ILcom/twitter/android/widget/an;)V

    const v1, 0x7f02003c

    iget v2, p0, Lcom/twitter/android/gm;->c:I

    if-ne v1, v2, :cond_16

    const v1, 0x7f02003d

    iget v2, p0, Lcom/twitter/android/gm;->l:I

    iget v4, p0, Lcom/twitter/android/gm;->l:I

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/widget/UserView;->a(IIIII)V

    goto :goto_16
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/gm;->b:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/gm;->i:J

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
