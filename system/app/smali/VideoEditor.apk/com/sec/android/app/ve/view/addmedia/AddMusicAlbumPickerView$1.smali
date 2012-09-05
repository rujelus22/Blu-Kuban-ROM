.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;
.super Ljava/lang/Object;
.source "AddMusicAlbumPickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapCreated(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 8
    .parameter "targetView"
    .parameter "bitmap"
    .parameter "aFilePath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    if-eqz p2, :cond_22

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #calls: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v1, p3, p2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 222
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 223
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 224
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p3, v1, v3

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    iget-object v1, v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    :goto_21
    return-void

    .line 229
    .end local v0           #msg:Landroid/os/Message;
    :cond_22
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 230
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0x4e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 231
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    iget-object v1, v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21
.end method

.method public isTargetViewExist(Landroid/view/View;ILjava/lang/String;)Z
    .registers 9
    .parameter "targetView"
    .parameter "position"
    .parameter "aFilePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getFirstVisiblePosition()I

    move-result v1

    .line 241
    .local v1, lStartpos:I
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getLastVisiblePosition()I

    move-result v0

    .line 242
    .local v0, lEndpos:I
    if-nez p2, :cond_23

    .line 244
    sget-object v4, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 263
    :cond_20
    :goto_20
    return v2

    :cond_21
    move v2, v3

    .line 253
    goto :goto_20

    .line 256
    :cond_23
    add-int/lit8 v4, v1, -0x4

    if-lt p2, v4, :cond_2b

    add-int/lit8 v4, v0, 0x4

    if-le p2, v4, :cond_20

    .line 261
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Current view is not highlighted -->"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move v2, v3

    .line 263
    goto :goto_20
.end method
