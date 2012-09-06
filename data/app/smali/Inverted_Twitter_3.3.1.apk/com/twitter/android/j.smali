.class public abstract Lcom/twitter/android/j;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field protected final a:Lcom/twitter/android/client/b;

.field protected final b:Ljava/util/ArrayList;

.field protected final c:[Landroid/text/style/StyleSpan;

.field protected final d:[Landroid/text/style/StyleSpan;

.field protected final e:Landroid/util/SparseArray;

.field protected final f:Landroid/util/SparseArray;

.field protected final g:Landroid/util/SparseArray;

.field protected final h:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p3, p0, Lcom/twitter/android/j;->a:Lcom/twitter/android/client/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/j;->b:Ljava/util/ArrayList;

    new-array v0, v3, [Landroid/text/style/StyleSpan;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/twitter/android/j;->c:[Landroid/text/style/StyleSpan;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/text/style/StyleSpan;

    iget-object v1, p0, Lcom/twitter/android/j;->c:[Landroid/text/style/StyleSpan;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twitter/android/j;->d:[Landroid/text/style/StyleSpan;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/j;->e:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/j;->f:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/j;->g:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/j;->h:Landroid/util/SparseArray;

    return-void
.end method

.method protected static a(Ljava/util/ArrayList;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_3
.end method

.method private static a(Landroid/database/Cursor;ILandroid/util/SparseArray;)Ljava/util/ArrayList;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_1c
    if-nez v0, :cond_34

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_34
    return-object v0

    :cond_35
    move-object v0, v1

    goto :goto_1c
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/j;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/twitter/android/j;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/twitter/android/j;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/twitter/android/j;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected static a(Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_15

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/twitter/android/j;->a(Landroid/widget/ImageView;Ljava/util/HashMap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_15
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    return-void

    :cond_6
    const v0, 0x7f0200e9

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method

.method protected static a(Landroid/widget/ImageView;Ljava/util/HashMap;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/u;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/j;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;
.end method

.method protected final a(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .registers 5

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_26

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/twitter/android/j;->e:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/database/Cursor;ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5

    :pswitch_15
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/twitter/android/j;->f:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/database/Cursor;ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
        :pswitch_15
    .end packed-switch
.end method

.method protected final a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .registers 10

    const/16 v6, 0x8

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/twitter/android/j;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-lez v0, :cond_41

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v4

    :goto_15
    if-ge v3, v2, :cond_2d

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/j;->a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_15

    :cond_2d
    move v1, v2

    :goto_2e
    if-ge v1, v5, :cond_44

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    :cond_41
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_44
    return-void
.end method

.method protected final a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/j;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x2

    iget-wide v2, p2, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-object v4, p2, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/android/j;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-wide v0, p2, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected final a(Landroid/widget/TextView;Landroid/content/res/Resources;[ILjava/util/ArrayList;III)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p4}, Lcom/twitter/android/j;->a(Ljava/util/ArrayList;)I

    move-result v0

    packed-switch v0, :pswitch_data_ac

    const/4 v0, 0x3

    aget v1, p3, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    add-int/lit8 v0, p5, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/j;->c:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    :goto_2b
    return-void

    :pswitch_2c
    invoke-virtual {p0, p1, v1, v1}, Lcom/twitter/android/j;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_2b

    :pswitch_30
    if-ne p6, v2, :cond_51

    const/4 v0, 0x4

    aget v1, p3, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/j;->c:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_2b

    :cond_51
    if-le p6, v4, :cond_72

    const/4 v0, 0x5

    aget v1, p3, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/j;->c:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_2b

    :cond_72
    aget v1, p3, v4

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/j;->c:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_2b

    :pswitch_8a
    aget v1, p3, v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/j;->d:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_2b

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_30
        :pswitch_8a
    .end packed-switch
.end method

.method protected final a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V
    .registers 5

    if-nez p2, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/j;->a:Lcom/twitter/android/client/b;

    iget v0, v0, Lcom/twitter/android/client/b;->f:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, 0x22

    invoke-static {p3, p2, v0}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public abstract a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
.end method

.method protected final b(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .registers 5

    const/4 v1, 0x2

    packed-switch p2, :pswitch_data_28

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/twitter/android/j;->g:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/database/Cursor;ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5

    :pswitch_16
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/twitter/android/j;->g:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/database/Cursor;ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5

    nop

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_6
        :pswitch_16
    .end packed-switch
.end method

.method protected final c(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .registers 5

    const/4 v1, 0x3

    packed-switch p2, :pswitch_data_28

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/twitter/android/j;->h:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/database/Cursor;ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5

    :pswitch_16
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/twitter/android/j;->h:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1}, Lcom/twitter/android/j;->a(Landroid/database/Cursor;ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5

    nop

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_6
        :pswitch_16
    .end packed-switch
.end method

.method public onContentChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/j;->a()V

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->onContentChanged()V

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3

    invoke-direct {p0}, Lcom/twitter/android/j;->a()V

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
