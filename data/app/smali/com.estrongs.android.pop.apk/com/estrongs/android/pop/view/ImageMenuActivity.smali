.class public Lcom/estrongs/android/pop/view/ImageMenuActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Landroid/widget/GridView;

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

.field private c:Lcom/estrongs/android/pop/view/id;

.field private d:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->c:Lcom/estrongs/android/pop/view/id;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->d:[I

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->a:Landroid/widget/GridView;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ImageMenuActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->d:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_16
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->setContentView(I)V

    new-instance v0, Lcom/estrongs/android/pop/view/id;

    const v2, 0x7f03002a

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/estrongs/android/pop/view/id;-><init>(Lcom/estrongs/android/pop/view/ImageMenuActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->c:Lcom/estrongs/android/pop/view/id;

    const v0, 0x7f070130

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->a:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->a:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->c:Lcom/estrongs/android/pop/view/id;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "icon"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v0, "text"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, "id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->d:[I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    const/4 v0, 0x0

    :goto_58
    array-length v1, v2

    if-lt v0, v1, :cond_6b

    :cond_5b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/estrongs/android/pop/view/ic;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ic;-><init>(Lcom/estrongs/android/pop/view/ImageMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ImageMenuActivity;->requestWindowFeature(I)Z

    goto :goto_16

    :cond_6b
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ImageMenuActivity;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/estrongs/android/pop/view/ie;

    aget v5, v2, v0

    aget-object v6, v3, v0

    invoke-direct {v4, p0, v5, v6}, Lcom/estrongs/android/pop/view/ie;-><init>(Lcom/estrongs/android/pop/view/ImageMenuActivity;ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_58
.end method
