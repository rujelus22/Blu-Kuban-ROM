.class public Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;
.super Ljava/lang/Object;
.source "StscAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/mp4/StscAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StscEntry"
.end annotation


# instance fields
.field public final count:I

.field public final index:I

.field public final streamIndex:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter "index"
    .parameter "count"
    .parameter "streamIndex"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;->index:I

    .line 47
    iput p2, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;->count:I

    .line 48
    iput p3, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;->streamIndex:I

    .line 49
    return-void
.end method
