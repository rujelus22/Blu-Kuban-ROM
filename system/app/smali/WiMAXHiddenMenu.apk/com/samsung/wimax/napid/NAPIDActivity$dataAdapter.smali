.class Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter;
.super Landroid/widget/BaseAdapter;
.source "NAPIDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/NAPIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "dataAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 960
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 962
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 963
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 967
    sget-object v0, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 972
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 977
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 984
    if-nez p2, :cond_79

    .line 985
    iget-object v1, p0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 989
    new-instance v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;-><init>()V

    .line 990
    .local v0, holder:Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;
    const v1, 0x7f0800dc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdLabel:Landroid/widget/TextView;

    .line 991
    const v1, 0x7f0800dd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdValue:Landroid/widget/TextView;

    .line 992
    const v1, 0x7f0800de

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdPrtLabel:Landroid/widget/TextView;

    .line 993
    const v1, 0x7f0800df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdPrtValue:Landroid/widget/TextView;

    .line 994
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1002
    :goto_40
    iget-object v1, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdLabel:Landroid/widget/TextView;

    const-string v2, "NAPID:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v1, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdPrtLabel:Landroid/widget/TextView;

    const-string v2, "PRIORITY:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_63

    .line 1006
    iget-object v2, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdValue:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listNapIdArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    :cond_63
    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listPrtArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_78

    .line 1010
    iget-object v2, v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;->napIdPrtValue:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/wimax/napid/NAPIDActivity;->listPrtArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    :cond_78
    return-object p2

    .line 998
    .end local v0           #holder:Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;
    :cond_79
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/samsung/wimax/napid/NAPIDActivity$dataAdapter$ViewHolder;
    goto :goto_40
.end method
