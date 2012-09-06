.class public interface abstract Lcom/google/android/apps/googlevoice/CallLogService$Listener;
.super Ljava/lang/Object;
.source "CallLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CallLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAccessNumberAuthenticationFailure()V
.end method

.method public abstract onAccessNumberFailure()V
.end method

.method public abstract onAccessNumberSuccess(Ljava/lang/String;)V
.end method
