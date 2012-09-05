.class public Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
.super Ljava/lang/Object;
.source "MusicAlbumInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/music/common/data/MusicAlbumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlbum:Ljava/lang/String;

.field public mAlbumID:I

.field public mArtist:Ljava/lang/String;

.field public mDuration:J

.field public mFilePath:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/music/common/data/MusicAlbumInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
