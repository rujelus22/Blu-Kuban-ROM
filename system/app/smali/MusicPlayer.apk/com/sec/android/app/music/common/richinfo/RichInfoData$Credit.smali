.class Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;
.super Ljava/lang/Object;
.source "RichInfoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Credit"
.end annotation


# instance fields
.field PerformerSimpleInfo:Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtistInfo;

.field creditId:Ljava/lang/String;

.field role:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$Credit;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
