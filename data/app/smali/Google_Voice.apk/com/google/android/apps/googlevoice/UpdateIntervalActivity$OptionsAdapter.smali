.class Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpdateIntervalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field private entries:[Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    .line 124
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$array;->update_interval_preference_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->entries:[Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->entries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->entries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 136
    if-nez p2, :cond_4f

    .line 137
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/google/android/apps/googlevoice/R$layout;->choose_simple_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, view:Landroid/view/View;
    :goto_10
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, main:Landroid/widget/TextView;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->radio:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 144
    .local v1, radio:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->entries:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 146
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    #getter for: Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->access$100(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUpdateIntervalSeconds()I

    move-result v2

    .line 147
    .local v2, seconds:I
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;->this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    #getter for: Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->values:[Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->access$200(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_43

    const/4 v4, 0x1

    :cond_43
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 148
    new-instance v4, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter$1;-><init>(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$OptionsAdapter;I)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-object v3

    .line 139
    .end local v0           #main:Landroid/widget/TextView;
    .end local v1           #radio:Landroid/widget/RadioButton;
    .end local v2           #seconds:I
    .end local v3           #view:Landroid/view/View;
    :cond_4f
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_10
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
