.class public Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;
.super Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.source "RenRen.java"


# instance fields
.field private final MAX_RECIPIENTS:I

.field private final MAX_TITLE_LENGTH:I

.field private final MIN_IMAGE_SIZE:I

.field protected mCommentId:Ljava/lang/String;

.field protected mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

.field private newRenrenInstalled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->MAX_RECIPIENTS:I

    .line 44
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->MAX_TITLE_LENGTH:I

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->MIN_IMAGE_SIZE:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    .line 34
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/RenRenConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/RenRenConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 36
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public checkPossibleUploadPhotoVideo(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/io/File;Z)Z
    .registers 14
    .parameter "context"
    .parameter "errorStr"
    .parameter "file"
    .parameter "isPhoto"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x32

    const/4 v2, 0x0

    .line 381
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->checkPossibleUploadPhotoVideo(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/io/File;Z)Z

    move-result v0

    .line 383
    .local v0, bSupport:Z
    if-ne v0, v8, :cond_66

    .line 385
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->getImageSize(Ljava/lang/String;)Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;

    move-result-object v1

    .line 387
    .local v1, size:Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;
    const-string v3, "RenRen"

    const-string v4, "checkPossibleUploadPhotoVideo()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget v3, v1, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->width:I

    if-lt v3, v7, :cond_42

    iget v3, v1, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->height:I

    if-ge v3, v7, :cond_66

    .line 391
    :cond_42
    if-eqz p2, :cond_65

    .line 393
    const v3, 0x7f08011a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->getStringResource(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_65
    move v0, v2

    .line 403
    .end local v0           #bSupport:Z
    .end local v1           #size:Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;
    :cond_66
    return v0
.end method

.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    .line 257
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 259
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 260
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 261
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 263
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 265
    :cond_32
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->alphaReply(I)V

    .line 266
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 269
    :cond_40
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 271
    :cond_52
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 273
    :cond_5b
    return-void
.end method

.method public getDefaultProfileImage()I
    .registers 2

    .prologue
    .line 191
    const v0, 0x7f0200bc

    return v0
.end method

.method public getImageResource(I)I
    .registers 7
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 145
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.renren.mobile.android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0xa475

    if-lt v1, v2, :cond_1f

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    .line 161
    :goto_18
    packed-switch p1, :pswitch_data_72

    .line 185
    const v1, 0x7f020087

    :goto_1e
    return v1

    .line 148
    :cond_1f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_22} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_3d

    goto :goto_18

    .line 150
    :catch_23
    move-exception v0

    .line 151
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RenRen"

    const-string v2, "getImageResource()"

    const-string v3, "renren package not found!, newRenrenInstalled = false"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    goto :goto_18

    .line 153
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_30
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "RenRen"

    const-string v2, "getImageResource()"

    const-string v3, "mApplicationContext is null, newRenrenInstalled = false"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-boolean v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    goto :goto_18

    .line 156
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_3d
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RenRen"

    const-string v2, "getImageResource()"

    const-string v3, "Exception!, newRenrenInstalled = false"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-boolean v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    goto :goto_18

    .line 164
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4a
    const v1, 0x7f0200bc

    goto :goto_1e

    .line 167
    :pswitch_4e
    iget-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    if-eqz v1, :cond_56

    .line 168
    const v1, 0x7f020091

    goto :goto_1e

    .line 170
    :cond_56
    const v1, 0x7f020090

    goto :goto_1e

    .line 173
    :pswitch_5a
    iget-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    if-eqz v1, :cond_62

    .line 174
    const v1, 0x7f020093

    goto :goto_1e

    .line 176
    :cond_62
    const v1, 0x7f020092

    goto :goto_1e

    .line 179
    :pswitch_66
    iget-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    if-eqz v1, :cond_6e

    .line 180
    const v1, 0x7f020094

    goto :goto_1e

    .line 182
    :cond_6e
    const v1, 0x7f02008f

    goto :goto_1e

    .line 161
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4e
        :pswitch_5a
        :pswitch_66
    .end packed-switch
.end method

