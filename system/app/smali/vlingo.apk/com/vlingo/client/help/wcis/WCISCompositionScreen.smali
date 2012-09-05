.class public Lcom/vlingo/client/help/wcis/WCISCompositionScreen;
.super Lcom/vlingo/client/ui/VLActivity;
.source "WCISCompositionScreen.java"


# static fields
.field public static final EXTRA_DID_YOU_KNOW:Ljava/lang/String; = "EXTRA_DID_YOU_KNOW"

.field public static final EXTRA_EXAMPLE_LIST:Ljava/lang/String; = "EXTRA_EXAMPLE_LIST"

.field public static final EXTRA_SUBTITLE:Ljava/lang/String; = "EXTRA_SUBTITLE"

.field public static final EXTRA_SUBTITLE_ICON:Ljava/lang/String; = "EXTRA_SUBTITLE_ICON"

.field public static final EXTRA_TITLE_BAR:Ljava/lang/String; = "EXTRA_TITLE_BAR"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    return-void
.end method

.method private setTextFromHtml(IIZ)V
    .registers 12
    .parameter "textResId"
    .parameter "textViewResId"
    .parameter "array"

    .prologue
    .line 53
    invoke-virtual {p0, p2}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 54
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_17

    if-eqz p2, :cond_17

    .line 55
    if-nez p3, :cond_18

    .line 56
    invoke-virtual {p0, p1}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_17
    :goto_17
    return-void

    .line 58
    :cond_18
    const-string v1, ""

    .line 59
    .local v1, dyk:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_24
    if-ge v2, v3, :cond_4f

    aget-object v4, v0, v2

    .line 60
    .local v4, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 63
    .end local v4           #s:Ljava/lang/String;
    :cond_4f
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0f006a

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v6, 0x7f030018

    invoke-virtual {p0, v6}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_TITLE_BAR"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 31
    .local v5, titleBarResId:I
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_SUBTITLE_ICON"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 32
    .local v2, iconResId:I
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_SUBTITLE"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 33
    .local v4, subtitleResId:I
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_EXAMPLE_LIST"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, exArrResId:I
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_DID_YOU_KNOW"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, didYouKnowResId:I
    if-eqz v5, :cond_4a

    .line 37
    invoke-virtual {p0, v5}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_4a
    if-eqz v2, :cond_58

    .line 39
    const v6, 0x7f0f0065

    invoke-virtual {p0, v6}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 40
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_58
    const v6, 0x7f0f0066

    invoke-direct {p0, v4, v6, v8}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->setTextFromHtml(IIZ)V

    .line 43
    const v6, 0x7f0f0068

    const/4 v7, 0x1

    invoke-direct {p0, v1, v6, v7}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->setTextFromHtml(IIZ)V

    .line 44
    if-nez v0, :cond_79

    .line 45
    const v6, 0x7f0f0069

    invoke-virtual {p0, v6}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p0, v10}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_78
    return-void

    .line 48
    :cond_79
    invoke-direct {p0, v0, v10, v8}, Lcom/vlingo/client/help/wcis/WCISCompositionScreen;->setTextFromHtml(IIZ)V

    goto :goto_78
.end method
