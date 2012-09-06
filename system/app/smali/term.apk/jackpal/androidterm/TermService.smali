.class public Ljackpal/androidterm/TermService;
.super Landroid/app/Service;
.source "TermService.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/TermService$TSBinder;
    }
.end annotation


# static fields
.field private static final COMPAT_START_STICKY:I = 0x1

.field private static final RUNNING_NOTIFICATION:I = 0x1


# instance fields
.field private compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

.field private final mTSBinder:Landroid/os/IBinder;

.field private mTermSessions:Ljackpal/androidterm/util/SessionList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Ljackpal/androidterm/TermService$TSBinder;

    invoke-direct {v0, p0}, Ljackpal/androidterm/TermService$TSBinder;-><init>(Ljackpal/androidterm/TermService;)V

    iput-object v0, p0, Ljackpal/androidterm/TermService;->mTSBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getSessions()Ljackpal/androidterm/util/SessionList;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 61
    const-string v0, "TermService"

    const-string v1, "Activity called onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Ljackpal/androidterm/TermService;->mTSBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 10

    .prologue
    const v8, 0x7f060023

    const/4 v7, 0x0

    .line 67
    new-instance v3, Ljackpal/androidterm/compat/ServiceForegroundCompat;

    invoke-direct {v3, p0}, Ljackpal/androidterm/compat/ServiceForegroundCompat;-><init>(Landroid/app/Service;)V

    iput-object v3, p0, Ljackpal/androidterm/TermService;->compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

    .line 68
    new-instance v3, Ljackpal/androidterm/util/SessionList;

    invoke-direct {v3}, Ljackpal/androidterm/util/SessionList;-><init>()V

    iput-object v3, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 71
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f02000b

    invoke-virtual {p0, v8}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 72
    .local v0, notification:Landroid/app/Notification;
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v3, Ljackpal/androidterm/Term;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, notifyIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 76
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const v3, 0x7f06000c

    invoke-virtual {p0, v3}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v8}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 77
    iget-object v3, p0, Ljackpal/androidterm/TermService;->compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljackpal/androidterm/compat/ServiceForegroundCompat;->startForeground(ILandroid/app/Notification;)V

    .line 79
    const-string v3, "Term"

    const-string v4, "TermService started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 85
    iget-object v2, p0, Ljackpal/androidterm/TermService;->compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljackpal/androidterm/compat/ServiceForegroundCompat;->stopForeground(Z)V

    .line 86
    iget-object v2, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/emulatorview/TermSession;

    .line 87
    .local v1, session:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    goto :goto_c

    .line 89
    .end local v1           #session:Ljackpal/androidterm/emulatorview/TermSession;
    :cond_1c
    iget-object v2, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->clear()V

    .line 90
    return-void
.end method

.method public onSessionFinish(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 3
    .parameter "session"

    .prologue
    .line 98
    iget-object v0, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/util/SessionList;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 52
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
