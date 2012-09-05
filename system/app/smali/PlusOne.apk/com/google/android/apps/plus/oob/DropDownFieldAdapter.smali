.class final Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;
.super Landroid/widget/BaseAdapter;
.source "DropDownFieldAdapter.java"


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->mItems:Ljava/util/List;

    .line 25
    return-void
.end method

.method private getTextView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/widget/TextView;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 52
    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    .line 53
    .local v3, view:Landroid/widget/TextView;
    if-nez v3, :cond_14

    .line 54
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 56
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v1, p4, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3           #view:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 58
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #view:Landroid/widget/TextView;
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->getItem(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v2

    .line 59
    .local v2, item:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object v3
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    const v0, 0x1090009

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->getTextView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .registers 3
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->getItem(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 68
    const v0, 0x1090008

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->getTextView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;)I
    .registers 7
    .parameter "value"

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->toByteArray()[B

    move-result-object v3

    .line 89
    .local v3, valueBytes:[B
    const/4 v2, 0x0

    .local v2, position:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->getCount()I

    move-result v0

    .local v0, count:I
    :goto_9
    if-ge v2, v0, :cond_27

    .line 90
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/oob/DropDownFieldAdapter;->getItem(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;

    move-result-object v1

    .line 91
    .local v1, option:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 95
    .end local v1           #option:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .end local v2           #position:I
    :goto_23
    return v2

    .line 89
    .restart local v1       #option:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    .restart local v2       #position:I
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 95
    .end local v1           #option:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOption;
    :cond_27
    const/4 v2, -0x1

    goto :goto_23
.end method
