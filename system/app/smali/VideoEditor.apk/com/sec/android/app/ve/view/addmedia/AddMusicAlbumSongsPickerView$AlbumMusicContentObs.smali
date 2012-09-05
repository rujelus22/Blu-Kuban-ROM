.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;
.super Landroid/database/ContentObserver;
.source "AddMusicAlbumSongsPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumMusicContentObs"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 307
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$1()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 308
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 315
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 317
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$2()Z

    move-result v0

    if-nez v0, :cond_15

    .line 319
    const-string v0, "This is inside onChange of AlbumMusicContentObs and calling refreshAlbumSongs"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 320
    invoke-static {v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$3(Z)V

    .line 321
    #calls: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->refreshAlbumSongs(Z)V
    invoke-static {v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$4(Z)V

    .line 323
    :cond_15
    return-void
.end method
