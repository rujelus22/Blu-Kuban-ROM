.class public Lcom/estrongs/android/pop/app/ao;
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

.field private c:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .registers 7

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ao;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/ao;->b:[Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    const v10, -0xeaab6a

    const/16 v9, 0x8

    const/4 v4, 0x0

    if-nez p2, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->b:[Ljava/lang/String;

    aget-object v5, v0, p1

    if-eqz v5, :cond_e7

    const v0, 0x7f070066

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f070067

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f070065

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v3, 0x7f070064

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/estrongs/android/pop/app/ao;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->v(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_6a

    iget-object v6, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v6}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v6

    if-ne v6, p1, :cond_67

    iget-object v6, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v6}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v6

    if-nez v6, :cond_f5

    :cond_67
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6a
    :goto_6a
    if-eqz v3, :cond_ae

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v4

    :goto_85
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x3

    if-lt v0, v8, :cond_110

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ae
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v0

    if-ne v0, p1, :cond_be

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-nez v0, :cond_11f

    :cond_be
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    move-result v0

    if-eqz v0, :cond_119

    const v0, -0x4f4f50

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_cf
    if-eqz v2, :cond_e7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v0

    if-ne v0, p1, :cond_126

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v0

    if-eqz v0, :cond_126

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e7
    :goto_e7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ao;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_f5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/estrongs/android/pop/app/ao;->c:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v6}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v6

    if-eqz v6, :cond_108

    const v6, 0x7f020020

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6a

    :cond_108
    const v6, 0x7f020021

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6a

    :cond_110
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_85

    :cond_119
    const/high16 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_cf

    :cond_11f
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_cf

    :cond_126
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_e7
.end method
