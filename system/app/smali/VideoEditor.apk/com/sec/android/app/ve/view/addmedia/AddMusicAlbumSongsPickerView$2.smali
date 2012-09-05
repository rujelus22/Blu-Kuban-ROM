.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;
.super Ljava/lang/Object;
.source "AddMusicAlbumSongsPickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/DragLayer$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->onDragEnd(FF)V

    .line 375
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->onDragStart(Landroid/view/View;)V

    .line 371
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->onDragging(FFLandroid/graphics/Paint;)V

    .line 366
    return-void
.end method
