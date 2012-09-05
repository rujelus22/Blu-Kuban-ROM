.class Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;
.super Ljava/lang/Object;
.source "DrawingBitmapFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawinJob"
.end annotation


# instance fields
.field private callback:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;

.field private currentstorytime:F

.field private firstElement:Lcom/samsung/app/video/editor/external/Element;

.field final synthetic this$0:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;F)V
    .registers 5
    .parameter
    .parameter "firstElement"
    .parameter "aCallback"
    .parameter "atime"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->this$0:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    .line 242
    iput-object p3, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->callback:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;

    .line 243
    iput p4, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->currentstorytime:F

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)F
    .registers 2
    .parameter

    .prologue
    .line 238
    iget v0, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->currentstorytime:F

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;
    .registers 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->callback:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;

    return-object v0
.end method
