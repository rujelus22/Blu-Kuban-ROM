.class final Lcom/sdgtl/mediahub/spr/screen/iu;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->c:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/sdgtl/mediahub/spr/screen/it;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/it;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/iu;->a(I)Lcom/sdgtl/mediahub/spr/screen/it;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/iv;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/iv;-><init>(Lcom/sdgtl/mediahub/spr/screen/iu;)V

    const v0, 0x7f0d009c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/iv;->a:Landroid/widget/TextView;

    const v0, 0x7f0d009d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/iv;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iu;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/it;

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/iv;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/it;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/iv;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/screen/it;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/iv;->a:Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/sdgtl/mediahub/spr/screen/it;->c:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/iv;->b:Landroid/widget/TextView;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/screen/it;->c:Z

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-object p2

    :cond_4f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/iv;

    move-object v1, v0

    goto :goto_2a
.end method
