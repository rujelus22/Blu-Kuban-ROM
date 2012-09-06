.class public interface abstract Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider$Listener;
.super Ljava/lang/Object;
.source "UnveilLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onLocationChanged(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;Landroid/location/Location;)V
.end method

.method public abstract onLocationDisabled(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;)V
.end method

.method public abstract onLocationEnabled(Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;)V
.end method
