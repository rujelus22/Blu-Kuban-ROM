.class public abstract Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;
.super Ljava/lang/Object;
.source "AbsMediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/AbsMediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field mCallbackShim:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRouteAdded(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract onRouteChanged(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
.end method

.method public abstract onRouteRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract onRouteSelected(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public abstract onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract onRouteUnselected(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public abstract onRouteVolumeChanged(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