.method public getLimitation(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, ret:I
    packed-switch p1, :pswitch_data_14

    .line 250
    :goto_4
    :pswitch_4
    return v0

    .line 231
    :pswitch_5
    const/16 v0, 0x8c

    .line 232
    goto :goto_4

    .line 235
    :pswitch_8
    const/16 v0, 0x8c

    .line 236
    goto :goto_4

    .line 239
    :pswitch_b
    const/16 v0, 0xaa0

    .line 240
    goto :goto_4

    .line 243
    :pswitch_e
    const/4 v0, 0x1

    .line 244
    goto :goto_4

    .line 247
    :pswitch_10
    const/16 v0, 0xc8

    goto :goto_4

    .line 228
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_e
        :pswitch_4
        :pswitch_10
    .end packed-switch
.end method

.method public getReplyImageSource()I
    .registers 2

    .prologue
    .line 221
    const v0, 0x7f02004a

    return v0
.end method

.method public getSmallIspIcon()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.renren.mobile.android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0xa475

    if-lt v1, v2, :cond_20

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_3e

    .line 213
    :goto_18
    iget-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    if-eqz v1, :cond_4b

    .line 214
    const v1, 0x7f020093

    .line 216
    :goto_1f
    return v1

    .line 200
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_23} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_23} :catch_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_23} :catch_3e

    goto :goto_18

    .line 202
    :catch_24
    move-exception v0

    .line 203
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RenRen"

    const-string v2, "getSmallIspIcon()"

    const-string v3, "renren package not found!, newRenrenInstalled = false"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-boolean v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    goto :goto_18

    .line 205
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_31
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "RenRen"

    const-string v2, "getSmallIspIcon()"

    const-string v3, "mApplicationContext is null, newRenrenInstalled = false"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-boolean v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    goto :goto_18

    .line 208
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_3e
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RenRen"

    const-string v2, "getSmallIspIcon()"

    const-string v3, "Exception!, newRenrenInstalled = false"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-boolean v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->newRenrenInstalled:Z

    goto :goto_18

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4b
    const v1, 0x7f020092

    goto :goto_1f
.end method

.method public getSnsAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    const-string v0, "com.sec.android.app.snsaccountrr.SetupAccount"

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x7

    return v0
.end method

.method public getStringResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 301
    packed-switch p1, :pswitch_data_a

    .line 307
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 304
    :pswitch_5
    const v0, 0x7f080037

    goto :goto_4

    .line 301
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public isNeeds(I)Z
    .registers 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 313
    packed-switch p1, :pswitch_data_14

    .line 334
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 332
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 326
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 329
    goto :goto_f

    .line 313
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public isSupport(I)Z
    .registers 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    packed-switch p1, :pswitch_data_2a

    .line 138
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 135
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 84
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 87
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 90
    goto :goto_f

    :pswitch_16
    move v0, v1

    .line 96
    goto :goto_f

    :pswitch_18
    move v0, v1

    .line 102
    goto :goto_f

    :pswitch_1a
    move v0, v1

    .line 108
    goto :goto_f

    :pswitch_1c
    move v0, v1

    .line 111
    goto :goto_f

    :pswitch_1e
    move v0, v1

    .line 114
    goto :goto_f

    :pswitch_20
    move v0, v1

    .line 117
    goto :goto_f

    :pswitch_22
    move v0, v1

    .line 120
    goto :goto_f

    :pswitch_24
    move v0, v1

    .line 123
    goto :goto_f

    :pswitch_26
    move v0, v1

    .line 126
    goto :goto_f

    :pswitch_28
    move v0, v1

    .line 129
    goto :goto_f

    .line 54
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_f
        :pswitch_16
        :pswitch_f
        :pswitch_18
        :pswitch_f
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_28
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public onAction(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/content/Context;Landroid/content/Intent;I)I
    .registers 15
    .parameter "service"
    .parameter "context"
    .parameter "intent"
    .parameter "type"

    .prologue
    .line 347
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 348
    .local v8, bundle:Landroid/os/Bundle;
    const/4 v9, -0x1

    .line 350
    .local v9, ret:I
    packed-switch p4, :pswitch_data_5c

    :goto_8
    move v0, v9

    .line 374
    :goto_9
    return v0

    .line 354
    :pswitch_a
    const-string v0, "taISpType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    .line 355
    const-string v0, "taActivityId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActivityID:Ljava/lang/String;

    .line 356
    const-string v0, "taActorId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    .line 357
    const-string v0, "taCommentId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->mCommentId:Ljava/lang/String;

    .line 358
    const-string v0, "taCommnetType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    .line 359
    const-string v0, "taContent"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    .line 361
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->getLimitation(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 363
    const/4 v0, -0x1

    goto :goto_9

    .line 366
    :cond_49
    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/RenRen;->mCommentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentPost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_8

    .line 350
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method protected setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V
    .registers 7
    .parameter "view"
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 282
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 284
    :cond_17
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 287
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 289
    :cond_3f
    return-void
.end method
