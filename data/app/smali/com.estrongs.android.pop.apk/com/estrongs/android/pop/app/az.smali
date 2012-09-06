.class Lcom/estrongs/android/pop/app/az;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ar;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/ar;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/app/ar;->a(Lcom/estrongs/android/pop/app/ar;Landroid/view/LayoutInflater;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_7a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ar;->b(Lcom/estrongs/android/pop/app/ar;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/estrongs/android/pop/app/bb;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/bb;-><init>(Lcom/estrongs/android/pop/app/ar;)V

    const v0, 0x7f07006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/bb;->a:Landroid/widget/ImageView;

    const v0, 0x7f07006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/bb;->b:Landroid/widget/TextView;

    const v0, 0x7f07006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/bb;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_3c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v1, v2, Lcom/estrongs/android/pop/app/bb;->a:Landroid/widget/ImageView;

    const v3, 0x106000d

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ar;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_82

    iget-object v3, v2, Lcom/estrongs/android/pop/app/bb;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ar;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_6b
    :goto_6b
    iget-object v1, v2, Lcom/estrongs/android/pop/app/bb;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/estrongs/android/pop/app/bb;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_7a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/bb;

    move-object v2, v0

    goto :goto_3c

    :cond_82
    iget-object v1, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    if-eqz v1, :cond_6b

    iget-object v1, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, v2, Lcom/estrongs/android/pop/app/bb;->a:Landroid/widget/ImageView;

    const v3, 0x7f02011c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6b

    :cond_99
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-static {v3, v1}, Lcom/estrongs/android/a/f;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6b

    iget-object v3, v2, Lcom/estrongs/android/pop/app/bb;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6b
.end method
