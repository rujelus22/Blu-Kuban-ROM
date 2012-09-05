.class public Lcom/google/android/apps/books/api/ConcurrentAccessResponse;
.super Ljava/lang/Object;
.source "ConcurrentAccessResponse.java"


# instance fields
.field public deviceAllowed:Z
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public maxConcurrentDevices:I
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public restricted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public timeWindowSeconds:I
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
