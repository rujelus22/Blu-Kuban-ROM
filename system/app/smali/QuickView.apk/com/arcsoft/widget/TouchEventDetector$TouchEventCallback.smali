.class public interface abstract Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;
.super Ljava/lang/Object;
.source "TouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/TouchEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchEventCallback"
.end annotation


# virtual methods
.method public abstract OnMultiTouchBegin(Lcom/arcsoft/widget/TouchEventDetector;)Z
.end method

.method public abstract OnMultiTouchEnd(Lcom/arcsoft/widget/TouchEventDetector;)V
.end method

.method public abstract OnMultiTouchNext(Lcom/arcsoft/widget/TouchEventDetector;)Z
.end method

.method public abstract onSingleKeyDown(II)V
.end method

.method public abstract onSingleKeyMove(II)V
.end method

.method public abstract onSingleKeyUp(II)V
.end method
