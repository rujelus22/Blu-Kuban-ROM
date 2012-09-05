.class Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;
.super Ljava/lang/Object;
.source "NetworkData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/NetworkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Track"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;
    }
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public artists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/NetworkData$Track$Artist;",
            ">;"
        }
    .end annotation
.end field

.field public coverUrl:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public recommendation:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/NetworkData;

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/NetworkData;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->this$0:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;->artists:Ljava/util/ArrayList;

    .line 61
    return-void
.end method
