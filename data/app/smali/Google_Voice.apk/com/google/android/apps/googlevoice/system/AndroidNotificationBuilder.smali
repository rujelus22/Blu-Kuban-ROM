.class public abstract Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;
.super Ljava/lang/Object;
.source "AndroidNotificationBuilder.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected notification:Landroid/app/Notification;

.field protected final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 3
    .parameter "context"
    .parameter "voicePreferences"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 41
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->createNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->notification:Landroid/app/Notification;

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->notification:Landroid/app/Notification;

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->stat_sys_gvoice:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->setTickerText()V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->setEventInfo()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->setNotificationStyle()V

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method protected createNotification()Landroid/app/Notification;
    .registers 2

    .prologue
    .line 60
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    return-object v0
.end method

.method protected abstract setEventInfo()V
.end method

.method protected abstract setNotificationStyle()V
.end method

.method protected abstract setTickerText()V
.end method
