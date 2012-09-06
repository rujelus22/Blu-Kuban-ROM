.class final Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;
.super Ljava/lang/Object;
.source "ReaderAppWidget.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static autoRefresh(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 125
    .local v0, maxAge:I
    int-to-long v1, v0

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract;->withMaxAge(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static clone(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 3
    .parameter "views"

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, p:Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RemoteViews;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static createItemsUri(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 54
    sget-object v2, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    invoke-virtual {v2, p0, p1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    move v0, v2

    .line 55
    .local v0, excludeRead:Z
    :goto_a
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, ranking:Ljava/lang/String;
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 54
    .end local v0           #excludeRead:Z
    .end local v1           #ranking:Ljava/lang/String;
    :cond_13
    const/4 v2, 0x0

    move v0, v2

    goto :goto_a
.end method

.method public static createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 115
    invoke-static {p1}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->extrasHashCode(Landroid/content/Intent;)I

    move-result v1

    .line 118
    .local v1, requestCode:I
    const/high16 v0, 0x800

    .line 120
    .local v0, flags:I
    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static createViewIntent(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static createViewItemIntent(Landroid/net/Uri;JLjava/lang/CharSequence;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p0, p3}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->createViewItemIntentTemplate(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method public static createViewItemIntentTemplate(Landroid/net/Uri;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.reader.intent.action.VIEW_ITEM"

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract;->requery(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 75
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method private static extrasHashCode(Landroid/content/Intent;)I
    .registers 8
    .parameter "intent"

    .prologue
    .line 93
    const/16 v3, 0x11

    .line 94
    .local v3, result:I
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_33

    .line 96
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, key:Ljava/lang/String;
    mul-int/lit8 v5, v3, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v3, v5, v6

    .line 98
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 99
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_10

    .line 100
    mul-int/lit8 v5, v3, 0x1f

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v3, v5, v6

    goto :goto_10

    .line 104
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_33
    return v3
.end method

.method public static formatDateTime(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "context"
    .parameter "date"

    .prologue
    .line 129
    const/high16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;[II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2b

    .line 155
    :try_start_6
    const-string v0, "notifyAppWidgetViewDataChanged"

    .line 156
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, [I

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 159
    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 160
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 163
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_2b} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_2b} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_2b} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_2b} :catch_40

    .line 176
    :cond_2b
    :goto_2b
    return-void

    .line 164
    :catch_2c
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2b

    .line 166
    :catch_31
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2b

    .line 168
    :catch_36
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2b

    .line 170
    :catch_3b
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2b

    .line 172
    :catch_40
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2b
.end method
