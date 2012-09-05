.class public Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;
.super Ljava/lang/Object;
.source "SttsAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/mp4/SttsAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SttsEntry"
.end annotation


# instance fields
.field public final count:I

.field public final delta:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "count"
    .parameter "delta"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;->count:I

    .line 47
    iput p2, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;->delta:I

    .line 48
    return-void
.end method
