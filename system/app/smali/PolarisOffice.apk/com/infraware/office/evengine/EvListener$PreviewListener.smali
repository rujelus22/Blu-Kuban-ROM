.class public interface abstract Lcom/infraware/office/evengine/EvListener$PreviewListener;
.super Ljava/lang/Object;
.source "EvListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EvListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewListener"
.end annotation


# virtual methods
.method public abstract OnDrawPreviewBitmap()V
.end method

.method public abstract OnExitPreviewMode(I)V
.end method

.method public abstract OnGetPreviewBitmap(II)Landroid/graphics/Bitmap;
.end method
