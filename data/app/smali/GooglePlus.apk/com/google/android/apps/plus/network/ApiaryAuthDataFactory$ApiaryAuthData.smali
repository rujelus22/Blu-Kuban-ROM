.class public interface abstract Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
.super Ljava/lang/Object;
.source "ApiaryAuthDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiaryAuthData"
.end annotation


# virtual methods
.method public abstract getAuthTime(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getAuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
