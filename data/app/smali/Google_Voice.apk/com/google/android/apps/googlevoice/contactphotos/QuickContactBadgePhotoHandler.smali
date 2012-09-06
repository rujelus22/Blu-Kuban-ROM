.class public Lcom/google/android/apps/googlevoice/contactphotos/QuickContactBadgePhotoHandler;
.super Ljava/lang/Object;
.source "QuickContactBadgePhotoHandler.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;


# instance fields
.field private cachedDefaultContactPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getDefaultContactPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/contactphotos/QuickContactBadgePhotoHandler;->cachedDefaultContactPicture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_17

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->default_contact_picture:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/contactphotos/QuickContactBadgePhotoHandler;->cachedDefaultContactPicture:Landroid/graphics/Bitmap;

    .line 32
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/contactphotos/QuickContactBadgePhotoHandler;->cachedDefaultContactPicture:Landroid/graphics/Bitmap;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 27
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public afterInflation(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 9
    .parameter "parentView"
    .parameter "inflater"

    .prologue
    .line 38
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->photo:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, photoView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 41
    .local v2, position:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    sget v4, Lcom/google/android/apps/googlevoice/R$layout;->contact_photo:I

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 43
    .local v3, view:Landroid/view/View;
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 44
    return-void
.end method

.method public applyContactInformation(Landroid/content/Context;Landroid/view/View;Lcom/google/android/apps/googlevoice/core/ContactInfo;)V
    .registers 8
    .parameter "context"
    .parameter "parentView"
    .parameter "contactInfo"

    .prologue
    const/4 v3, 0x0

    .line 48
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->quick_contact:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 49
    .local v0, badge:Landroid/widget/QuickContactBadge;
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/contactphotos/QuickContactBadgePhotoHandler;->getDefaultContactPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p1, p3, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getPhotoForContactInfo(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    invoke-virtual {p3}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, contactNumber:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 53
    invoke-virtual {v0, v1, v3}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    .line 58
    :goto_21
    return-void

    .line 56
    :cond_22
    invoke-virtual {v0, v3}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    goto :goto_21
.end method
