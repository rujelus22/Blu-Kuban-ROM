.class public Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewActivity;
.super Lcom/google/android/apps/plus/phone/PhotoViewActivity;
.source "PhotosFromPhonePhotoViewActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewActivity;->mFragmentIsLoading:Z

    .line 24
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewActivity;->mPageHint:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    return-object v0
.end method
