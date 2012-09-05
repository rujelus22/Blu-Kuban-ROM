.class Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;
.super Ljava/lang/Object;
.source "RichInfoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformerDetailInfo"
.end annotation


# instance fields
.field albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field biography:Ljava/lang/String;

.field followers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field influenceArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field performerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

.field similarArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$PerformerDetailInfo;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
