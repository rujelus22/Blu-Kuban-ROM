.class public Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;
.super Ljava/lang/Object;
.source "AndroidWidgetSettingsRenderer.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer$1;
    }
.end annotation


# static fields
.field private static final INFO_BAR_WIDGET_IDS:[I


# instance fields
.field private callSettingsIntent:Landroid/app/PendingIntent;

.field private composeIntent:Landroid/app/PendingIntent;

.field private doNotDisturbIntent:Landroid/app/PendingIntent;

.field private inboxIntent:Landroid/app/PendingIntent;

.field private final widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_icon:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_icon:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->INFO_BAR_WIDGET_IDS:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;)V
    .registers 2
    .parameter "widgetManager"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    .line 46
    return-void
.end method

.method private createSignedOutViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 5
    .parameter "context"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->widget_settings_layout:I

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 72
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateButtonsSignedOut(Landroid/widget/RemoteViews;)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateInfoBarSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->setButtonsIntentsSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 76
    return-object v0
.end method

.method private createViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;
    .registers 6
    .parameter "context"
    .parameter "state"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->widget_settings_layout:I

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 62
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 63
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateInfoBar(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 64
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->setButtonsIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 66
    return-object v0
.end method

.method private displayButtons(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    const/4 v1, 0x0

    .line 188
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 191
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_do_not_disturb:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    return-void
.end method

.method private declared-synchronized getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;
    .registers 6
    .parameter "context"
    .parameter "state"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->callSettingsIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_24

    .line 227
    invoke-interface {p2, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->hasTelephony(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->shouldInterceptCalls()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.CycleCallRoutingModeActivity.TOAST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->callSettingsIntent:Landroid/app/PendingIntent;

    .line 237
    .end local v0           #intent:Landroid/content/Intent;
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->callSettingsIntent:Landroid/app/PendingIntent;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3d

    monitor-exit p0

    return-object v1

    .line 232
    :cond_28
    :try_start_28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NOOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->callSettingsIntent:Landroid/app/PendingIntent;
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3d

    goto :goto_24

    .line 226
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
    .line 195
    if-eqz p2, :cond_d

    .line 196
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer$1;->$SwitchMap$com$google$android$apps$googlevoice$VoicePreferences$Mode:[I

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 204
    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0

    .line 197
    :pswitch_10
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_all:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 198
    :pswitch_17
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_ask:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 199
    :pswitch_1e
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_ask_intl:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 200
    :pswitch_25
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_intl:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 201
    :pswitch_2c
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 196
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
    .line 218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->composeIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_d

    .line 219
    const-class v0, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getPendingIndentForActivity(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->composeIntent:Landroid/app/PendingIntent;

    .line 221
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->composeIntent:Landroid/app/PendingIntent;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 218
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDoNotDisturbIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->doNotDisturbIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_19

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.DND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->doNotDisturbIntent:Landroid/app/PendingIntent;

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->doNotDisturbIntent:Landroid/app/PendingIntent;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 241
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->inboxIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1c

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->inboxIntent:Landroid/app/PendingIntent;

    .line 214
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->inboxIntent:Landroid/app/PendingIntent;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v1

    .line 208
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
    .line 253
    .local p2, activity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 261
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
    .line 118
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getComposeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 120
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 122
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_do_not_disturb:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getDoNotDisturbIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 123
    return-void
.end method

.method private setButtonsIntentsSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 126
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method private updateAccountBalance(Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 5
    .parameter "views"
    .parameter "state"

    .prologue
    .line 130
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getAccountBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, balance:Ljava/lang/String;
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method private updateAccountBalanceSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 135
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 136
    return-void
.end method

.method private updateButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 153
    invoke-interface {p3, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->shouldInterceptCalls()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 154
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_call_settings:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 161
    :goto_13
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->canComposeSms()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 163
    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->canUseDoNotDisturb()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 164
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_do_not_disturb:I

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->isUpdatingDoNotDisturb()Z

    move-result v0

    if-eqz v0, :cond_41

    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_do_not_disturb_disabled:I

    :goto_2f
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 175
    :goto_32
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->displayButtons(Landroid/widget/RemoteViews;)V

    .line 176
    return-void

    .line 157
    :cond_36
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_call_settings_disabled:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_13

    .line 161
    :cond_3e
    const/16 v0, 0x8

    goto :goto_1c

    .line 164
    :cond_41
    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getDoNotDisturb()Z

    move-result v0

    if-eqz v0, :cond_4a

    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_do_not_disturb_on:I

    goto :goto_2f

    :cond_4a
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_do_not_disturb_off:I

    goto :goto_2f

    .line 171
    :cond_4d
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_do_not_disturb:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_do_not_disturb_disabled:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_32
.end method

.method private updateButtonsSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 179
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_call_settings_disabled:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 181
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_do_not_disturb:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_settings_do_not_disturb_disabled:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->displayButtons(Landroid/widget/RemoteViews;)V

    .line 185
    return-void
.end method

.method private updateCallingMode(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 139
    invoke-interface {p3, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->shouldInterceptCalls()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 140
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCallingMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 146
    :goto_19
    return-void

    .line 143
    :cond_1a
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_19
.end method

.method private updateCallingModeSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 149
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    return-void
.end method

.method private updateInfoBar(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 4
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 81
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateAccountBalance(Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateCallingMode(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 83
    return-void
.end method

.method private updateInfoBarSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 3
    .parameter "context"
    .parameter "views"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateNotificationSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 88
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateAccountBalanceSignedOut(Landroid/widget/RemoteViews;)V

    .line 89
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->updateCallingModeSignedOut(Landroid/widget/RemoteViews;)V

    .line 90
    return-void
.end method

.method private updateNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 12
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 93
    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getNotificationMessage()Ljava/lang/Integer;

    move-result-object v4

    .line 94
    .local v4, messageId:Ljava/lang/Integer;
    if-nez v4, :cond_1c

    .line 95
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->widget_notification:I

    invoke-virtual {p2, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->INFO_BAR_WIDGET_IDS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v3, :cond_3c

    aget v2, v0, v1

    .line 97
    .local v2, id:I
    invoke-virtual {p2, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 100
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v3           #len$:I
    :cond_1c
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->widget_notification:I

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->widget_notification:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->INFO_BAR_WIDGET_IDS:[I

    .restart local v0       #arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_32
    if-ge v1, v3, :cond_3c

    aget v2, v0, v1

    .line 103
    .restart local v2       #id:I
    invoke-virtual {p2, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 106
    .end local v2           #id:I
    :cond_3c
    return-void
.end method

.method private updateNotificationSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 9
    .parameter "context"
    .parameter "views"

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->INFO_BAR_WIDGET_IDS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v3, :cond_10

    aget v2, v0, v1

    .line 110
    .local v2, id:I
    const/16 v4, 0x8

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 112
    .end local v2           #id:I
    :cond_10
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->widget_notification:I

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->widget_notification:I

    sget v5, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_notification_signed_out:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 115
    return-void
.end method


# virtual methods
.method public render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 7
    .parameter "context"
    .parameter "widgetState"
    .parameter "voicePreferences"

    .prologue
    .line 51
    invoke-static {p3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->createViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 56
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetSettingsProvider;

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->updateViews(Ljava/lang/Class;Landroid/widget/RemoteViews;)V

    .line 57
    return-void

    .line 54
    .end local v0           #remoteViews:Landroid/widget/RemoteViews;
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetSettingsRenderer;->createSignedOutViews(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .restart local v0       #remoteViews:Landroid/widget/RemoteViews;
    goto :goto_a
.end method

.method public setAppWidgetIds([I)V
    .registers 2
    .parameter "appWidgetIds"

    .prologue
    .line 265
    return-void
.end method
