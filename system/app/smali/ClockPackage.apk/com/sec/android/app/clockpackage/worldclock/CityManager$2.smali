.class final Lcom/sec/android/app/clockpackage/worldclock/CityManager$2;
.super Ljava/lang/Object;
.source "CityManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/CityManager;->setupCityListByGMT()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/clockpackage/worldclock/City;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 391
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/clockpackage/worldclock/City;Lcom/sec/android/app/clockpackage/worldclock/City;)I
    .registers 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v0

    .line 397
    .local v0, off1:I
    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v1

    .line 399
    .local v1, off2:I
    if-eq v0, v1, :cond_d

    .line 401
    sub-int v2, v1, v0

    .line 405
    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 391
    check-cast p1, Lcom/sec/android/app/clockpackage/worldclock/City;

    .end local p1
    check-cast p2, Lcom/sec/android/app/clockpackage/worldclock/City;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager$2;->compare(Lcom/sec/android/app/clockpackage/worldclock/City;Lcom/sec/android/app/clockpackage/worldclock/City;)I

    move-result v0

    return v0
.end method
