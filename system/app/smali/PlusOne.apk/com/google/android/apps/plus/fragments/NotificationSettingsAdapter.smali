.class public Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$1;,
        Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .registers 8
    .parameter "view"
    .parameter "position"

    .prologue
    .line 181
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, textView:Landroid/widget/TextView;
    sget-object v3, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$1;->$SwitchMap$com$google$android$apps$plus$fragments$NotificationSettingsAdapter$ViewType:[I

    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getViewType(I)Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_30

    .line 193
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 184
    :pswitch_18
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getCategory(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    .line 185
    .local v0, category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .end local v0           #category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    :goto_23
    return-void

    .line 189
    :pswitch_24
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getSetting(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v1

    .line 190
    .local v1, setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 182
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_18
        :pswitch_24
    .end packed-switch
.end method

.method private getCategory(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 3
    .parameter "position"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    return-object v0
.end method

.method private getSetting(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 3
    .parameter "position"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return-object v0
.end method

.method private getViewType(I)Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;
    .registers 6
    .parameter "position"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    if-eqz v1, :cond_b

    .line 123
    sget-object v1, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->CATEGORY:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    .line 125
    :goto_a
    return-object v1

    .line 124
    :cond_b
    instance-of v1, v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    if-eqz v1, :cond_12

    .line 125
    sget-object v1, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->SETTING:Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    goto :goto_a

    .line 127
    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget-object v1, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$1;->$SwitchMap$com$google$android$apps$plus$fragments$NotificationSettingsAdapter$ViewType:[I

    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getViewType(I)Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2e

    .line 170
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 166
    :pswitch_1e
    const v1, 0x7f030049

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 168
    :goto_25
    return-object v1

    :pswitch_26
    const v1, 0x7f03004b

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_25

    .line 164
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_32

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    if-eqz v1, :cond_1e

    .line 91
    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    .line 96
    :goto_1d
    return-wide v1

    .line 92
    .restart local v0       #item:Ljava/lang/Object;
    :cond_1e
    instance-of v1, v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    if-eqz v1, :cond_32

    .line 93
    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_1d

    .line 96
    :cond_32
    const-wide/high16 v1, -0x8000

    goto :goto_1d
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getViewType(I)Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 202
    move-object v0, p2

    .line 203
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_7

    .line 204
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 206
    :cond_7
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->bindView(Landroid/view/View;I)V

    .line 207
    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 112
    invoke-static {}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;->values()[Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return v0
.end method

.method public setNotificationSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V
    .registers 6
    .parameter "settings"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 39
    if-eqz p1, :cond_3a

    .line 40
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getCategoriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    .line 42
    .local v0, category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->clearSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getSettingsList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 47
    .end local v0           #category:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->notifyDataSetChanged()V

    .line 51
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_39
    return-void

    .line 49
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsAdapter;->notifyDataSetInvalidated()V

    goto :goto_39
.end method
