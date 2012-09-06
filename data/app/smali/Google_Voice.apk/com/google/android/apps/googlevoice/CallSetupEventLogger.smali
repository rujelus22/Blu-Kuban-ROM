.class public interface abstract Lcom/google/android/apps/googlevoice/CallSetupEventLogger;
.super Ljava/lang/Object;
.source "CallSetupEventLogger.java"


# static fields
.field public static final CALL_SETUP_DIRECT:I = 0x0

.field public static final CALL_SETUP_VIA_ACCESS_NUMBER:I = 0x1

.field public static final CALL_SETUP_VIA_SHADOW_NUMBER:I = 0x2


# virtual methods
.method public abstract onAccessNumberAuthenticationError()V
.end method

.method public abstract onAccessNumberLookupFailed()V
.end method

.method public abstract onAccessNumberLookupSkipped()V
.end method

.method public abstract onAccessNumberLookupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
.end method

.method public abstract onAccessNumberLookupSucceeded()V
.end method

.method public abstract onCallAbandoned()V
.end method

.method public abstract onCallCompleted()V
.end method

.method public abstract onCallSetupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
.end method

.method public abstract onExceptionOnDoneGetAccessNumber()V
.end method

.method public abstract onShadowNumberFound()V
.end method

.method public abstract onShadowNumberLookupSkipped()V
.end method

.method public abstract onShadowNumberLookupStarted(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
.end method

.method public abstract onShadowNumberNotFound()V
.end method
