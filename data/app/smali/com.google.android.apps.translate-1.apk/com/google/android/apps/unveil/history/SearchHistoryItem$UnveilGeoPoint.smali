.class public Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;
.super Ljava/lang/Object;
.source "SearchHistoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnveilGeoPoint"
.end annotation


# instance fields
.field private final latitudeE6:I

.field private final longitudeE6:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "latitudeE6"
    .parameter "longitudeE6"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;->latitudeE6:I

    .line 36
    iput p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;->longitudeE6:I

    .line 37
    return-void
.end method


# virtual methods
.method public getLatitudeE6()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;->latitudeE6:I

    return v0
.end method

.method public getLongitudeE6()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryItem$UnveilGeoPoint;->longitudeE6:I

    return v0
.end method
