.class public Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ProfileAboutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoosePhotoDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1764
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1795
    packed-switch p2, :pswitch_data_2c

    .line 1809
    :goto_3
    return-void

    .line 1797
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->dismiss()V

    .line 1798
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->doTakePhoto()V

    goto :goto_3

    .line 1801
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->dismiss()V

    .line 1802
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->doPickPhotoFromAlbums()V

    goto :goto_3

    .line 1805
    :pswitch_1e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->dismiss()V

    .line 1806
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->navigateToProfilePhotos()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->access$1900(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    goto :goto_3

    .line 1795
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 1776
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1777
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1778
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070267

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1779
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090011

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7f070268

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const v5, 0x7f070269

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const v6, 0x7f07026a

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1786
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1787
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
