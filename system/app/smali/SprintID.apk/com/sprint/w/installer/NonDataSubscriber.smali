.class public Lcom/sprint/w/installer/NonDataSubscriber;
.super Landroid/app/Activity;
.source "NonDataSubscriber.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v4, 0x7f030016

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->setContentView(I)V

    .line 21
    const v4, 0x7f0c0039

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 22
    .local v1, nonDataTitle:Landroid/widget/TextView;
    const v4, 0x7f0600bd

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    const v4, 0x7f0c003b

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    .local v0, nonDataBody:Landroid/widget/TextView;
    const v4, 0x7f0c003c

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 25
    .local v2, zoneBtn:Landroid/widget/Button;
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getZoneLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, zone_label:Ljava/lang/String;
    if-eqz v3, :cond_76

    .line 28
    const v4, 0x7f0600be

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v4, Lcom/sprint/w/installer/NonDataSubscriber$1;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/NonDataSubscriber$1;-><init>(Lcom/sprint/w/installer/NonDataSubscriber;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :goto_66
    const v4, 0x7f0c003d

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sprint/w/installer/NonDataSubscriber$3;

    invoke-direct {v5, p0}, Lcom/sprint/w/installer/NonDataSubscriber$3;-><init>(Lcom/sprint/w/installer/NonDataSubscriber;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void

    .line 36
    :cond_76
    const v4, 0x7f0600f4

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v4, 0x7f0600ef

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/NonDataSubscriber;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v4, Lcom/sprint/w/installer/NonDataSubscriber$2;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/NonDataSubscriber$2;-><init>(Lcom/sprint/w/installer/NonDataSubscriber;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_66
.end method
