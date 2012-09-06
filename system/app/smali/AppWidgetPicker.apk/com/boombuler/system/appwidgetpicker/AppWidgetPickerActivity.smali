.class public Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;
.super Landroid/app/Activity;
.source "AppWidgetPickerActivity.java"


# instance fields
.field private fAppWManager:Landroid/appwidget/AppWidgetManager;

.field private fAppWidgetId:I

.field private fIntent:Landroid/content/Intent;

.field private fItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boombuler/system/appwidgetpicker/SubItem;",
            ">;"
        }
    .end annotation
.end field

.field private fPManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fIntent:Landroid/content/Intent;

    .line 38
    iput-object v0, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    .line 39
    iput-object v0, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    .line 35
    return-void
.end method

.method private AddAppWidgetProviderInfos()V
    .registers 11

    .prologue
    .line 163
    iget-object v5, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    .line 165
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_11

    .line 177
    return-void

    .line 165
    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 168
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_17
    iget-object v6, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 169
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v3, Lcom/boombuler/system/appwidgetpicker/SubItem;

    iget-object v6, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v7, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v8, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v7, v8, v9, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/boombuler/system/appwidgetpicker/SubItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 170
    .local v3, itm:Lcom/boombuler/system/appwidgetpicker/SubItem;
    iget-object v6, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Lcom/boombuler/system/appwidgetpicker/SubItem;->setProvider(Landroid/content/ComponentName;)V

    .line 171
    invoke-direct {p0, v1}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->getPackageItem(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/boombuler/system/appwidgetpicker/Item;

    move-result-object v4

    .line 172
    .local v4, mainItm:Lcom/boombuler/system/appwidgetpicker/Item;
    invoke-virtual {v4}, Lcom/boombuler/system/appwidgetpicker/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_49} :catch_4a

    goto :goto_a

    .line 174
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #itm:Lcom/boombuler/system/appwidgetpicker/SubItem;
    .end local v4           #mainItm:Lcom/boombuler/system/appwidgetpicker/Item;
    :catch_4a
    move-exception v6

    goto :goto_a
.end method

.method private AddCustomAppWidgets()V
    .registers 9

    .prologue
    .line 180
    iget-object v7, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 183
    .local v4, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 184
    .local v2, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v7, "customInfo"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1a

    .line 219
    :cond_16
    :goto_16
    invoke-direct {p0, v2, v0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;)V

    .line 220
    return-void

    .line 192
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 193
    .local v3, customInfoSize:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1f
    if-lt v5, v3, :cond_2b

    .line 201
    const-string v7, "customExtras"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    if-nez v0, :cond_3c

    .line 203
    const/4 v2, 0x0

    .line 204
    goto :goto_16

    .line 194
    :cond_2b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 195
    .local v6, p:Landroid/os/Parcelable;
    if-eqz v6, :cond_37

    instance-of v7, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v7, :cond_39

    .line 196
    :cond_37
    const/4 v2, 0x0

    .line 197
    goto :goto_16

    .line 193
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 206
    .end local v6           #p:Landroid/os/Parcelable;
    :cond_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, customExtrasSize:I
    if-ne v3, v1, :cond_16

    .line 210
    const/4 v5, 0x0

    :goto_43
    if-ge v5, v1, :cond_16

    .line 211
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 212
    .restart local v6       #p:Landroid/os/Parcelable;
    if-eqz v6, :cond_51

    instance-of v7, v6, Landroid/os/Bundle;

    if-nez v7, :cond_54

    .line 213
    :cond_51
    const/4 v2, 0x0

    .line 214
    const/4 v0, 0x0

    .line 215
    goto :goto_16

    .line 210
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_43
.end method

.method private getIntent(Lcom/boombuler/system/appwidgetpicker/SubItem;)Landroid/content/Intent;
    .registers 6
    .parameter "itm"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 116
    .local v1, parcel:Landroid/os/Parcelable;
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_3b

    .line 117
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .end local v1           #parcel:Landroid/os/Parcelable;
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 123
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_14
    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 125
    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :goto_2d
    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 132
    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    :cond_3a
    return-object v0

    .line 119
    .restart local v1       #parcel:Landroid/os/Parcelable;
    :cond_3b
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_14

    .line 128
    .end local v1           #parcel:Landroid/os/Parcelable;
    :cond_49
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2d
.end method

