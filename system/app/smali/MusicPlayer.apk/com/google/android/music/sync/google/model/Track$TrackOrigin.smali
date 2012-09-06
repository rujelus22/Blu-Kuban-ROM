.class public Lcom/google/android/music/sync/google/model/Track$TrackOrigin;
.super Lcom/google/api/client/json/GenericJson;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackOrigin"
.end annotation


# instance fields
.field public mValue:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "origin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
