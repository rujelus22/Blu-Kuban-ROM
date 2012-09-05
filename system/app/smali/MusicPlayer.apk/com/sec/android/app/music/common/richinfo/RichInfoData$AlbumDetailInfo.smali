.class Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;
.super Ljava/lang/Object;
.source "RichInfoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumDetailInfo"
.end annotation


# instance fields
.field albumSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;

.field credits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;",
            ">;"
        }
    .end annotation
.end field

.field date:Ljava/lang/String;

.field discs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$Disc;",
            ">;"
        }
    .end annotation
.end field

.field genreDesc:Ljava/lang/String;

.field releases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$ReleaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field review:Ljava/lang/String;

.field similarAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field styles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$StyleInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field tones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$ToneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumDetailInfo;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
