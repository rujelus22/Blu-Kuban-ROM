.class public Lcom/vlingo/client/home/HintAdapter;
.super Landroid/widget/BaseAdapter;
.source "HintAdapter.java"


# instance fields
.field private extraHints:I

.field private hints:Lcom/vlingo/client/home/HintList;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    .line 27
    iput-object p1, p0, Lcom/vlingo/client/home/HintAdapter;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/vlingo/client/home/HintList;

    invoke-direct {v0}, Lcom/vlingo/client/home/HintList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/HintAdapter;->hints:Lcom/vlingo/client/home/HintList;

    .line 29
    const-string v0, "home_screen_first_display"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isActivated()Z

    move-result v0

    if-nez v0, :cond_24

    .line 30
    :cond_1e
    iget v0, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    .line 32
    :cond_24
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 41
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    iget-object v0, p0, Lcom/vlingo/client/home/HintAdapter;->hints:Lcom/vlingo/client/home/HintList;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HintList;->size()I

    move-result v0

    iget v1, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    add-int/2addr v0, v1

    .line 45
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0f009a

    const/16 v7, 0x40

    .line 59
    iget v5, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    if-lez v5, :cond_66

    iget v5, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    if-ge p1, v5, :cond_66

    .line 63
    iget-object v5, p0, Lcom/vlingo/client/home/HintAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f030027

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, row:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 65
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v5, 0x7f0f009b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 67
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Vlingo"

    const-string v7, "VoiceCommand"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v5, 0x7f0f009c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #tv:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 69
    .restart local v4       #tv:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Vlingo"

    const-string v7, "VoiceCommand"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v2

    .line 92
    .end local v2           #row:Landroid/view/View;
    .local v3, row:Landroid/view/View;
    :goto_65
    return-object v3

    .line 73
    .end local v3           #row:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_66
    move-object v2, p2

    .line 74
    .restart local v2       #row:Landroid/view/View;
    iget v5, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    if-lez v5, :cond_6c

    .line 75
    const/4 p2, 0x0

    .line 77
    :cond_6c
    if-nez p2, :cond_77

    .line 78
    iget-object v5, p0, Lcom/vlingo/client/home/HintAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f030028

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    :cond_77
    iget v5, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    if-lez v5, :cond_7e

    .line 81
    iget v5, p0, Lcom/vlingo/client/home/HintAdapter;->extraHints:I

    sub-int/2addr p1, v5

    .line 83
    :cond_7e
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .restart local v4       #tv:Landroid/widget/TextView;
    const v5, 0x7f0f009d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 85
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 88
    iget-object v5, p0, Lcom/vlingo/client/home/HintAdapter;->hints:Lcom/vlingo/client/home/HintList;

    iget-object v6, p0, Lcom/vlingo/client/home/HintAdapter;->hints:Lcom/vlingo/client/home/HintList;

    invoke-virtual {v6}, Lcom/vlingo/client/home/HintList;->size()I

    move-result v6

    rem-int v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/vlingo/client/home/HintList;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/home/Hint;

    .line 89
    .local v0, h:Lcom/vlingo/client/home/Hint;
    invoke-virtual {v0}, Lcom/vlingo/client/home/Hint;->getTitle()Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget v5, v0, Lcom/vlingo/client/home/Hint;->type_image:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    move-object v3, v2

    .line 92
    .end local v2           #row:Landroid/view/View;
    .restart local v3       #row:Landroid/view/View;
    goto :goto_65
.end method

.method public setHints(Lcom/vlingo/client/home/HintList;)V
    .registers 2
    .parameter "hl"

    .prologue
    .line 35
    if-eqz p1, :cond_4

    .line 36
    iput-object p1, p0, Lcom/vlingo/client/home/HintAdapter;->hints:Lcom/vlingo/client/home/HintList;

    .line 38
    :cond_4
    return-void
.end method
