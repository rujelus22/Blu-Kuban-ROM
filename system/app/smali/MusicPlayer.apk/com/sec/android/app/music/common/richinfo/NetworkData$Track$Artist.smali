.class Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;
.super Ljava/lang/Object;
.source "NetworkData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Artist"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$1:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;->this$1:Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method