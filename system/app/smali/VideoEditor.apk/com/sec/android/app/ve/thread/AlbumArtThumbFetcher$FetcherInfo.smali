.class Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;
.super Ljava/lang/Object;
.source "AlbumArtThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetcherInfo"
.end annotation


# instance fields
.field private callback:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

.field private filePath:Ljava/lang/String;

.field private id:J

.field private position:I

.field private targetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;Ljava/lang/String;ILandroid/view/View;Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;)V
    .registers 6
    .parameter
    .parameter "filePath"
    .parameter "position"
    .parameter "targetView"
    .parameter "callback"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->this$0:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;

    .line 160
    iput p3, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->position:I

    .line 162
    iput-object p4, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;

    .line 163
    iput-object p5, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;
    .registers 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)I
    .registers 2
    .parameter

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->position:I

    return v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method
