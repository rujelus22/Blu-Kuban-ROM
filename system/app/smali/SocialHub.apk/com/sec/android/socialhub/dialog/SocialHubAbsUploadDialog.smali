.class public abstract Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
.super Lcom/sec/android/socialhub/dialog/AbsListDialog;
.source "SocialHubAbsUploadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;
    }
.end annotation


# static fields
.field private static mImageUri:Landroid/net/Uri;


# instance fields
.field public final BASE:I

.field protected final IMAGE:Ljava/lang/String;

.field protected final TEXT:Ljava/lang/String;

.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSpType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mImageUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 7
    .parameter "context"
    .parameter "object"
    .parameter "icon"
    .parameter "title"
    .parameter "spType"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/dialog/AbsListDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->BASE:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mArrayList:Ljava/util/ArrayList;

    .line 56
    const-string v0, "image"

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->IMAGE:Ljava/lang/String;

    .line 57
    const-string v0, "text"

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->TEXT:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mSpType:I

    .line 73
    iput p5, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mSpType:I

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->getDialogItem()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mArrayList:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method private doPickPhotoAction()V
    .registers 7

    .prologue
    .line 139
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3e

    .line 144
    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Select Picture"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    const-string v2, "SocialHubUploadDialog"

    const-string v3, "doPickPhotoAction()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Context - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 152
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3e
    :goto_3e
    return-void

    .line 148
    :catch_3f
    move-exception v0

    .line 150
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3e
.end method

.method private doPickVideoAction()V
    .registers 6

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_22

    .line 163
    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Select Video"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_22} :catch_23

    .line 170
    .end local v1           #intent:Landroid/content/Intent;
    :cond_22
    :goto_22
    return-void

    .line 166
    :catch_23
    move-exception v0

    .line 168
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_22
.end method

.method private doTakePhotoAction()V
    .registers 7

    .prologue
    .line 176
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "capture_picture.jpg"

    .line 179
    .local v3, url:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/socialhub/util/SocialHubFile;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 186
    :cond_1f
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mImageUri:Landroid/net/Uri;

    .line 187
    const-string v4, "output"

    sget-object v5, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3b

    .line 191
    iget-object v4, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xb

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 198
    .end local v1           #file:Ljava/io/File;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 194
    :catch_3c
    move-exception v0

    .line 196
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3b
.end method

.method private doTakeVideoAction()V
    .registers 5

    .prologue
    .line 204
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1d

    .line 208
    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0xd

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 215
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1d
    :goto_1d
    return-void

    .line 211
    :catch_1e
    move-exception v0

    .line 213
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static getTempFileUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static onHandleResult(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 224
    const/4 v0, 0x0

    .line 226
    packed-switch p1, :pswitch_data_44

    .line 239
    :goto_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    if-eqz p2, :cond_17

    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_17

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    :cond_17
    const-string v2, "spTypeList"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 248
    const-string v2, "fromType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    :try_start_29
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_33

    .line 255
    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_3e

    .line 263
    :cond_33
    :goto_33
    return-void

    .line 232
    :pswitch_34
    if-eqz p2, :cond_3b

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    .line 235
    :cond_3b
    sget-object v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mImageUri:Landroid/net/Uri;

    goto :goto_5

    .line 259
    :catch_3e
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 226
    nop

    :pswitch_data_44
    .packed-switch 0xa
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method public getDialogAdapter(Ljava/lang/Object;)Landroid/widget/ListAdapter;
    .registers 6
    .parameter "object"

    .prologue
    .line 83
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f030036

    invoke-virtual {p0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;-><init>(Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method public abstract getDialogItem()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTakenUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 219
    sget-object v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onHandleCommand(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 94
    const-string v0, "SocialHubUploadDialog"

    const-string v1, "handleCommand()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    add-int/lit8 v0, p2, 0xa

    packed-switch v0, :pswitch_data_30

    .line 113
    :goto_1f
    return-void

    .line 98
    :pswitch_20
    invoke-direct {p0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->doTakePhotoAction()V

    goto :goto_1f

    .line 102
    :pswitch_24
    invoke-direct {p0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->doPickPhotoAction()V

    goto :goto_1f

    .line 106
    :pswitch_28
    invoke-direct {p0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->doTakeVideoAction()V

    goto :goto_1f

    .line 110
    :pswitch_2c
    invoke-direct {p0}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->doPickVideoAction()V

    goto :goto_1f

    .line 95
    :pswitch_data_30
    .packed-switch 0xa
        :pswitch_24
        :pswitch_20
        :pswitch_2c
        :pswitch_28
    .end packed-switch
.end method
