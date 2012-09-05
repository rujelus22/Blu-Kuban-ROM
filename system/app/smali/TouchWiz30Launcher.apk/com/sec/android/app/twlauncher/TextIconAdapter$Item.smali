.class public interface abstract Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;
.super Ljava/lang/Object;
.source "TextIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/TextIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Item"
.end annotation


# virtual methods
.method public abstract getId(I)J
.end method

.method public abstract getImage()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract isEnabled()Z
.end method
