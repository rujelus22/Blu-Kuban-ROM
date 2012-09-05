.class public Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;
.super Landroid/app/IntentService;
.source "BuddiesWidgetService.java"


# static fields
.field public static mIsContactsChanged:Z


# instance fields
.field private final SHARED_PREFS_FILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->mIsContactsChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "BuddiesWidgetService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "Prefs_Buddies_State"

    iput-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->SHARED_PREFS_FILE:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private checkAndUnregisterContentObserver(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 367
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidget;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 370
    const-string v1, "Prefs_Buddies_State"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 374
    array-length v4, v2

    move v1, v0

    :goto_21
    if-ge v1, v4, :cond_38

    aget v5, v2, v1

    .line 375
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 376
    if-eqz v5, :cond_53

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 377
    const/4 v0, 0x1

    .line 382
    :cond_38
    if-nez v0, :cond_52

    .line 383
    sget-object v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    if-eqz v0, :cond_52

    .line 384
    const-string v0, "Buddies--------------------------->"

    const-string v1, "No contact is assigned to ANY of the widget, unregistering the content observer!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 388
    sput-object v7, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    .line 389
    sput-object v7, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    .line 392
    :cond_52
    return-void

    .line 374
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method private createEmptyWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f070003

    const/high16 v4, 0x7f07

    const/4 v3, 0x0

    .line 325
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEmptyWidget for the widget Id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz p4, :cond_36

    .line 327
    const-string v0, "Prefs_Buddies_State"

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Empty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    :cond_36
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/buddiesnow/BuddySelection;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    const-string v2, "widgetId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-static {p2, p3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 341
    const v2, 0x7f070001

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 343
    invoke-direct {p0, p2}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 346
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 347
    const v1, 0x7f050001

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 348
    const v1, 0x7f070002

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 349
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 353
    invoke-virtual {p1, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 354
    return-void
.end method

.method private getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getEmptyBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private onDeleted(Landroid/content/Context;[I)V
    .registers 12
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 143
    const-string v6, "Buddies--------------------------->"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service:onDeleted called, appWidgetIds : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v6, "Prefs_Buddies_State"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 148
    .local v5, sharedPrefs:Landroid/content/SharedPreferences;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_23
    if-ge v2, v3, :cond_50

    aget v0, v1, v2

    .line 149
    .local v0, appWidgetId:I
    const-string v6, "Buddies--------------------------->"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing shared prefs data for widgte id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 152
    .local v4, prefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 155
    .end local v0           #appWidgetId:I
    .end local v4           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_50
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->checkAndUnregisterContentObserver(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method private onDisabled(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 160
    const-string v0, "Buddies--------------------------->"

    const-string v1, "Service:onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    if-eqz v0, :cond_19

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    sput-object v2, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    .line 164
    sput-object v2, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    .line 166
    :cond_19
    return-void
.end method

.method private onEnabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 170
    const-string v0, "Buddies--------------------------->"

    const-string v1, "Service: onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method private onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 175
    const-string v0, "Buddies--------------------------->"

    const-string v1, "Service:Original onUpdate called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->updateAllAppWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 179
    return-void
.end method

.method private updateAllAppWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 15
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v10, 0x0

    .line 184
    const-string v7, "Prefs_Buddies_State"

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 187
    .local v5, sharedPrefs:Landroid/content/SharedPreferences;
    move-object v0, p3

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_96

    aget v6, v0, v2

    .line 189
    .local v6, widgetId:I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, contactUri:Ljava/lang/String;
    const-string v7, "Buddies--------------------------->"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact Uri obtained from sharedPrefs: contact Uri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for widgtet Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez v1, :cond_5a

    .line 196
    const-string v7, "Buddies--------------------------->"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New widget being added, Adding Unknown contact as Uri to shared prefs for widget Id :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v7, 0x1

    invoke-direct {p0, p2, p1, v6, v7}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->createEmptyWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V

    .line 187
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 200
    :cond_5a
    const-string v7, "Empty"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 203
    const-string v7, "Buddies--------------------------->"

    const-string v8, "contact Uri from sharedPrefs is EMPTY, displaying empty widget"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, p2, p1, v6, v10}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->createEmptyWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V

    goto :goto_57

    .line 205
    :cond_6d
    const-string v7, "content://"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 206
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 207
    .local v4, newContactUri:Landroid/net/Uri;
    invoke-direct {p0, p1, p2, v6, v4}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/net/Uri;)V

    goto :goto_57

    .line 209
    .end local v4           #newContactUri:Landroid/net/Uri;
    :cond_7d
    const-string v7, "Buddies--------------------------->"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Contact Uri from shared prefs is NOT a valid Uri string , contactUri is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 214
    .end local v1           #contactUri:Ljava/lang/String;
    .end local v6           #widgetId:I
    :cond_96
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->checkAndUnregisterContentObserver(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method private updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/net/Uri;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const v9, 0x7f070002

    const/high16 v8, 0x7f07

    const v6, 0x7f070004

    const/4 v7, 0x0

    .line 219
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppWidget() appWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contactUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {p1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    move-result-object v1

    .line 222
    const-string v0, "Buddies--------------------------->"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "birthday value for before query :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getmBirthDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getmBirthDay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 225
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->setmBirthDay(Ljava/lang/String;)V

    .line 226
    :cond_56
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getmAnniversary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 227
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->setmAnniversary(Ljava/lang/String;)V

    .line 231
    :cond_60
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 234
    :try_start_63
    invoke-virtual {v1, p1, p4}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->query(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Boolean;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_78

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_96

    .line 243
    const-string v0, "Buddies--------------------------->"

    const-string v1, "mCursorStatus is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0, p2, p1, p3, v4}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->createEmptyWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V

    .line 320
    :goto_77
    return-void

    .line 235
    :catch_78
    move-exception v0

    .line 236
    const-string v1, "Buddies--------------------------->"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while querying contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 250
    :cond_96
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->isBirthdayToday()Z

    move-result v2

    .line 251
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->isAnniversaryToday()Z

    move-result v3

    .line 252
    if-nez v2, :cond_a2

    if-eqz v3, :cond_139

    .line 253
    :cond_a2
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030001

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 254
    if-eqz v2, :cond_119

    if-eqz v3, :cond_119

    .line 255
    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    const v2, 0x7f020007

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 271
    :goto_bb
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getBuddyPhoto()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 272
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getBuddyName()Ljava/lang/String;

    move-result-object v3

    .line 274
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidget;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    const-string v5, "com.sec.android.widgetapp.buddiesnow.WidgetClick"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v5, "ContactUri"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    const-string v5, "widgetId"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getmSelectedBuddyID()J

    move-result-wide v5

    long-to-int v1, v5

    const/high16 v5, 0x800

    invoke-static {p1, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 282
    const v4, 0x7f070001

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 284
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 285
    if-nez v3, :cond_146

    .line 286
    const v1, 0x7f050002

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 292
    :goto_f9
    if-nez v2, :cond_14a

    .line 293
    const-string v1, "Buddies--------------------------->"

    const-string v2, "Buddy image has no photo!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->getEmptyBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 296
    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 314
    :goto_10c
    const v1, 0x7f070003

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_77

    .line 257
    :cond_119
    if-eqz v2, :cond_125

    .line 258
    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 259
    const v2, 0x7f020007

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_bb

    .line 261
    :cond_125
    if-eqz v3, :cond_131

    .line 262
    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    const v2, 0x7f020006

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_bb

    .line 265
    :cond_131
    const-string v2, "Buddies--------------------------->"

    const-string v3, "Contact has no events"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 269
    :cond_139
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_bb

    .line 289
    :cond_146
    invoke-virtual {v0, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_f9

    .line 298
    :cond_14a
    const-string v1, "Buddies--------------------------->"

    const-string v3, "Buddy photo is obtained"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "SPH-D710"

    const-string v3, "SGH-I927"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, "SPH-D710"

    const-string v3, "GT-N7000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 303
    :cond_165
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2, v1, v3}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getRoundedCornerBitmapLand(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    :goto_174
    invoke-virtual {v0, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 311
    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_10c

    .line 308
    :cond_17b
    const/4 v1, 0x5

    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_174
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 48
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidget;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 57
    const-string v3, "com.sec.android.widgetapp.buddiesnow.updateWidgetAll"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 58
    const-string v0, "Buddies--------------------------->"

    const-string v3, "Service:OnRecive ACTION_UPDATE_ALL_WIDGET called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, p0, v1, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->updateAllAppWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 139
    :cond_2e
    :goto_2e
    return-void

    .line 60
    :cond_2f
    const-string v3, "com.sec.android.widgetapp.buddiesnow.updateWidget"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 62
    const-string v0, "widgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 63
    const-string v0, "Buddies--------------------------->"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service:OnRecive ACTION_UPDATE_WIDGET , the AppwidgetId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "ContactUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 66
    check-cast v0, Landroid/net/Uri;

    .line 68
    const-string v3, "Prefs_Buddies_State"

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 70
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 71
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    invoke-direct {p0, p0, v1, v2, v0}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/net/Uri;)V

    goto :goto_2e

    .line 75
    :cond_7a
    const-string v3, "com.sec.android.widgetapp.buddiesnow.WidgetClick"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 76
    const-string v0, "Buddies--------------------------->"

    const-string v1, "Service:ACTION_WIDGET_CLICKED received, showing Quick contact"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 80
    :cond_8a
    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 83
    :cond_9a
    invoke-direct {p0, p0, v1, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->updateAllAppWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_2e

    .line 90
    :cond_9e
    const-string v3, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 91
    const-string v0, "Buddies--------------------------->"

    const-string v3, "Service:OnReceive ACTION_HOME_RESUME called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "SPH-D710"

    const-string v3, "SGH-I927"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    const-string v0, "SPH-D710"

    const-string v3, "GT-N7000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 104
    :cond_c1
    invoke-direct {p0, p0, v1, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->updateAllAppWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_2e

    .line 115
    :cond_c6
    const-string v0, "Prefs_Buddies_State"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_da

    sget-boolean v0, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->mIsContactsChanged:Z

    if-eqz v0, :cond_2e

    .line 119
    :cond_da
    invoke-direct {p0, p0, v1, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->updateAllAppWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 120
    sput-boolean v5, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->mIsContactsChanged:Z

    goto/16 :goto_2e

    .line 123
    :cond_e1
    const-string v1, "sec.android.intent.action.onUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 124
    const-string v0, "widgetIdList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 125
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-direct {p0, p0, v1, v0}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_2e

    .line 126
    :cond_f8
    const-string v1, "sec.android.intent.action.onEnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 127
    invoke-direct {p0, p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->onEnabled(Landroid/content/Context;)V

    goto/16 :goto_2e

    .line 129
    :cond_105
    const-string v1, "sec.android.intent.action.onDisable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 130
    invoke-direct {p0, p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->onDisabled(Landroid/content/Context;)V

    goto/16 :goto_2e

    .line 132
    :cond_112
    const-string v1, "sec.android.intent.action.onDeleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 134
    const-string v0, "widgetIdList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 135
    invoke-direct {p0, p0, v0}, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->onDeleted(Landroid/content/Context;[I)V

    goto/16 :goto_2e
.end method
