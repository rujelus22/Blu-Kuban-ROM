.class public final Lcom/twitter/android/gn;
.super Landroid/widget/CursorAdapter;


# instance fields
.field private final a:Landroid/widget/Filter;

.field private final b:Lcom/twitter/android/client/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/twitter/android/client/b;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p3, p0, Lcom/twitter/android/gn;->b:Lcom/twitter/android/client/b;

    new-instance v0, Lcom/twitter/android/go;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/go;-><init>(Lcom/twitter/android/gn;Landroid/app/Activity;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/twitter/android/gn;->a:Landroid/widget/Filter;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10

    const v5, 0x7f0200e8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gh;

    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v2, p0, Lcom/twitter/android/gn;->b:Lcom/twitter/android/client/b;

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v2, v0, Lcom/twitter/android/gh;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_22
    iget-object v1, v0, Lcom/twitter/android/gh;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/twitter/android/gh;->c:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_46
    iget-object v1, v0, Lcom/twitter/android/gh;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_22

    :cond_4c
    iget-object v1, v0, Lcom/twitter/android/gh;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_22
.end method

.method public final getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/gn;->a:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/gh;

    invoke-direct {v1, v0}, Lcom/twitter/android/gh;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
