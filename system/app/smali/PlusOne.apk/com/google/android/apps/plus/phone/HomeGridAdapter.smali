.class public Lcom/google/android/apps/plus/phone/HomeGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeGridAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAvatarBitmap:Landroid/graphics/Bitmap;

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private final mContext:Landroid/content/Context;

.field private mHuddleNotificationView:Landroid/widget/TextView;

.field private mHuddleUnreadCount:Ljava/lang/Long;

.field private mPhotoNotifictationCount:Ljava/lang/Long;

.field private mPhotosNotificationView:Landroid/widget/TextView;

.field private mProfileBackgroundImageView:Landroid/widget/ImageView;

.field private final mProfileDimension:I

.field private mProfileForegroundImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileDimension:I

    .line 57
    return-void
.end method


# virtual methods
.method public bindAvatar()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileBackgroundImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileForegroundImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_49

    .line 64
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4a

    .line 65
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAvatarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    .local v0, bgDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileDimension:I

    iget v3, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileDimension:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 67
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    .local v1, fgDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_49

    .line 72
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 73
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    :cond_44
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileForegroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v0           #bgDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #fgDrawable:Landroid/graphics/drawable/Drawable;
    :cond_49
    :goto_49
    return-void

    .line 79
    :cond_4a
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileForegroundImageView:Landroid/widget/ImageView;

    const v3, 0x7f02005f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileBackgroundImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_49
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x5

    return v0
.end method

.method public getGamesIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 287
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.oneup"

    const-string v3, "com.google.android.apps.oneup.main.OneUpMainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v0, games:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 181
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 190
    if-nez p2, :cond_6b

    .line 191
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 193
    .local v4, layoutInflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030037

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 197
    .end local v4           #layoutInflater:Landroid/view/LayoutInflater;
    .local v7, view:Landroid/view/View;
    :goto_14
    const v8, 0x7f0d00cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 198
    .local v3, labelView:Landroid/widget/TextView;
    const v8, 0x7f0d00cc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 200
    .local v2, foregroundImageView:Landroid/widget/ImageView;
    const v8, 0x7f0d00cb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    .local v0, backgroundImageView:Landroid/widget/ImageView;
    const v8, 0x7f0d00ce

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 204
    .local v5, notificationView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 206
    .local v6, resources:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_12c

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    :goto_47
    if-eqz v1, :cond_63

    .line 273
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 274
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    :cond_60
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_63
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    return-object v7

    .line 195
    .end local v0           #backgroundImageView:Landroid/widget/ImageView;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #foregroundImageView:Landroid/widget/ImageView;
    .end local v3           #labelView:Landroid/widget/TextView;
    .end local v5           #notificationView:Landroid/widget/TextView;
    .end local v6           #resources:Landroid/content/res/Resources;
    .end local v7           #view:Landroid/view/View;
    :cond_6b
    move-object v7, p2

    .restart local v7       #view:Landroid/view/View;
    goto :goto_14

    .line 208
    .restart local v0       #backgroundImageView:Landroid/widget/ImageView;
    .restart local v2       #foregroundImageView:Landroid/widget/ImageView;
    .restart local v3       #labelView:Landroid/widget/TextView;
    .restart local v5       #notificationView:Landroid/widget/TextView;
    .restart local v6       #resources:Landroid/content/res/Resources;
    :pswitch_6d
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    const v8, 0x7f07005e

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 210
    const v8, 0x7f020065

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 211
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47

    .line 216
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_84
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    const v8, 0x7f07005a

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 218
    const v8, 0x7f020056

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleUnreadCount:Ljava/lang/Long;

    if-eqz v8, :cond_b2

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleUnreadCount:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_b2

    .line 220
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleUnreadCount:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_b2
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleNotificationView:Landroid/widget/TextView;

    goto :goto_47

    .line 228
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_b5
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    const v8, 0x7f07005c

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 230
    const v8, 0x7f02005c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 231
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotoNotifictationCount:Ljava/lang/Long;

    if-eqz v8, :cond_e3

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotoNotifictationCount:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_e3

    .line 232
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotoNotifictationCount:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_e3
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotosNotificationView:Landroid/widget/TextView;

    goto/16 :goto_47

    .line 240
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_e7
    const v8, 0x7f070059

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 241
    const/4 v1, 0x0

    .line 242
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileForegroundImageView:Landroid/widget/ImageView;

    .line 243
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mProfileBackgroundImageView:Landroid/widget/ImageView;

    .line 244
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->bindAvatar()V

    .line 245
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 250
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_fc
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    const v8, 0x7f07005b

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 252
    const v8, 0x7f020059

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 253
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 258
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_114
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    const v8, 0x7f07005d

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 260
    const v8, 0x7f020053

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 206
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_84
        :pswitch_b5
        :pswitch_e7
        :pswitch_fc
        :pswitch_114
    .end packed-switch
.end method

.method public refreshProfilePhoto()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->refreshAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 137
    :cond_17
    return-void
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 125
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 128
    :cond_27
    return-void
.end method

.method public setAvatarBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 3
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 144
    if-nez p2, :cond_7

    .line 145
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->bindAvatar()V

    .line 148
    :cond_7
    return-void
.end method

.method public setHuddleUnreadCount(Ljava/lang/Long;)V
    .registers 6
    .parameter "count"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleUnreadCount:Ljava/lang/Long;

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleNotificationView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleUnreadCount:Ljava/lang/Long;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleUnreadCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleNotificationView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleNotificationView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleUnreadCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_27
    :goto_27
    return-void

    .line 97
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mHuddleNotificationView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method

.method public setPhotoNotificationCount(Ljava/lang/Long;)V
    .registers 6
    .parameter "count"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotoNotifictationCount:Ljava/lang/Long;

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotosNotificationView:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotoNotifictationCount:Ljava/lang/Long;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotoNotifictationCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotosNotificationView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotosNotificationView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotoNotifictationCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_27
    :goto_27
    return-void

    .line 114
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HomeGridAdapter;->mPhotosNotificationView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method
