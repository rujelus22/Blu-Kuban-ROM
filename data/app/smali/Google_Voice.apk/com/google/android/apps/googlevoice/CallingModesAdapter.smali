.class public Lcom/google/android/apps/googlevoice/CallingModesAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallingModesAdapter.java"


# instance fields
.field private benefits:[Ljava/lang/String;

.field private entries:[Ljava/lang/String;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 9
    .parameter "context"
    .parameter "serverSettings"
    .parameter "voicePreferences"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/googlevoice/R$array;->mode_preference_entries:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, allEntries:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/apps/googlevoice/R$array;->mode_preference_benefits:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, allBenefits:[Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getModes(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 39
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->entries:[Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->benefits:[Ljava/lang/String;

    .line 41
    const/4 v2, 0x0

    .local v2, i:I
    :goto_38
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    array-length v3, v3

    if-ge v2, v3, :cond_5c

    .line 42
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->entries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ordinal()I

    move-result v4

    aget-object v4, v1, v4

    aput-object v4, v3, v2

    .line 43
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->benefits:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ordinal()I

    move-result v4

    aget-object v4, v0, v4

    aput-object v4, v3, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 45
    :cond_5c
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->entries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->entries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 55
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    .line 56
    .local v0, listView:Landroid/widget/ListView;
    if-nez p2, :cond_5d

    .line 57
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/google/android/apps/googlevoice/R$layout;->call_routing_item:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 61
    .local v5, view:Landroid/view/View;
    :goto_f
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, main:Landroid/widget/TextView;
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->secondary:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 63
    .local v4, secondary:Landroid/widget/TextView;
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->radio:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 65
    .local v3, radio:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->entries:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->benefits:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v6

    if-lez v6, :cond_5f

    move v6, v7

    :goto_3c
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 69
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v2

    .line 70
    .local v2, mode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    if-eqz v2, :cond_51

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aget-object v6, v6, p1

    if-ne v6, v2, :cond_51

    const/4 v7, 0x1

    :cond_51
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 71
    new-instance v6, Lcom/google/android/apps/googlevoice/CallingModesAdapter$1;

    invoke-direct {v6, p0, v0, v5, p1}, Lcom/google/android/apps/googlevoice/CallingModesAdapter$1;-><init>(Lcom/google/android/apps/googlevoice/CallingModesAdapter;Landroid/widget/ListView;Landroid/view/View;I)V

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-object v5

    .line 59
    .end local v1           #main:Landroid/widget/TextView;
    .end local v2           #mode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .end local v3           #radio:Landroid/widget/RadioButton;
    .end local v4           #secondary:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_5d
    move-object v5, p2

    .restart local v5       #view:Landroid/view/View;
    goto :goto_f

    .line 67
    .restart local v1       #main:Landroid/widget/TextView;
    .restart local v3       #radio:Landroid/widget/RadioButton;
    .restart local v4       #secondary:Landroid/widget/TextView;
    :cond_5f
    const/16 v6, 0x8

    goto :goto_3c
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
