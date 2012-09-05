.class public interface abstract Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;
.super Ljava/lang/Object;
.source "TabState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/state/tab/TabState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAccountStateChangedListener"
.end annotation


# virtual methods
.method public abstract onRequestChangeTabView(Z)V
.end method

.method public abstract onRequestChangeTitleBar(ZI)V
.end method

.method public abstract onStateChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
.end method
