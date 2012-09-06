.class Lcom/estrongs/android/pop/view/id;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/pop/view/ie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ImageMenuActivity;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/view/ie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/ImageMenuActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/view/ie;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/view/id;->a:Lcom/estrongs/android/pop/view/ImageMenuActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/view/id;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/view/id;->a:Lcom/estrongs/android/pop/view/ImageMenuActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/view/id;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/ie;

    if-eqz v0, :cond_44

    const v1, 0x7f070131

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f070132

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_37

    iget v3, v0, Lcom/estrongs/android/pop/view/ie;->a:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_37
    if-eqz v2, :cond_44

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ie;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0xf3f3f4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_44
    return-object p2
.end method
