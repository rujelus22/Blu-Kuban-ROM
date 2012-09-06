.class public interface abstract Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
.super Ljava/lang/Object;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoViewCallbacks"
.end annotation


# virtual methods
.method public abstract addMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V
.end method

.method public abstract addScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V
.end method

.method public abstract getActionBarHeight()I
.end method

.method public abstract isFragmentActive(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract isShowPhotoOnly()Z
.end method

.method public abstract onFragmentVisible(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onPhotoRemoved(J)V
.end method

.method public abstract removeMenuItemListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnMenuItemListener;)V
.end method

.method public abstract removeScreenListener(Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;)V
.end method

.method public abstract toggleFullScreen()V
.end method

.method public abstract updateMenuItems()V
.end method
