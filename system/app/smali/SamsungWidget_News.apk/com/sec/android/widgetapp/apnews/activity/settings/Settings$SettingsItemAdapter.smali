.class public Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVi:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    .line 160
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 161
    iput-object p4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->items:Ljava/util/ArrayList;

    .line 162
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 166
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;

    .line 167
    .local v0, item:Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;
    const/4 v6, 0x0

    .line 168
    .local v6, tagName:Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 169
    iget-object v6, v0, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingsName:Ljava/lang/String;

    .line 171
    const-string v9, "AP Mobile news"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 172
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    :cond_22
    move-object v8, p2

    .line 178
    .local v8, view:Landroid/view/View;
    if-nez v8, :cond_3b

    .line 179
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    iput-object v9, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->mVi:Landroid/view/LayoutInflater;

    .line 180
    iget-object v9, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->mVi:Landroid/view/LayoutInflater;

    const v10, 0x7f030015

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 183
    :cond_3b
    if-eqz v0, :cond_9f

    .line 184
    const v9, 0x7f0c0031

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 185
    .local v5, parentview:Landroid/widget/LinearLayout;
    const v9, 0x7f0c0034

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 186
    .local v4, parentsubview:Landroid/widget/LinearLayout;
    const v9, 0x7f0c0032

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 187
    .local v7, textview:Landroid/widget/TextView;
    const v9, 0x7f0c0035

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 188
    .local v1, mCheckBox:Landroid/widget/CheckBox;
    const v9, 0x7f0c0033

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 190
    .local v2, mView:Landroid/view/View;
    if-eqz v7, :cond_6d

    .line 191
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_6d
    iget v3, v0, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingsID:I

    .line 196
    .local v3, myPosition:I
    if-eqz v5, :cond_79

    .line 197
    new-instance v9, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;

    invoke-direct {v9, p0, v5, p1}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_79
    sget-boolean v9, Lcom/sec/android/widgetapp/apnews/engine/Util;->ENABLE_SETTING_CHECKBOX:Z

    if-nez v9, :cond_a5

    .line 219
    if-eqz v4, :cond_87

    .line 220
    new-instance v9, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;

    invoke-direct {v9, p0, v4, v1, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_87
    if-eqz v1, :cond_99

    .line 236
    iget-boolean v9, v0, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingCheck:Z

    if-eqz v9, :cond_a0

    .line 237
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 241
    :goto_91
    new-instance v9, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;

    invoke-direct {v9, p0, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    :cond_99
    if-eqz v2, :cond_9f

    .line 263
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .end local v1           #mCheckBox:Landroid/widget/CheckBox;
    .end local v2           #mView:Landroid/view/View;
    .end local v3           #myPosition:I
    .end local v4           #parentsubview:Landroid/widget/LinearLayout;
    .end local v5           #parentview:Landroid/widget/LinearLayout;
    .end local v7           #textview:Landroid/widget/TextView;
    :cond_9f
    :goto_9f
    return-object v8

    .line 239
    .restart local v1       #mCheckBox:Landroid/widget/CheckBox;
    .restart local v2       #mView:Landroid/view/View;
    .restart local v3       #myPosition:I
    .restart local v4       #parentsubview:Landroid/widget/LinearLayout;
    .restart local v5       #parentview:Landroid/widget/LinearLayout;
    .restart local v7       #textview:Landroid/widget/TextView;
    :cond_a0
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_91

    .line 266
    :cond_a5
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 268
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9f
.end method
