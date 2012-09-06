.class public Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ChoosePhotoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;
    }
.end annotation


# instance fields
.field private mIndexToAction:[I

.field private mIsCameraSupported:Z

.field private mSingle:Z

.field private mTitle:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIndexToAction:[I

    .line 42
    const v0, 0x7f08016c

    iput v0, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mTitle:I

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "titleId"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;-><init>(IZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter "titleId"
    .parameter "singlePhoto"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIndexToAction:[I

    .line 42
    const v0, 0x7f08016c

    iput v0, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mTitle:I

    .line 56
    iput p1, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mTitle:I

    .line 57
    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mSingle:Z

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIndexToAction:[I

    aget v0, v1, p2

    .line 140
    .local v0, action:I
    packed-switch v0, :pswitch_data_22

    .line 150
    :goto_7
    return-void

    .line 142
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->dismiss()V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;->doTakePhoto()V

    goto :goto_7

    .line 146
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->dismiss()V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;->doPickPhotoFromAlbums()V

    goto :goto_7

    .line 140
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 71
    if-eqz p1, :cond_3a

    .line 72
    const-string v6, "is_camera_supported"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 73
    const-string v6, "is_camera_supported"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_88

    move v6, v7

    :goto_18
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIsCameraSupported:Z

    .line 76
    :cond_1a
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 77
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mTitle:I

    .line 79
    :cond_2a
    const-string v6, "single_photo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 80
    const-string v6, "single_photo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mSingle:Z

    .line 84
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 86
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIsCameraSupported:Z

    if-eqz v6, :cond_8a

    const/4 v5, 0x2

    .line 87
    .local v5, optionsCount:I
    :goto_43
    new-array v4, v5, [Ljava/lang/String;

    .line 88
    .local v4, options:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, index:I
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIsCameraSupported:Z

    if-eqz v6, :cond_5a

    .line 91
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIndexToAction:[I

    aput v8, v6, v2

    .line 92
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    const v6, 0x7f080325

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    move v2, v3

    .line 95
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_5a
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIndexToAction:[I

    aput v7, v6, v2

    .line 97
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mSingle:Z

    if-eqz v6, :cond_8c

    .line 98
    const v6, 0x7f080326

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 103
    :goto_6b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget v6, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mTitle:I

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 105
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v8, 0x1090011

    invoke-direct {v6, v0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .end local v0           #activity:Landroid/support/v4/app/FragmentActivity;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #index:I
    .end local v4           #options:[Ljava/lang/String;
    .end local v5           #optionsCount:I
    :cond_88
    move v6, v8

    .line 73
    goto :goto_18

    .restart local v0       #activity:Landroid/support/v4/app/FragmentActivity;
    :cond_8a
    move v5, v7

    .line 86
    goto :goto_43

    .line 100
    .restart local v2       #index:I
    .restart local v4       #options:[Ljava/lang/String;
    .restart local v5       #optionsCount:I
    :cond_8c
    const v6, 0x7f080327

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    goto :goto_6b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v1, "is_camera_supported"

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIsCameraSupported:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v0, "title"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mTitle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v0, "single_photo"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mSingle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-void

    .line 129
    :cond_1c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method setIsCameraSupported(Z)V
    .registers 2
    .parameter "supported"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIsCameraSupported:Z

    .line 62
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .registers 4
    .parameter "manager"
    .parameter "tag"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->mIsCameraSupported:Z

    if-eqz v0, :cond_8

    .line 117
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    :goto_7
    return-void

    .line 119
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;->doPickPhotoFromAlbums()V

    goto :goto_7
.end method
