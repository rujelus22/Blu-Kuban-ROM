.class public Lcom/sec/android/app/music/common/richinfo/NetworkData;
.super Ljava/lang/Object;
.source "NetworkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;,
        Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;
    }
.end annotation


# instance fields
.field public encryptedData:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;

.field public errorText:Ljava/lang/String;

.field public hasShop:Z

.field public isError:Z

.field public requestConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requestId:Ljava/lang/String;

.field resultFindTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;",
            ">;"
        }
    .end annotation
.end field

.field resultTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/richinfo/NetworkData$Track;",
            ">;"
        }
    .end annotation
.end field

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->hasShop:Z

    .line 15
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->isError:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->requestConfig:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->resultTracks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/NetworkData;->resultFindTags:Ljava/util/ArrayList;

    .line 68
    return-void
.end method
