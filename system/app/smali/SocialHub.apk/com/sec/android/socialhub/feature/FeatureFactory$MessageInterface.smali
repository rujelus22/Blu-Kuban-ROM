.class public interface abstract Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feature/FeatureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageInterface"
.end annotation


# virtual methods
.method public abstract getCount(Landroid/content/Context;I)I
.end method

.method public abstract getIntent(ILandroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract getMessageUri()Landroid/net/Uri;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract isSupport(I)Z
.end method
