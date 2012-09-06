.class public Lcom/google/android/apps/googlevoice/contactphotos/SimplePhotoHandler;
.super Ljava/lang/Object;
.source "SimplePhotoHandler.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;


# instance fields
.field private cachedDefaultContactPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getDefaultContactPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/contactphotos/SimplePhotoHandler;->cachedDefaultContactPicture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_17

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->default_contact_picture:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 32
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/contactphotos/SimplePhotoHandler;->cachedDefaultContactPicture:Landroid/graphics/Bitmap;

    .line 34
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/contactphotos/SimplePhotoHandler;->cachedDefaultContactPicture:Landroid/graphics/Bitmap;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 29
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public afterInflation(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 3
    .parameter "parentView"
    .parameter "inflater"

    .prologue
    .line 40
    return-void
.end method

.method public applyContactInformation(Landroid/content/Context;Landroid/view/View;Lcom/google/android/apps/googlevoice/core/ContactInfo;)V
    .registers 6
    .parameter "context"
    .parameter "parentView"
    .parameter "contactInfo"

    .prologue
    .line 44
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->photo:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, photoView:Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/contactphotos/SimplePhotoHandler;->getDefaultContactPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1, p3, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getPhotoForContactInfo(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    return-void
.end method
