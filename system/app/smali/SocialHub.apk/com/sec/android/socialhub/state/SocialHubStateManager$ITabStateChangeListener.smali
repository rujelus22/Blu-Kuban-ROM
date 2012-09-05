.class public interface abstract Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;
.super Ljava/lang/Object;
.source "SocialHubStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/state/SocialHubStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITabStateChangeListener"
.end annotation


# virtual methods
.method public abstract onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
.end method

.method public abstract onRequestChangeTabView(Z)V
.end method

.method public abstract onRequestChangeTitleBar(ZI)V
.end method

.method public abstract onTabStateChanged(Lcom/sec/android/socialhub/state/tab/TabState;)V
.end method
