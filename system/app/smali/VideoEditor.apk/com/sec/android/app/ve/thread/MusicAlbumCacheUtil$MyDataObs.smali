.class Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MyDataObs;
.super Landroid/database/DataSetObserver;
.source "MusicAlbumCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataObs"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MyDataObs;->this$0:Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method
