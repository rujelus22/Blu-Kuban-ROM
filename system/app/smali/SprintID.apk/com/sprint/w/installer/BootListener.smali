.class public Lcom/sprint/w/installer/BootListener;
.super Landroid/content/BroadcastReceiver;
.source "BootListener.java"


# static fields
.field public static final DEFAULT_PACK_STARTED:Ljava/lang/String; = "com.sprint.id.notify.DEFAULT_PACK_STARTED"

.field public static final EXTRA_HAS_PACK:Ljava/lang/String; = "EXTRA_HAS_PACK"

.field public static final PREF_IN_FIRST_RUN:Ljava/lang/String; = "PREF_IN_FIRST_RUN"

.field public static final STALE_DOWNLOADS_CLEARED:Ljava/lang/String; = "com.sprint.id.notify.STALE_DOWNLOADS_CLEARED"

.field static mHasRun:Z

.field static mInit:Z


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/w/installer/BootListener;->mInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-class v0, Lcom/sprint/w/installer/BootListener;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/BootListener;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/BootListener;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/BootListener;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sprint/w/installer/BootListener;->startDefaultPackService()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/BootListener;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sprint/w/installer/BootListener;->checkIfDirectToConsumer()V

    return-void
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/BootListener;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sprint/w/installer/BootListener;->installAPKs()V

    return-void
.end method

.method private checkIfDirectToConsumer()V
    .registers 4

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sprint/w/installer/service/D2CPackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    return-void
.end method

.method private cleanupStaleDownloads()V
    .registers 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "cleanupStaleDownloads()"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sprint/w/installer/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.action.ACTION_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

.method private installAPKs()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 155
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Going to check for the Voicemail app"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isVoicemailInstalled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 157
    invoke-direct {p0}, Lcom/sprint/w/installer/BootListener;->isVisualVoicemailInstalled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 158
    invoke-static {v3}, Lcom/sprint/w/installer/util/Util;->setVoicemailInstalled(Z)V

    .line 169
    :cond_17
    :goto_17
    return-void

    .line 159
    :cond_18
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SPH-P100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 160
    invoke-static {v3}, Lcom/sprint/w/installer/util/Util;->setVoicemailInstalled(Z)V

    goto :goto_17

    .line 163
    :cond_26
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Starting the VoicemailService."

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sprint/w/installer/VoicemailService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_17
.end method

.method private isVisualVoicemailInstalled()Z
    .registers 10

    .prologue
    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, voicemail:Z
    iget-object v7, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 174
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 176
    .local v5, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 177
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 180
    .local v2, pkg:Ljava/lang/String;
    const-string v7, "com.coremobility.app.vnotes"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 181
    iget-object v7, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Found Visual Voicemail"

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 183
    const/4 v6, 0x1

    goto :goto_17

    .line 186
    .end local v2           #pkg:Ljava/lang/String;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_38
    return v6
.end method

.method private startDefaultPackService()V
    .registers 4

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ACTION_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;

    .line 40
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sprint/w/installer/BootListener;->mHandler:Landroid/os/Handler;

    .line 42
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Entered onReceive"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isProvisioningComplete()Z

    move-result v2

    if-nez v2, :cond_42

    .line 46
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "the HFA hasn\'t completed yet... let\'s wait -- the device will restart after it has"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/sprint/w/installer/BootListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sprint/w/installer/BootListener$1;-><init>(Lcom/sprint/w/installer/BootListener;Landroid/content/Context;)V

    .line 70
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    .end local v1           #t:Ljava/lang/Thread;
    :cond_41
    :goto_41
    return-void

    .line 74
    :cond_42
    const-string v2, "com.sprint.id.notify.STALE_DOWNLOADS_CLEARED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 75
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Received STALE_DOWNLOADS_CLEARED"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/sprint/w/installer/BootListener$2;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/BootListener$2;-><init>(Lcom/sprint/w/installer/BootListener;)V

    .line 113
    .restart local v1       #t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_41

    .line 115
    .end local v1           #t:Ljava/lang/Thread;
    :cond_5e
    const-string v2, "com.sprint.id.notify.DEFAULT_PACK_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 116
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Received DEFAULT_PACK_STARTED"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 117
    const-string v2, "EXTRA_HAS_PACK"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    .local v0, hasPack:Z
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has Default Pack? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_41

    .line 120
    .end local v0           #hasPack:Z
    :cond_91
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 122
    sget-boolean v2, Lcom/sprint/w/installer/BootListener;->mHasRun:Z

    if-nez v2, :cond_41

    .line 126
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sprint/w/installer/BootListener;->mHasRun:Z

    .line 127
    invoke-direct {p0}, Lcom/sprint/w/installer/BootListener;->cleanupStaleDownloads()V

    goto :goto_41
.end method
