.class Lcom/android/settings/BandMode$BandListItem;
.super Ljava/lang/Object;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BandListItem"
.end annotation


# instance fields
.field private mBandMode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "bm"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    .line 104
    iput p1, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    .line 105
    return-void
.end method


# virtual methods
.method public getBand()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    invoke-static {}, Lcom/android/settings/BandMode;->access$300()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    aget-object v0, v0, v1

    return-object v0
.end method