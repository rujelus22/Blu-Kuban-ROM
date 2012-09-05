.class Lcom/samsung/wimax/napid/MruActivity$dataAdapter;
.super Landroid/widget/BaseAdapter;
.source "MruActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/MruActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "dataAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 598
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 600
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 601
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 604
    sget-object v0, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 612
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x3

    .line 619
    if-nez p2, :cond_108

    .line 620
    iget-object v1, p0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 624
    new-instance v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;-><init>()V

    .line 625
    .local v0, holder:Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;
    const v1, 0x7f0800e2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chLabel1:Landroid/widget/TextView;

    .line 626
    const v1, 0x7f0800e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chValue1:Landroid/widget/TextView;

    .line 627
    const v1, 0x7f0800e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chLabel2:Landroid/widget/TextView;

    .line 628
    const v1, 0x7f0800e5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chValue2:Landroid/widget/TextView;

    .line 629
    const v1, 0x7f0800e6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chLabel3:Landroid/widget/TextView;

    .line 630
    const v1, 0x7f0800e7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chValue3:Landroid/widget/TextView;

    .line 631
    const v1, 0x7f0800e8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->bandLabel:Landroid/widget/TextView;

    .line 632
    const v1, 0x7f0800e9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->bandValue:Landroid/widget/TextView;

    .line 633
    const v1, 0x7f0800ea

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->ffLabel:Landroid/widget/TextView;

    .line 634
    const v1, 0x7f0800eb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->ffValue:Landroid/widget/TextView;

    .line 635
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 643
    :goto_83
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chLabel1:Landroid/widget/TextView;

    const-string v2, "CH1:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chLabel2:Landroid/widget/TextView;

    const-string v2, "CH2:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chLabel3:Landroid/widget/TextView;

    const-string v2, "CH3:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->bandLabel:Landroid/widget/TextView;

    const-string v2, "BW:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->ffLabel:Landroid/widget/TextView;

    const-string v2, "FF:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v2, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chValue1:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v2, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chValue2:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v2, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->chValue3:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->centerf3:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_110

    .line 654
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->bandValue:Landroid/widget/TextView;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :goto_f3
    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_138

    .line 663
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->ffValue:Landroid/widget/TextView;

    const-string v2, "512"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :goto_107
    return-object p2

    .line 639
    .end local v0           #holder:Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;
    :cond_108
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;
    goto/16 :goto_83

    .line 656
    :cond_110
    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    if-ne v1, v4, :cond_124

    .line 657
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->bandValue:Landroid/widget/TextView;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f3

    .line 660
    :cond_124
    iget-object v2, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->bandValue:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->bandwidth:B

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f3

    .line 665
    :cond_138
    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    if-ne v1, v4, :cond_14c

    .line 666
    iget-object v1, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->ffValue:Landroid/widget/TextView;

    const-string v2, "1024"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_107

    .line 669
    :cond_14c
    iget-object v2, v0, Lcom/samsung/wimax/napid/MruActivity$dataAdapter$ViewHolder;->ffValue:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/MruActivity;->mListChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;

    iget-byte v1, v1, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->fftSize:B

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_107
.end method
