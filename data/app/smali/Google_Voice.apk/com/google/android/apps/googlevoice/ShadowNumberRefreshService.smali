.class public Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;
.super Landroid/app/Service;
.source "ShadowNumberRefreshService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_SHADOW_NUMBERS:Ljava/lang/String; = "com.google.android.apps.googlevoice.REFRESH_SHADOW_NUMBERS"

.field public static final ACTION_SHADOW_NUMBERS_REFRESHED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SHADOW_NUMBERS_REFRESHED"

.field private static final LOG:Lcom/google/android/apps/common/log/GLog;


# instance fields
.field private backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

.field private context:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

.field private shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/common/log/GLog;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/ShadowNumbers;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/proxy/ContextProxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->context:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    return-object v0
.end method

.method public static createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.googlevoice.REFRESH_SHADOW_NUMBERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->LOG:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShadowNumberRefreshService.createPendingIntent(), creating broadcastIntent for intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static requestRefresh(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 114
    sget-object v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "ShadowNumberRefreshService: requesting registration."

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 41
    sget-object v1, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "onCreate()"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 45
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 46
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 47
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getShadowNumbers()Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    .line 48
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    .line 49
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->context:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    .line 50
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 54
    sget-object v1, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "onStart()"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 60
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->stopSelf(I)V

    .line 98
    :goto_19
    return-void

    .line 64
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createGetBackendInfoRpc()Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;

    move-result-object v0

    .line 66
    .local v0, getBackendInfoRpc:Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;->setForwardingNumber(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;-><init>(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;I)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;->submit(Ljava/lang/Runnable;)V

    goto :goto_19
.end method
