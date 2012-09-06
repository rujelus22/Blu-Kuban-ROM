.class public interface abstract Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.super Ljava/lang/Object;
.source "AlertFragmentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlertDialogListener"
.end annotation


# virtual methods
.method public abstract onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
.end method
