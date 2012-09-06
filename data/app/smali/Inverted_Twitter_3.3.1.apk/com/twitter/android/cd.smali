.class final Lcom/twitter/android/cd;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field final synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/MessagesThreadActivity;Landroid/database/Cursor;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ce;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_1b

    iget-object v1, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v1, v1, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1b
    if-eqz v1, :cond_66

    iget-object v2, v0, Lcom/twitter/android/ce;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_22
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/twitter/android/client/b;->a(IJ[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v2

    iget-object v3, v0, Lcom/twitter/android/ce;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v4, v4, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    iget v4, v4, Lcom/twitter/android/client/b;->f:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v0, Lcom/twitter/android/ce;->b:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/cd;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v1, v3, v4, v2, v5}, Lcom/twitter/android/widget/ah;->a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;Lcom/twitter/android/widget/ad;)V

    iget-object v0, v0, Lcom/twitter/android/ce;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/twitter/android/MessagesThreadActivity;->i()Ljava/text/SimpleDateFormat;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_66
    iget-object v1, v0, Lcom/twitter/android/ce;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_22
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/twitter/android/ce;

    invoke-direct {v2}, Lcom/twitter/android/ce;-><init>()V

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/twitter/android/ce;->a:Landroid/widget/ImageView;

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twitter/android/ce;->b:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/twitter/android/ce;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twitter/android/ce;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
