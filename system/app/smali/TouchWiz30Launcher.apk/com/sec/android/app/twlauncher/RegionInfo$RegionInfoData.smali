.class Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;
.super Ljava/lang/Object;
.source "RegionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/RegionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionInfoData"
.end annotation


# instance fields
.field protected mId:I

.field protected mRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/RegionInfo;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/RegionInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;->this$0:Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/RegionInfo;Lcom/sec/android/app/twlauncher/RegionInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/RegionInfo$RegionInfoData;-><init>(Lcom/sec/android/app/twlauncher/RegionInfo;)V

    return-void
.end method
