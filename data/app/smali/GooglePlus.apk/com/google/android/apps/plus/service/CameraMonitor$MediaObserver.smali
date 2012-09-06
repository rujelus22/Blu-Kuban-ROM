.class Lcom/google/android/apps/plus/service/CameraMonitor$MediaObserver;
.super Landroid/database/ContentObserver;
.source "CameraMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/CameraMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaObserver"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 120
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    iput-object p1, p0, Lcom/google/android/apps/plus/service/CameraMonitor$MediaObserver;->context:Landroid/content/Context;

    .line 122
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .parameter "selfChange"

    .prologue
    const/4 v8, 0x0

    .line 126
    iget-object v4, p0, Lcom/google/android/apps/plus/service/CameraMonitor$MediaObserver;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/apps/plus/service/CameraMonitor;->access$000()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 128
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/google/android/apps/plus/service/CameraMonitor$MediaObserver;->context:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 130
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2ee0

    add-long v2, v4, v6

    .line 131
    .local v2, triggerAtTime:J
    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 132
    return-void
.end method
