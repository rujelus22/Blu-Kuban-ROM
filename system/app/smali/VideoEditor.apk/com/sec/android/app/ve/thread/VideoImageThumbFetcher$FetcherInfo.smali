.class Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;
.super Ljava/lang/Object;
.source "VideoImageThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetcherInfo"
.end annotation


# instance fields
.field private callback:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

.field private filePath:Ljava/lang/String;

.field private id:J

.field private position:I

.field private targetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;Ljava/lang/String;IJLandroid/view/View;Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;)V
    .registers 8
    .parameter
    .parameter "filePath"
    .parameter "position"
    .parameter "id"
    .parameter "targetView"
    .parameter "callback"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->this$0:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;

    .line 217
    iput p3, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->position:I

    .line 218
    iput-wide p4, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->id:J

    .line 219
    iput-object p6, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;

    .line 220
    iput-object p7, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;
    .registers 2
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)I
    .registers 2
    .parameter

    .prologue
    .line 209
    iget v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->position:I

    return v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method
