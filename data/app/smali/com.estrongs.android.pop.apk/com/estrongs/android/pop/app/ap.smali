.class public Lcom/estrongs/android/pop/app/ap;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ap;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/app/ap;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/16 v7, 0x8

    if-nez p2, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ap;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ap;->b:[Ljava/lang/String;

    aget-object v4, v0, p1

    if-eqz v4, :cond_8c

    const v0, 0x7f070066

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f070067

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f070064

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070065

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz v0, :cond_48

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_48
    if-eqz v2, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :goto_5f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3

    if-lt v0, v6, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_87
    if-eqz v1, :cond_8c

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8c
    return-object p2

    :cond_8d
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f
.end method
