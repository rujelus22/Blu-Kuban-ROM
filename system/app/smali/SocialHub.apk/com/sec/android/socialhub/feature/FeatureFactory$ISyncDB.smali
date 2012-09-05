.class public interface abstract Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feature/FeatureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISyncDB"
.end annotation


# virtual methods
.method public abstract doSyncAll(Landroid/content/Context;Ljava/lang/Object;)Z
.end method

.method public abstract doSyncEmail(Landroid/content/Context;)Z
.end method

.method public abstract doSyncIM(Landroid/content/Context;)Z
.end method

.method public abstract doSyncMsg(Landroid/content/Context;)Z
.end method

.method public abstract doSyncSns(Landroid/content/Context;Ljava/lang/Object;)Z
.end method