.method private getPackageItem(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/boombuler/system/appwidgetpicker/Item;
    .registers 13
    .parameter "info"

    .prologue
    .line 138
    iget-object v8, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, packName:Ljava/lang/String;
    iget-object v8, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3e

    .line 149
    :try_start_12
    iget-object v8, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v9, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 150
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    .local v1, appIcon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 152
    .local v7, str:Ljava/lang/CharSequence;
    new-instance v5, Lcom/boombuler/system/appwidgetpicker/Item;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v1}, Lcom/boombuler/system/appwidgetpicker/Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 153
    .local v5, newItm:Lcom/boombuler/system/appwidgetpicker/Item;
    invoke-virtual {v5, v6}, Lcom/boombuler/system/appwidgetpicker/Item;->setPackageName(Ljava/lang/String;)V

    .line 154
    iget-object v8, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_3c} :catch_58

    move-object v8, v5

    .line 159
    .end local v1           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #newItm:Lcom/boombuler/system/appwidgetpicker/Item;
    .end local v7           #str:Ljava/lang/CharSequence;
    :goto_3d
    return-object v8

    .line 139
    :cond_3e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boombuler/system/appwidgetpicker/SubItem;

    .line 140
    .local v4, itm:Lcom/boombuler/system/appwidgetpicker/SubItem;
    instance-of v9, v4, Lcom/boombuler/system/appwidgetpicker/Item;

    if-eqz v9, :cond_c

    .line 141
    move-object v0, v4

    check-cast v0, Lcom/boombuler/system/appwidgetpicker/Item;

    move-object v3, v0

    .line 142
    .local v3, i:Lcom/boombuler/system/appwidgetpicker/Item;
    invoke-virtual {v3}, Lcom/boombuler/system/appwidgetpicker/Item;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v8, v3

    .line 143
    goto :goto_3d

    .line 157
    .end local v3           #i:Lcom/boombuler/system/appwidgetpicker/Item;
    .end local v4           #itm:Lcom/boombuler/system/appwidgetpicker/SubItem;
    :catch_58
    move-exception v8

    .line 159
    const/4 v8, 0x0

    goto :goto_3d
.end method

.method private putAppWidgetItems(Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p1, :cond_3

    .line 247
    :cond_2
    return-void

    .line 225
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 226
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v5, :cond_2

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 229
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v7, :cond_2a

    .line 233
    iget-object v7, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    iget-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 236
    :cond_2a
    new-instance v3, Lcom/boombuler/system/appwidgetpicker/Item;

    invoke-direct {v3, v4, v1}, Lcom/boombuler/system/appwidgetpicker/Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 237
    .local v3, item:Lcom/boombuler/system/appwidgetpicker/Item;
    new-instance v6, Lcom/boombuler/system/appwidgetpicker/SubItem;

    invoke-direct {v6, v4, v1}, Lcom/boombuler/system/appwidgetpicker/SubItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 238
    .local v6, subItem:Lcom/boombuler/system/appwidgetpicker/SubItem;
    invoke-virtual {v3}, Lcom/boombuler/system/appwidgetpicker/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/boombuler/system/appwidgetpicker/Item;->setPackageName(Ljava/lang/String;)V

    .line 241
    if-eqz p2, :cond_4f

    .line 242
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lcom/boombuler/system/appwidgetpicker/SubItem;->setExtra(Landroid/os/Bundle;)V

    .line 245
    :cond_4f
    iget-object v7, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public finishOk(Lcom/boombuler/system/appwidgetpicker/SubItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 90
    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->getIntent(Lcom/boombuler/system/appwidgetpicker/SubItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 105
    :goto_e
    invoke-virtual {p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->finish()V

    .line 106
    return-void

    .line 93
    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fAppWidgetId:I

    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1d} :catch_24

    .line 94
    const/4 v1, -0x1

    .line 103
    .local v1, result:I
    :goto_1e
    iget-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_e

    .line 95
    .end local v1           #result:I
    :catch_24
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .restart local v1       #result:I
    goto :goto_1e
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boombuler/system/appwidgetpicker/SubItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fIntent:Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 53
    const-string v2, "appWidgetId"

    .line 54
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fAppWidgetId:I

    .line 55
    invoke-virtual {p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fPManager:Landroid/content/pm/PackageManager;

    .line 56
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fAppWManager:Landroid/appwidget/AppWidgetManager;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fItems:Ljava/util/ArrayList;

    .line 59
    invoke-direct {p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->AddAppWidgetProviderInfos()V

    .line 60
    invoke-direct {p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->AddCustomAppWidgets()V

    .line 61
    iget-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity$1;

    invoke-direct {v3, p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity$1;-><init>(Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    iget-object v2, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_60

    .line 74
    new-instance v2, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    invoke-direct {v2, p0}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;-><init>(Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->showDialog(Lcom/boombuler/system/appwidgetpicker/SubItem;)V

    .line 78
    :goto_5f
    return-void

    .line 69
    :cond_60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boombuler/system/appwidgetpicker/SubItem;

    .line 70
    .local v1, itm:Lcom/boombuler/system/appwidgetpicker/SubItem;
    instance-of v3, v1, Lcom/boombuler/system/appwidgetpicker/Item;

    if-eqz v3, :cond_50

    .line 71
    check-cast v1, Lcom/boombuler/system/appwidgetpicker/Item;

    .end local v1           #itm:Lcom/boombuler/system/appwidgetpicker/SubItem;
    invoke-virtual {v1}, Lcom/boombuler/system/appwidgetpicker/Item;->sort()V

    goto :goto_50

    .line 76
    :cond_70
    invoke-virtual {p0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->finish()V

    goto :goto_5f
.end method
