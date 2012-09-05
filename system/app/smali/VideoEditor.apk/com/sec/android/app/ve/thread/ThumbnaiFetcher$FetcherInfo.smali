.class Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;
.super Ljava/lang/Object;
.source "ThumbnaiFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetcherInfo"
.end annotation


# instance fields
.field private callback:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;

.field private filePath:Ljava/lang/String;

.field private targetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

.field private time:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;Ljava/lang/String;FLandroid/view/View;Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;)V
    .registers 6
    .parameter
    .parameter "filePath"
    .parameter "time"
    .parameter "targetView"
    .parameter "callback"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->this$0:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->filePath:Ljava/lang/String;

    .line 99
    iput p3, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->time:F

    .line 100
    iput-object p4, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->targetView:Landroid/view/View;

    .line 101
    iput-object p5, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->targetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;)F
    .registers 2
    .parameter

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$FetcherInfo;->time:F

    return v0
.end method
