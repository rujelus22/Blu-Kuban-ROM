.class public Lcom/sec/android/socialhub/util/AutoCompleteAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AutoCompleteAdapter.java"


# instance fields
.field private mConstraint:Ljava/lang/String;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public miSpType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 46
    const v0, 0x7f03003a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->miSpType:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mConstraint:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    iput-object p1, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private drawSnsProfileImage(Landroid/database/Cursor;Landroid/widget/ImageView;)V
    .registers 13
    .parameter "cursor"
    .parameter "view"

    .prologue
    .line 91
    :try_start_0
    const-string v1, "medium_photo_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, photoUrl:Ljava/lang/String;
    if-nez v2, :cond_16

    .line 95
    const-string v1, "small_photo_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    :cond_16
    const-string v1, "service_provider"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 99
    .local v9, spType:I
    invoke-static {v9}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    .line 100
    .local v8, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v1, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    .line 101
    .local v0, mImageCacheManager:Lcom/sec/android/socialhub/image/ImageCacheManager;
    iget-object v1, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v8}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getDefaultProfileImage()I

    move-result v5

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 103
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3c

    .line 104
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    .end local v0           #mImageCacheManager:Lcom/sec/android/socialhub/image/ImageCacheManager;
    .end local v2           #photoUrl:Ljava/lang/String;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v9           #spType:I
    :goto_3b
    return-void

    .line 106
    .restart local v0       #mImageCacheManager:Lcom/sec/android/socialhub/image/ImageCacheManager;
    .restart local v2       #photoUrl:Ljava/lang/String;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .restart local v9       #spType:I
    :cond_3c
    const-string v1, "AutoCompleteAdapter"

    const-string v3, "drawSnsProfileImage"

    const-string v4, "bitmap is null"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_3b

    .line 108
    .end local v0           #mImageCacheManager:Lcom/sec/android/socialhub/image/ImageCacheManager;
    .end local v2           #photoUrl:Ljava/lang/String;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v9           #spType:I
    :catch_46
    move-exception v7

    .line 110
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 59
    const v4, 0x7f0b0104

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    .local v2, text1:Landroid/widget/TextView;
    const v4, 0x7f0b0105

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, text2:Landroid/widget/TextView;
    iget v4, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->miSpType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_66

    .line 63
    const-string v4, "full_name"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_24
    const-string v4, "service_provider"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 69
    .local v1, spType:I
    if-nez v1, :cond_74

    .line 71
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    const-string v4, "email_address"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_41
    iget-object v4, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v4, :cond_59

    .line 79
    iget-object v4, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mConstraint:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v4, v2, v5, v6}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 81
    :cond_59
    const v4, 0x7f0b0103

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, img:Landroid/widget/ImageView;
    invoke-direct {p0, p3, v0}, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->drawSnsProfileImage(Landroid/database/Cursor;Landroid/widget/ImageView;)V

    .line 85
    return-void

    .line 65
    .end local v0           #img:Landroid/widget/ImageView;
    .end local v1           #spType:I
    :cond_66
    const-string v4, "display_name"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 76
    .restart local v1       #spType:I
    :cond_74
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_41
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 11
    .parameter "constraint"

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mConstraint:Ljava/lang/String;

    .line 119
    iget v0, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->miSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v8

    .line 121
    .local v8, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v6, 0x0

    .line 125
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x5

    :try_start_f
    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "full_name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    :goto_33
    iget-object v0, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/contacts/ContactWrapper;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->miSpType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/contacts/ContactWrapper;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    :goto_49
    return-object v6

    .line 131
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display_name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_66
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_f .. :try_end_66} :catch_68

    move-result-object v3

    goto :goto_33

    .line 141
    :catch_68
    move-exception v7

    .line 143
    .local v7, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v7}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_49
.end method

.method public setSNSISPType(I)V
    .registers 2
    .parameter "ispType"

    .prologue
    .line 53
    iput p1, p0, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->miSpType:I

    .line 54
    return-void
.end method
