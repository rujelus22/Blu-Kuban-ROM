.class public Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;
.super Ljava/lang/Object;
.source "BatchMutateTrackRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutateTrackRequest"
.end annotation


# instance fields
.field public mDeleteTrackRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "delete"
    .end annotation
.end field

.field public mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "update"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
