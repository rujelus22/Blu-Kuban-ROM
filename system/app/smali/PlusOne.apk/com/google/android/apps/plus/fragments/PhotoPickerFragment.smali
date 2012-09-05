.class public Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "PhotoPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sPhotoSize:Ljava/lang/Integer;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAllowCrop:Z

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mIntent:Landroid/content/Intent;

.field private mIsPhotoLoading:Z

.field private mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIntent:Landroid/content/Intent;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIsPhotoLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/views/PhotoHeaderView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 242
    if-eqz p1, :cond_b

    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_c

    .line 257
    :cond_b
    :goto_b
    return-void

    .line 246
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    .line 247
    .local v0, hasImage:Z
    :goto_13
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIsPhotoLoading:Z

    if-eqz v1, :cond_1f

    if-nez v0, :cond_1f

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_b

    .line 246
    .end local v0           #hasImage:Z
    :cond_1d
    const/4 v0, 0x0

    goto :goto_13

    .line 250
    .restart local v0       #hasImage:Z
    :cond_1f
    if-eqz v0, :cond_25

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->showContent(Landroid/view/View;)V

    goto :goto_b

    .line 253
    :cond_25
    const v1, 0x7f070074

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_b
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->isPhotoSet()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    sget-object v2, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->sPhotoSize:Ljava/lang/Integer;

    if-nez v2, :cond_29

    .line 100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 102
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->sPhotoSize:Ljava/lang/Integer;

    .line 105
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_29
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_58

    .line 230
    :goto_7
    return-void

    .line 192
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 194
    .local v0, activity:Landroid/app/Activity;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 195
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 200
    .end local v0           #activity:Landroid/app/Activity;
    :sswitch_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 201
    .restart local v0       #activity:Landroid/app/Activity;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v4, resultIntent:Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mAllowCrop:Z

    if-eqz v5, :cond_30

    .line 205
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getCroppedPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    .local v1, croppedPhoto:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 208
    .local v2, imageData:[B
    const-string v5, "data"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 213
    .end local v1           #croppedPhoto:Landroid/graphics/Bitmap;
    .end local v2           #imageData:[B
    :cond_30
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 214
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, photoUrl:Ljava/lang/String;
    :goto_42
    if-eqz v3, :cond_49

    .line 219
    const-string v5, "photo_url"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_49
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 222
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 216
    .end local v3           #photoUrl:Ljava/lang/String;
    :cond_51
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #photoUrl:Ljava/lang/String;
    goto :goto_42

    .line 190
    :sswitch_data_58
    .sparse-switch
        0x7f0d003e -> :sswitch_8
        0x7f0d0124 -> :sswitch_14
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    if-eqz p1, :cond_16

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.plus.PhotoViewFragment.INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIntent:Landroid/content/Intent;

    .line 115
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "mediarefs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "allow_crop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mAllowCrop:Z

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 123
    const v0, 0x7f030066

    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v10

    .line 127
    .local v10, view:Landroid/view/View;
    const v0, 0x7f0d0119

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 136
    .local v9, photoBitmap:Landroid/graphics/Bitmap;
    :goto_34
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0, v9}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->enableImageTransforms(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mAllowCrop:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->enableAllowCrop(Z)V

    .line 139
    if-nez v9, :cond_48

    move v5, v11

    :cond_48
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIsPhotoLoading:Z

    .line 141
    const v0, 0x7f0d003e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 142
    .local v8, cancelButton:Landroid/view/View;
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mAllowCrop:Z

    if-eqz v0, :cond_8c

    .line 145
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, acceptText:Ljava/lang/String;
    :goto_5f
    const v0, 0x7f0d0124

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/views/ActionButton;

    .line 150
    .local v6, acceptButton:Lcom/google/android/apps/plus/views/ActionButton;
    invoke-virtual {v6, p0}, Lcom/google/android/apps/plus/views/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/views/ActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-object v10

    .line 133
    .end local v6           #acceptButton:Lcom/google/android/apps/plus/views/ActionButton;
    .end local v7           #acceptText:Ljava/lang/String;
    .end local v8           #cancelButton:Landroid/view/View;
    .end local v9           #photoBitmap:Landroid/graphics/Bitmap;
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    sget-object v3, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .restart local v9       #photoBitmap:Landroid/graphics/Bitmap;
    goto :goto_34

    .line 147
    .restart local v8       #cancelButton:Landroid/view/View;
    :cond_8c
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #acceptText:Ljava/lang/String;
    goto :goto_5f
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIsPhotoLoading:Z

    .line 176
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onDestroyView()V

    .line 177
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 169
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 160
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 161
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_12

    .line 184
    const-string v0, "com.google.android.apps.plus.PhotoViewFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    :cond_12
    return-void
.end method
