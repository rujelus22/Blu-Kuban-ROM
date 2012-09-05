.class public Lcom/google/android/apps/plus/hangout/Avatars;
.super Ljava/lang/Object;
.source "Avatars.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V
    .registers 8
    .parameter "context"
    .parameter "member"
    .parameter "view"

    .prologue
    .line 16
    if-nez p1, :cond_1c

    const/4 v2, 0x0

    .line 17
    .local v2, vcard:Lcom/google/android/apps/plus/hangout/VCard;
    :goto_3
    const/4 v0, 0x0

    .line 18
    .local v0, avatarBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/VCard;->getAvatarData()[B

    move-result-object v3

    if-eqz v3, :cond_16

    .line 19
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/VCard;->getAvatarData()[B

    move-result-object v1

    .line 20
    .local v1, avatarData:[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 23
    .end local v1           #avatarData:[B
    :cond_16
    if-eqz v0, :cond_21

    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    :goto_1b
    return-void

    .line 16
    .end local v0           #avatarBitmap:Landroid/graphics/Bitmap;
    .end local v2           #vcard:Lcom/google/android/apps/plus/hangout/VCard;
    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getVCard()Lcom/google/android/apps/plus/hangout/VCard;

    move-result-object v2

    goto :goto_3

    .line 26
    .restart local v0       #avatarBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #vcard:Lcom/google/android/apps/plus/hangout/VCard;
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b
.end method
