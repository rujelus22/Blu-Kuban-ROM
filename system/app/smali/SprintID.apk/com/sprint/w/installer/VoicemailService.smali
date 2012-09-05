.class public Lcom/sprint/w/installer/VoicemailService;
.super Landroid/app/Service;
.source "VoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/VoicemailService$InstallObserver;
    }
.end annotation


# static fields
.field static final VOICEMAIL_APK:Ljava/lang/String; = "voicemail.apk"

.field static final VOICEMAIL_PACKAGE:Ljava/lang/String; = "com.sprint.voicemail"

.field public static final VOICEMAIL_VERSION:I = 0x66

.field static sBusy:Z


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mHandler:Landroid/os/Handler;

.field final mInstallObserver:Landroid/content/pm/IPackageInstallObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/w/installer/VoicemailService;->sBusy:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    const-class v0, Lcom/sprint/w/installer/VoicemailService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;

    .line 122
    new-instance v0, Lcom/sprint/w/installer/VoicemailService$InstallObserver;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/VoicemailService$InstallObserver;-><init>(Lcom/sprint/w/installer/VoicemailService;)V

    iput-object v0, p0, Lcom/sprint/w/installer/VoicemailService;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method


# virtual methods
.method ensureVoicemailIsInstalled()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/sprint/w/installer/VoicemailService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 47
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 49
    .local v2, installed:Z
    :try_start_7
    const-string v7, "com.sprint.voicemail"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 50
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_24

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_26

    const/16 v8, 0x66

    if-ne v7, v8, :cond_24

    move v2, v5

    .line 55
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_17
    if-eqz v2, :cond_29

    .line 56
    iget-object v6, p0, Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Voicemail is already installed"

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 58
    invoke-static {v5}, Lcom/sprint/w/installer/util/Util;->setVoicemailInstalled(Z)V

    .line 101
    :cond_23
    :goto_23
    return-void

    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_24
    move v2, v6

    .line 50
    goto :goto_17

    .line 51
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_26
    move-exception v0

    .line 53
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_17

    .line 61
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_29
    sget-boolean v6, Lcom/sprint/w/installer/VoicemailService;->sBusy:Z

    if-nez v6, :cond_23

    .line 62
    sput-boolean v5, Lcom/sprint/w/installer/VoicemailService;->sBusy:Z

    .line 66
    new-instance v4, Lcom/sprint/w/installer/VoicemailService$1;

    invoke-direct {v4, p0, v3}, Lcom/sprint/w/installer/VoicemailService$1;-><init>(Lcom/sprint/w/installer/VoicemailService;Landroid/content/pm/PackageManager;)V

    .line 100
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_23
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "i"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/VoicemailService;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0}, Lcom/sprint/w/installer/VoicemailService;->ensureVoicemailIsInstalled()V

    .line 41
    invoke-virtual {p0, p3}, Lcom/sprint/w/installer/VoicemailService;->stopSelf(I)V

    .line 42
    const/4 v0, 0x3

    return v0
.end method
