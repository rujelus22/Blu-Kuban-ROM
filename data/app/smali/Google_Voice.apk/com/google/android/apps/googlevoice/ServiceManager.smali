.class public interface abstract Lcom/google/android/apps/googlevoice/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ForegroundManager;


# virtual methods
.method public abstract bindCallLogService(Landroid/content/ServiceConnection;)V
.end method

.method public abstract cancelInboxNotificationRegistrationAlarm()V
.end method

.method public abstract cancelShadowNumberRefreshAlarm()V
.end method

.method public abstract cancelUpdateAlarm()V
.end method

.method public abstract listenToCallLogService(Landroid/os/IBinder;Lcom/google/android/apps/googlevoice/CallLogService$Listener;)V
.end method

.method public abstract refreshShadowNumberMappings()V
.end method

.method public abstract refreshShadowNumberMappings(Ljava/lang/Runnable;)V
.end method

.method public abstract requestBackgroundUpdate()V
.end method

.method public abstract requestForegroundUpdate()V
.end method

.method public abstract requestInboxNotificationRegistration()V
.end method

.method public abstract requestUpdateServiceStart()V
.end method

.method public abstract requestUpdateServiceStop()V
.end method

.method public abstract scheduleInboxNotificationRegistrationAlarm(JJ)V
.end method

.method public abstract scheduleShadowNumberRefreshAlarm(JJ)V
.end method

.method public abstract startCallLogService(Lcom/google/android/apps/googlevoice/CallLogService$StatusType;Ljava/lang/String;)V
.end method

.method public abstract unbindCallLogService(Landroid/content/ServiceConnection;)V
.end method

.method public abstract updateWidget()V
.end method
