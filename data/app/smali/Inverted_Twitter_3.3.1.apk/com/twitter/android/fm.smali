.class final Lcom/twitter/android/fm;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/content/res/Resources;Ljava/lang/String;I[JI)V
    .registers 10

    if-eqz p2, :cond_20

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :try_start_a
    iget-object v0, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/fn;

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/twitter/android/util/x;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p4, p5}, Lcom/twitter/android/fn;-><init>(Ljava/lang/String;Ljava/lang/String;[JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    iget-object v0, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/fn;

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p4, p5}, Lcom/twitter/android/fn;-><init>(Ljava/lang/String;Ljava/lang/String;[JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/twitter/android/api/a;)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p2, Lcom/twitter/android/api/a;->b:Ljava/lang/String;

    const v3, 0x7f0b003e

    iget-object v4, p2, Lcom/twitter/android/api/a;->e:[J

    const/16 v5, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/fm;->a(Landroid/content/res/Resources;Ljava/lang/String;I[JI)V

    iget-object v2, p2, Lcom/twitter/android/api/a;->a:Ljava/lang/String;

    const v3, 0x7f0b002f

    iget-object v4, p2, Lcom/twitter/android/api/a;->d:[J

    const/16 v5, 0xb

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/fm;->a(Landroid/content/res/Resources;Ljava/lang/String;I[JI)V

    invoke-virtual {p0}, Lcom/twitter/android/fm;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fn;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_3e

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/fo;

    invoke-direct {v0, v1}, Lcom/twitter/android/fo;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_1b
    iget-object v0, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fn;

    iget-object v3, v2, Lcom/twitter/android/fo;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/twitter/android/fn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/twitter/android/fo;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twitter/android/fn;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    iget-object v2, p0, Lcom/twitter/android/fm;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_3e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fo;

    move-object v2, v0

    move-object v1, p2

    goto :goto_1b
.end method
