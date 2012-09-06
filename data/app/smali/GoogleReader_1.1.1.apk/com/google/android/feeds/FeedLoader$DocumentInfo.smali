.class Lcom/google/android/feeds/FeedLoader$DocumentInfo;
.super Ljava/lang/Object;
.source "FeedLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/FeedLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentInfo"
.end annotation


# instance fields
.field private final mContinuationToken:Ljava/lang/String;

.field private final mItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mItemCount:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mContinuationToken:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "itemCount"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mItemCount:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mContinuationToken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "itemCount"
    .parameter "continuationToken"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mItemCount:I

    .line 62
    iput-object p2, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mContinuationToken:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public continuationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mContinuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public itemCount()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->mItemCount:I

    return v0
.end method
