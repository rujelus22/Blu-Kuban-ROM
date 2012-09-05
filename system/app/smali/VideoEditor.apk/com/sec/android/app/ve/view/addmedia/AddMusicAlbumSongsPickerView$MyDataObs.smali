.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MyDataObs;
.super Landroid/database/DataSetObserver;
.source "AddMusicAlbumSongsPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDataObs"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 338
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 339
    const-string v0, "This is inside MyDataObs observer"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 340
    return-void
.end method
