.class Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;
.super Ljava/lang/Object;
.source "NetworkData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/NetworkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindTag"
.end annotation


# instance fields
.field public albumArtUrl:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/NetworkData;

.field public trackName:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/NetworkData;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->this$0:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
