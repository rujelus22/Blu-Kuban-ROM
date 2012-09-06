.class public interface abstract Lcom/google/android/apps/googlevoice/ShadowNumbers;
.super Ljava/lang/Object;
.source "ShadowNumbers.java"


# static fields
.field public static final REFRESH_INTERVAL_MILLIS:J = 0x5265c00L


# virtual methods
.method public abstract addOrCreateShadowNumberMappings([Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)Z
.end method

.method public abstract addShadowNumberMapping(Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V
.end method

.method public abstract addShadowNumberMappingAsync(Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getShadowNumber(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isShadowNumber(Ljava/lang/String;)Z
.end method

.method public abstract refreshFailed(Ljava/lang/Exception;)V
.end method
