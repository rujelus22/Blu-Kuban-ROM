.class public Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;
.super Landroid/app/Activity;
.source "CycleCallRoutingModeActivity.java"


# static fields
.field public static final EXTRA_TOAST:Ljava/lang/String; = "com.google.android.apps.googlevoice.CycleCallRoutingModeActivity.TOAST"


# instance fields
.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createToggleShortcut()V
    .registers 6

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;

    invoke-static {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getShortcutIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getShortcutName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getShortcutIcon(Landroid/content/Context;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/system/ShortcutManager;->getCreateShortcutIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, createShortcutIntent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    return-void
.end method

.method private cycleGoogleVoiceMode(Z)V
    .registers 8
    .parameter "toast"

    .prologue
    .line 84
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_9

    .line 85
    const-string v1, "toggle"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 89
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->cycleMode(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 90
    if-eqz p1, :cond_38

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getModeString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, message:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_35

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 95
    :cond_35
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->showToast(Ljava/lang/String;)V

    .line 99
    .end local v0           #message:Ljava/lang/String;
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/ServiceManager;->updateWidget()V

    .line 110
    :cond_3d
    :goto_3d
    return-void

    .line 101
    :cond_3e
    if-eqz p1, :cond_3d

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->call_routing_error_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getModeString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set mode - mode remains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public static deleteToggleShortcut(Landroid/content/Context;Lcom/google/android/apps/googlevoice/system/ShortcutManager;)V
    .registers 4
    .parameter "context"
    .parameter "shortcutManager"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getShortcutIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getShortcutName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/googlevoice/system/ShortcutManager;->removeShortcut(Landroid/content/Intent;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private static getShortcutIcon(Landroid/content/Context;)Landroid/content/Intent$ShortcutIconResource;
    .registers 2
    .parameter "context"

    .prologue
    .line 80
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->gv_toggle_droid_icon:I

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    return-object v0
.end method

.method private static getShortcutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter "context"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, shortcutIntent:Landroid/content/Intent;
    const-class v1, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method private static getShortcutName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 75
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->googlevoice_toggle_shortcut:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget-object v1, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 37
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_11

    .line 38
    const-string v1, "create"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 41
    :cond_11
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 42
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 43
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 44
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 45
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getShortcutManager()Lcom/google/android/apps/googlevoice/system/ShortcutManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->shortcutManager:Lcom/google/android/apps/googlevoice/system/ShortcutManager;

    .line 47
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->createToggleShortcut()V

    .line 52
    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->finish()V

    .line 53
    return-void

    .line 50
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.apps.googlevoice.CycleCallRoutingModeActivity.TOAST"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;->cycleGoogleVoiceMode(Z)V

    goto :goto_40
.end method
