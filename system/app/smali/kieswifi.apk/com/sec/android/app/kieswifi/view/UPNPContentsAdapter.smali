.class public Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UPNPContentsAdapter.java"


# instance fields
.field protected checkMode:Z

.field protected context:Landroid/content/Context;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemLayout:I

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 7
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->itemLayout:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->checkMode:Z

    .line 21
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->list:Ljava/util/List;

    .line 22
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->context:Landroid/content/Context;

    .line 26
    if-nez p3, :cond_26

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->list:Ljava/util/List;

    .line 36
    :goto_17
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->context:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->itemLayout:I

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    return-void

    .line 32
    :cond_26
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Item size *** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 33
    iput-object p3, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->list:Ljava/util/List;

    goto :goto_17
.end method

.method private convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, sublen:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v1, sbuf:Ljava/lang/StringBuffer;
    if-nez p1, :cond_b

    .line 92
    const-string v3, ""

    .line 104
    :goto_a
    return-object v3

    .line 93
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_30

    const/16 v3, 0x13

    if-ge v2, v3, :cond_30

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2d

    .line 95
    add-int/lit8 v2, v2, 0x2

    .line 98
    :goto_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 97
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 100
    :cond_30
    const/16 v3, 0x12

    if-le v2, v3, :cond_4b

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4b
    move-object v3, p1

    .line 104
    goto :goto_a
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, count:I
    if-nez p2, :cond_15

    .line 59
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->itemLayout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, itemView:Landroid/view/View;
    :goto_c
    if-ltz p1, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_17

    .line 84
    :cond_14
    :goto_14
    return-object v2

    .line 61
    .end local v2           #itemView:Landroid/view/View;
    :cond_15
    move-object v2, p2

    .restart local v2       #itemView:Landroid/view/View;
    goto :goto_c

    .line 68
    :cond_17
    invoke-virtual {p0, p1}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/api/DeviceItem;

    .line 70
    .local v1, item:Lcom/samsung/api/DeviceItem;
    move v0, p1

    :goto_1e
    if-lez v0, :cond_37

    .line 72
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/api/DeviceItem;

    invoke-virtual {v1, v4}, Lcom/samsung/api/DeviceItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 74
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 70
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 78
    :cond_37
    const v4, 0x7f050035

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    .local v3, radio:Landroid/widget/TextView;
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 80
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method
