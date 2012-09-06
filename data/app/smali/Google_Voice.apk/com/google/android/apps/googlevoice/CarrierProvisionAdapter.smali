.class public Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarrierProvisionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;
    }
.end annotation


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private optionDescriptions:[Ljava/lang/String;

.field private optionNames:[Ljava/lang/String;

.field private selectedOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;)V
    .registers 5
    .parameter "layoutInflater"
    .parameter "resources"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 40
    sget v0, Lcom/google/android/apps/googlevoice/R$array;->setup_carrier_provision_options:I

    invoke-interface {p2, v0}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionNames:[Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->values()[Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_1f

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Carrier provisioning options array and Choice enum have unequal lengths"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1f
    sget v0, Lcom/google/android/apps/googlevoice/R$array;->setup_carrier_provision_option_descriptions:I

    invoke-interface {p2, v0}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionDescriptions:[Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionNames:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionDescriptions:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_37

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Carrier provisioning options and descriptions arrays have unequal lengths"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_37
    return-void
.end method


# virtual methods
.method public clearSelectedOption()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->selectedOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;
    .registers 3
    .parameter "position"

    .prologue
    .line 83
    if-ltz p1, :cond_10

    invoke-static {}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->values()[Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_10

    invoke-static {}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->values()[Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-result-object v0

    aget-object v0, v0, p1

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->getItem(I)Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    .line 61
    .local v0, listView:Landroid/widget/ListView;
    if-nez p2, :cond_53

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/google/android/apps/googlevoice/R$layout;->setup_carrier_provision_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 64
    .local v4, view:Landroid/view/View;
    :goto_e
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, main:Landroid/widget/TextView;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->secondary:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, secondary:Landroid/widget/TextView;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->radio:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 68
    .local v2, radio:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionNames:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->optionDescriptions:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->selectedOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->selectedOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    invoke-static {}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->values()[Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x1

    :goto_47
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    new-instance v5, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$1;

    invoke-direct {v5, p0, v0, v4, p1}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$1;-><init>(Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;Landroid/widget/ListView;Landroid/view/View;I)V

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v4

    .end local v1           #main:Landroid/widget/TextView;
    .end local v2           #radio:Landroid/widget/RadioButton;
    .end local v3           #secondary:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_53
    move-object v4, p2

    .line 61
    goto :goto_e

    .line 70
    .restart local v1       #main:Landroid/widget/TextView;
    .restart local v2       #radio:Landroid/widget/RadioButton;
    .restart local v3       #secondary:Landroid/widget/TextView;
    .restart local v4       #view:Landroid/view/View;
    :cond_55
    const/4 v5, 0x0

    goto :goto_47
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public setSelectedOption(Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;)V
    .registers 2
    .parameter "selectedOption"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->selectedOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    .line 98
    return-void
.end method
