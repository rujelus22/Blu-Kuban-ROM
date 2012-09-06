.class public Lcom/android/email/RecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "RecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/chips/RecipientEditTextView;)V
    .registers 16
    .parameter "context"
    .parameter "list"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 32
    .local v12, r:Landroid/content/res/Resources;
    const v0, 0x7f020024

    invoke-static {v12, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 33
    .local v5, def:Landroid/graphics/Bitmap;
    const v0, 0x7f02000d

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x7f02000f

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v0, 0x7f02000e

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v0, 0x7f020011

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v6, 0x7f04003f

    const v7, 0x7f04001d

    const v0, 0x7f0a003f

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const v0, 0x7f0a003e

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const v0, 0x7f0a0040

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const v11, 0x7f040026

    move-object v0, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/ex/chips/RecipientEditTextView;->setChipDimensions(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIFFFI)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getDefaultPhotoResource()I
    .registers 2

    .prologue
    .line 59
    const v0, 0x7f020024

    return v0
.end method

.method protected getItemLayout()I
    .registers 2

    .prologue
    .line 64
    const v0, 0x7f04001e

    return v0
.end method

.method protected getWaitingForDirectorySearchLayout()I
    .registers 2

    .prologue
    .line 69
    const v0, 0x7f04001f

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 50
    if-eqz p1, :cond_e

    .line 53
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 55
    :cond_e
    return-void
.end method
