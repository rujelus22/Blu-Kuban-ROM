.class public interface abstract Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;
.super Ljava/lang/Object;
.source "BaseState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/state/BaseState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReqeustStateChangeListener"
.end annotation


# virtual methods
.method public abstract onAccountStateChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
.end method

.method public abstract onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V
.end method

.method public abstract onRequestChangeTabView(Z)V
.end method

.method public abstract onRequestChangeTitleBar(ZI)V
.end method

.method public abstract onRequestNoAccountPage(Lcom/sec/android/socialhub/state/BaseState;)V
.end method

.method public abstract onRestorePage()V
.end method
