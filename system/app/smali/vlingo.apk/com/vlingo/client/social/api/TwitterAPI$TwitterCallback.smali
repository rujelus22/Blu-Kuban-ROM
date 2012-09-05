.class public interface abstract Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
.super Ljava/lang/Object;
.source "TwitterAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TwitterCallback"
.end annotation


# virtual methods
.method public abstract onFollowVlingoComplete(ILjava/lang/String;)V
.end method

.method public abstract onLoginComplete(IZLjava/lang/String;)V
.end method

.method public abstract onUpdateComplete(ILjava/lang/String;)V
.end method

.method public abstract onVerifyComplete(ILjava/lang/String;)V
.end method

.method public abstract onVlingoFriendshipExists(IZLjava/lang/String;)V
.end method
