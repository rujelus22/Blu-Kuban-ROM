.class public interface abstract Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;
.super Ljava/lang/Object;
.source "PlusOneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/plus1/PlusOneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthorizeResultListener"
.end annotation


# virtual methods
.method public abstract onAccountManagerError(Ljava/lang/Exception;)V
.end method

.method public abstract onAllowed()V
.end method

.method public abstract onDenied()V
.end method
