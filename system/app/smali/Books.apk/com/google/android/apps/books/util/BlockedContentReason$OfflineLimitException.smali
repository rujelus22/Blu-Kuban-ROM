.class public final Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;
.super Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;
.source "BlockedContentReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/BlockedContentReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineLimitException"
.end annotation


# instance fields
.field private final mNumDevicesLimit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "detailMessage"
    .parameter "numDevicesLimit"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;-><init>(Ljava/lang/String;)V

    .line 122
    iput p2, p0, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;->mNumDevicesLimit:I

    .line 123
    return-void
.end method


# virtual methods
.method public getDeviceLimit()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;->mNumDevicesLimit:I

    return v0
.end method
