.class Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;
.super Ljava/lang/Object;
.source "RichInfoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumInfo"
.end annotation


# instance fields
.field albumId:Ljava/lang/String;

.field artist:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

.field artwork:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;

.field isPick:Z

.field rating:I

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
