.class public Lcom/google/android/apps/books/api/SyncVolumeLicensesRequest;
.super Ljava/lang/Object;
.source "SyncVolumeLicensesRequest.java"


# instance fields
.field private final mVolumeIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "volumeIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/api/SyncVolumeLicensesRequest;->mVolumeIds:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addVolumeId(Ljava/lang/String;)V
    .registers 3
    .parameter "volumeId"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/books/api/SyncVolumeLicensesRequest;->mVolumeIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
