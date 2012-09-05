.class Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;
.super Ljava/lang/Object;
.source "RichInfoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackInfo"
.end annotation


# instance fields
.field composers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field genreDesc:Ljava/lang/String;

.field isPick:Z

.field isrc:Ljava/lang/String;

.field performers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field playLength:I

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field title:Ljava/lang/String;

.field trackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$TrackInfo;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
