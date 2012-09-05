.class Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

    .line 219
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 225
    move-object v3, p2

    .line 227
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_15

    .line 228
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 229
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030018

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 232
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_15
    invoke-virtual {p0, p1}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    .line 234
    .local v0, item:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;
    const v5, 0x7f090048

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 235
    .local v1, txtItemTitle:Landroid/widget/TextView;
    const v5, 0x7f090049

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    .local v2, txtItemValue:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 239
    iget-object v5, v0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v5, v0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;->value:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-object v3
.end method
