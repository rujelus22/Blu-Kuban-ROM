.class public Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;
.super Ljava/lang/Object;
.source "AndroidWidgetIntegratedRendererHoneycombOrLater.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater$1;
    }
.end annotation


# instance fields
.field private appWidgetIds:[I

.field private callSettingsIntent:Landroid/app/PendingIntent;

.field private composeIntent:Landroid/app/PendingIntent;

.field private inboxIntent:Landroid/app/PendingIntent;

.field private final versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private final widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;Lcom/google/android/apps/googlevoice/system/VersionHelper;)V
    .registers 3
    .parameter "widgetManager"
    .parameter "versionHelper"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    .line 45
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 46
    return-void
.end method

.method private declared-synchronized getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;
    .registers 6
    .parameter "context"
    .parameter "state"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->callSettingsIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_24

    .line 224
    invoke-interface {p2, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->hasTelephony(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->shouldInterceptCalls()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.CycleCallRoutingModeActivity.TOAST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->callSettingsIntent:Landroid/app/PendingIntent;

    .line 234
    .end local v0           #intent:Landroid/content/Intent;
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->callSettingsIntent:Landroid/app/PendingIntent;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3d

    monitor-exit p0

    return-object v1

    .line 229
    :cond_28
    :try_start_28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NOOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->callSettingsIntent:Landroid/app/PendingIntent;
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3d

    goto :goto_24

    .line 223
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 198
    if-eqz p2, :cond_d

    .line 199
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater$1;->$SwitchMap$com$google$android$apps$googlevoice$VoicePreferences$Mode:[I

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 212
    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0

    .line 201
    :pswitch_10
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_all:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 203
    :pswitch_17
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_ask:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 205
    :pswitch_1e
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_ask_intl:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 207
    :pswitch_25
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_intl:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 209
    :pswitch_2c
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 199
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_10
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method private declared-synchronized getComposeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 3
    .parameter "context"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->composeIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_d

    .line 217
    const-class v0, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getPendingIndentForActivity(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->composeIntent:Landroid/app/PendingIntent;

    .line 219
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->composeIntent:Landroid/app/PendingIntent;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 216
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->inboxIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1c

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->inboxIntent:Landroid/app/PendingIntent;

    .line 130
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->inboxIntent:Landroid/app/PendingIntent;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v1

    .line 124
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getPendingIndentForActivity(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, activity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 134
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setButtonsIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 148
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_header:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 149
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getComposeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 150
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_icon:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 152
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 154
    return-void
.end method

.method private setButtonsIntentsSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 157
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 158
    return-void
.end method

.method private updateAccountBalance(Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "views"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getAccountBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, balance:Ljava/lang/String;
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_icon:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 163
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 164
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method private updateAccountBalanceSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    const/16 v1, 0x8

    .line 168
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 170
    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "widgetProvider"

    .prologue
    .line 249
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 250
    .local v5, manager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v5, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    .line 252
    .local v6, widgetIds:[I
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v4, :cond_1c

    aget v3, v0, v2

    .line 253
    .local v3, id:I
    sget v7, Lcom/google/android/apps/googlevoice/R$id;->conversation_list:I

    invoke-virtual {v5, v3, v7}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 255
    .end local v3           #id:I
    :cond_1c
    return-void
.end method

.method private updateButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 189
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->canComposeSms()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    return-void

    .line 189
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method private updateButtonsSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 193
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 194
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 195
    return-void
.end method

.method private updateCallingMode(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 173
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_icon:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    invoke-interface {p3, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->shouldInterceptCalls()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 176
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCallingMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 181
    :goto_24
    return-void

    .line 179
    :cond_25
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_24
.end method

.method private updateCallingModeSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    const/16 v1, 0x8

    .line 184
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 185
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    return-void
.end method

.method private updateInfoBar(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 4
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 138
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateAccountBalance(Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateCallingMode(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 140
    return-void
.end method

.method private updateInfoBarSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 3
    .parameter "context"
    .parameter "views"

    .prologue
    .line 143
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateAccountBalanceSignedOut(Landroid/widget/RemoteViews;)V

    .line 144
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateCallingModeSignedOut(Landroid/widget/RemoteViews;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected createIntegratedViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    .line 70
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v10, Lcom/google/android/apps/googlevoice/R$layout;->widget_integrated_layout:I

    invoke-interface {v8, v10}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 71
    .local v7, views:Landroid/widget/RemoteViews;
    sget v8, Lcom/google/android/apps/googlevoice/R$id;->widget_conversation:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 74
    sget v8, Lcom/google/android/apps/googlevoice/R$id;->conversation_list:I

    const-class v10, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0, p1, v10}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getPendingIndentForActivity(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 78
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->appWidgetIds:[I

    if-eqz v8, :cond_4c

    .line 79
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->appWidgetIds:[I

    .local v2, arr$:[I
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_21
    if-ge v3, v5, :cond_4c

    aget v1, v2, v3

    .line 80
    .local v1, appWidgetId:I
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;

    invoke-direct {v4, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "appWidgetId"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    sget v8, Lcom/google/android/apps/googlevoice/R$id;->conversation_list:I

    invoke-virtual {v7, v1, v8, v4}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 84
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v10, Lcom/google/android/apps/googlevoice/R$id;->conversation_list:I

    invoke-interface {v8, v1, v10}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->notifyDataChanged(II)V

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 89
    .end local v1           #appWidgetId:I
    .end local v2           #arr$:[I
    .end local v3           #i$:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #len$:I
    :cond_4c
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, account:Ljava/lang/String;
    sget v8, Lcom/google/android/apps/googlevoice/R$id;->widget_account:I

    if-nez v0, :cond_56

    const-string v0, ""

    .end local v0           #account:Ljava/lang/String;
    :cond_56
    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 93
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getUnreadCount()I

    move-result v6

    .line 94
    .local v6, unreadCount:I
    sget v8, Lcom/google/android/apps/googlevoice/R$id;->widget_unread_count:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_unread_count:I

    if-lez v6, :cond_7d

    move v8, v9

    :goto_6b
    invoke-virtual {v7, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    sget v8, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 98
    invoke-direct {p0, p1, v7, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 99
    invoke-direct {p0, p1, v7, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateInfoBar(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 100
    invoke-direct {p0, p1, v7, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->setButtonsIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 102
    return-object v7

    .line 95
    :cond_7d
    const/16 v8, 0x8

    goto :goto_6b
.end method

.method protected createIntegratedViewsSignedOut(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 9
    .parameter "context"

    .prologue
    .line 106
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v6, Lcom/google/android/apps/googlevoice/R$layout;->widget_integrated_layout:I

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 108
    .local v4, views:Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->appWidgetIds:[I

    if-eqz v5, :cond_1e

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->appWidgetIds:[I

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_1e

    aget v0, v1, v2

    .line 110
    .local v0, appWidgetId:I
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v6, Lcom/google/android/apps/googlevoice/R$id;->conversation_list:I

    invoke-interface {v5, v0, v6}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->notifyDataChanged(II)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 113
    .end local v0           #appWidgetId:I
    .end local v1           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1e
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 114
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->widget_account:I

    sget v6, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_notification_signed_out:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 116
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->widget_layout:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 117
    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateButtonsSignedOut(Landroid/widget/RemoteViews;)V

    .line 118
    invoke-direct {p0, p1, v4}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->updateInfoBarSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 119
    invoke-direct {p0, p1, v4}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->setButtonsIntentsSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 120
    return-object v4
.end method

.method public render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 9
    .parameter "context"
    .parameter "widgetState"
    .parameter "voicePreferences"

    .prologue
    .line 50
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsIcsOrLater()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-class v3, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedProviderForIcsOrLater;

    .line 54
    .local v3, widgetProviderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_a
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->appWidgetIds:[I

    if-nez v4, :cond_1e

    .line 55
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 56
    .local v1, manager:Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->setAppWidgetIds([I)V

    .line 61
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #manager:Landroid/appwidget/AppWidgetManager;
    :cond_1e
    invoke-static {p3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->createIntegratedViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 66
    .local v2, remoteViews:Landroid/widget/RemoteViews;
    :goto_28
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    invoke-interface {v4, v3, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->updateViews(Ljava/lang/Class;Landroid/widget/RemoteViews;)V

    .line 67
    return-void

    .line 50
    .end local v2           #remoteViews:Landroid/widget/RemoteViews;
    .end local v3           #widgetProviderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2e
    const-class v3, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedProviderForHoneycomb;

    goto :goto_a

    .line 64
    .restart local v3       #widgetProviderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_31
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->createIntegratedViewsSignedOut(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .restart local v2       #remoteViews:Landroid/widget/RemoteViews;
    goto :goto_28
.end method

.method public setAppWidgetIds([I)V
    .registers 2
    .parameter "appWidgetIds"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererHoneycombOrLater;->appWidgetIds:[I

    .line 245
    return-void
.end method
