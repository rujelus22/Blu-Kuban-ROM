.class public Lcom/google/android/apps/googlevoice/PhonesAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhonesAdapter.java"


# instance fields
.field private canAddNewPhones:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private maxPhones:I

.field private phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/apps/googlevoice/core/Phone;Ljava/lang/String;IZ)V
    .registers 7
    .parameter "context"
    .parameter "phones"
    .parameter "selectedPhoneNumber"
    .parameter "maxPhones"
    .parameter "canAddNewPhones"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->selectedPhoneNumber:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->maxPhones:I

    .line 41
    iput-boolean p5, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->canAddNewPhones:Z

    .line 42
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->canAddNewPhones:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->maxPhones:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_12
.end method

.method public getItem(I)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 3
    .parameter "position"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Phone;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->getItem(I)Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    int-to-long v0, p1

    :goto_9
    return-wide v0

    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_9
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 53
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    .line 54
    .local v0, listView:Landroid/widget/ListView;
    if-nez p2, :cond_65

    .line 55
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/google/android/apps/googlevoice/R$layout;->choose_phone_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 59
    .local v5, view:Landroid/view/View;
    :goto_f
    sget v7, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, main:Landroid/widget/TextView;
    sget v7, Lcom/google/android/apps/googlevoice/R$id;->secondary:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 61
    .local v4, secondary:Landroid/widget/TextView;
    sget v7, Lcom/google/android/apps/googlevoice/R$id;->radio:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 63
    .local v3, radio:Landroid/widget/RadioButton;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_67

    .line 64
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/core/Phone;

    .line 65
    .local v2, phone:Lcom/google/android/apps/googlevoice/core/Phone;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Phone;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Phone;->getDisplayNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 68
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->selectedPhoneNumber:Ljava/lang/String;

    if-eqz v7, :cond_59

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->selectedPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    const/4 v6, 0x1

    :cond_59
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    new-instance v6, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;

    invoke-direct {v6, p0, v0, v5, p1}, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;-><init>(Lcom/google/android/apps/googlevoice/PhonesAdapter;Landroid/widget/ListView;Landroid/view/View;I)V

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .end local v2           #phone:Lcom/google/android/apps/googlevoice/core/Phone;
    :goto_64
    return-object v5

    .line 57
    .end local v1           #main:Landroid/widget/TextView;
    .end local v3           #radio:Landroid/widget/RadioButton;
    .end local v4           #secondary:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_65
    move-object v5, p2

    .restart local v5       #view:Landroid/view/View;
    goto :goto_f

    .line 78
    .restart local v1       #main:Landroid/widget/TextView;
    .restart local v3       #radio:Landroid/widget/RadioButton;
    .restart local v4       #secondary:Landroid/widget/TextView;
    :cond_67
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->choose_phone_add_main:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 79
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->choose_phone_add_secondary:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 80
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_64
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public setPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V
    .registers 7
    .parameter "phones"

    .prologue
    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    .line 107
    if-eqz p1, :cond_20

    .line 108
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Phone;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v2, :cond_20

    aget-object v3, v0, v1

    .line 109
    .local v3, phone:Lcom/google/android/apps/googlevoice/core/Phone;
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Phone;->isPhysicalPhone()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 110
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->phones:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 114
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Phone;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #phone:Lcom/google/android/apps/googlevoice/core/Phone;
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public setSelectedPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedPhoneNumber"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter;->selectedPhoneNumber:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method
