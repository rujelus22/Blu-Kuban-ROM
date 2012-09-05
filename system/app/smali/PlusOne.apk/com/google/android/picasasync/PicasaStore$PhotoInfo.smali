.class Lcom/google/android/picasasync/PicasaStore$PhotoInfo;
.super Ljava/lang/Object;
.source "PicasaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoInfo"
.end annotation


# instance fields
.field public album_id:J

.field public contentUrl:Ljava/lang/String;

.field public id:J

.field public rotation:I

.field public screennailUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    .line 123
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->album_id:J

    .line 124
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->contentUrl:Ljava/lang/String;

    .line 125
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->screennailUrl:Ljava/lang/String;

    .line 126
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->rotation:I

    .line 127
    return-void
.end method
