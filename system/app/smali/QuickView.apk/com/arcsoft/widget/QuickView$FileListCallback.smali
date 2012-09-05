.class public interface abstract Lcom/arcsoft/widget/QuickView$FileListCallback;
.super Ljava/lang/Object;
.source "QuickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileListCallback"
.end annotation


# virtual methods
.method public abstract onGetCurretIndex(I)I
.end method

.method public abstract onGetFileCount(I)I
.end method

.method public abstract onGetFileName(II[B)I
.end method

.method public abstract onGetFileType(I)I
.end method

.method public abstract onGetThumbCallback(II)Landroid/graphics/Bitmap;
.end method
