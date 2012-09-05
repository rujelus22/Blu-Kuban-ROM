.class public Lcom/sec/android/socialhub/dialog/PhotoDialogFactory;
.super Ljava/lang/Object;
.source "PhotoDialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$FacebookPhotoUploadDialog;,
        Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$TwitterPhotoUploadDialog;,
        Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$Me2dayPhotoUploadDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static getDialog(Landroid/content/Context;I)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
    .registers 4
    .parameter "context"
    .parameter "sp"

    .prologue
    const/4 v1, 0x0

    .line 22
    sparse-switch p1, :sswitch_data_18

    move-object v0, v1

    .line 33
    :goto_5
    return-object v0

    .line 25
    :sswitch_6
    new-instance v0, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$FacebookPhotoUploadDialog;

    invoke-direct {v0, p0, v1, v1}, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$FacebookPhotoUploadDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 28
    :sswitch_c
    new-instance v0, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$TwitterPhotoUploadDialog;

    invoke-direct {v0, p0, v1, v1}, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$TwitterPhotoUploadDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 31
    :sswitch_12
    new-instance v0, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$Me2dayPhotoUploadDialog;

    invoke-direct {v0, p0, v1, v1}, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory$Me2dayPhotoUploadDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 22
    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_6
        0x2 -> :sswitch_c
        0xe -> :sswitch_12
    .end sparse-switch
.end method
