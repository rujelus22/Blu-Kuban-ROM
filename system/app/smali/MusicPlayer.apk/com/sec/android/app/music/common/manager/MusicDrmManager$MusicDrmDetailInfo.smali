.class public Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/manager/MusicDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicDrmDetailInfo"
.end annotation


# instance fields
.field public constraintsType:I

.field public displayStr:[Ljava/lang/String;

.field public displayType:I

.field public drmType:I

.field final synthetic this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

.field public typeStr:[I

.field public usesStr:I

.field public validityStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1090
    iput-object p1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iput v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->drmType:I

    .line 1075
    iput v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->constraintsType:I

    .line 1078
    iput v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayType:I

    .line 1080
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->displayStr:[Ljava/lang/String;

    .line 1082
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->typeStr:[I

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->usesStr:I

    .line 1088
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmDetailInfo;->validityStr:Ljava/lang/String;

    .line 1092
    return-void

    .line 1082
    :array_20
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
