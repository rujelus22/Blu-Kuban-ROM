.class Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
.super Ljava/lang/Object;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncOptions"
.end annotation


# instance fields
.field private final mInterval:I

.field private final mLookback:I

.field private final mOffpeakSchedule:I

.field private final mPeakSchedule:I


# direct methods
.method static synthetic access$100(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mOffpeakSchedule:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mPeakSchedule:I

    return v0
.end method
