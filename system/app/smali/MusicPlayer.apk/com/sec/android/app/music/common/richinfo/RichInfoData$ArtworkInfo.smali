.class Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;
.super Ljava/lang/Object;
.source "RichInfoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtworkInfo"
.end annotation


# instance fields
.field artwork:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoData$ArtworkInfo;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method