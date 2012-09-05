.class public Lcom/sec/android/app/sns/db/SnsDBUtilListData;
.super Ljava/lang/Object;
.source "SnsDBUtilListData.java"


# instance fields
.field private mMaxCount:I

.field private mStartContext:Ljava/lang/String;

.field private mStartOffset:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .parameter "startOffset"
    .parameter "maxCount"
    .parameter "startContext"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->mStartOffset:I

    .line 29
    iput p2, p0, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->mMaxCount:I

    .line 30
    iput-object p3, p0, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->mStartContext:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getMaxCount()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->mMaxCount:I

    return v0
.end method

.method public getStartContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->mStartContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/sns/db/SnsDBUtilListData;->mStartOffset:I

    return v0
.end method
