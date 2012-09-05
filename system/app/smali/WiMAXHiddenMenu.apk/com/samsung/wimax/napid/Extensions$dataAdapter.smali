.class Lcom/samsung/wimax/napid/Extensions$dataAdapter;
.super Landroid/widget/BaseAdapter;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "dataAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 957
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 959
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/Extensions$dataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 960
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 963
    sget-object v0, Lcom/samsung/wimax/napid/Extensions;->mListExtArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 967
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 971
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 978
    if-nez p2, :cond_3f

    .line 979
    iget-object v1, p0, Lcom/samsung/wimax/napid/Extensions$dataAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 983
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;-><init>()V

    .line 984
    .local v0, holder:Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;
    const v1, 0x7f0800da

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    .line 985
    const v1, 0x7f0800db

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extValue:Landroid/widget/TextView;

    .line 987
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 995
    :goto_2a
    packed-switch p1, :pswitch_data_86

    .line 1025
    :goto_2d
    iget-object v2, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extValue:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/Extensions;->mListExtArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    return-object p2

    .line 991
    .end local v0           #holder:Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;
    :cond_3f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;
    goto :goto_2a

    .line 998
    :pswitch_46
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "ScanAttemptTimeOut:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1001
    :pswitch_4e
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "ScanRetries:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1004
    :pswitch_56
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "IdleSleep:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1007
    :pswitch_5e
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "EntyRx:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1010
    :pswitch_66
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "EntryCINR:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1013
    :pswitch_6e
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "EntryDelay:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1016
    :pswitch_76
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "ExitCINR:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 1019
    :pswitch_7e
    iget-object v1, v0, Lcom/samsung/wimax/napid/Extensions$dataAdapter$ViewHolder;->extLabel:Landroid/widget/TextView;

    const-string v2, "ExitDelay:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 995
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_46
        :pswitch_4e
        :pswitch_56
        :pswitch_5e
        :pswitch_66
        :pswitch_6e
        :pswitch_76
        :pswitch_7e
    .end packed-switch
.end method
