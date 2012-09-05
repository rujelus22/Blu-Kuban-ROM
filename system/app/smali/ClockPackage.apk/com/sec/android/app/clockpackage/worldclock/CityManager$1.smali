.class final Lcom/sec/android/app/clockpackage/worldclock/CityManager$1;
.super Ljava/lang/Object;
.source "CityManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByOffset()[Lcom/sec/android/app/clockpackage/worldclock/City;
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
    .line 324
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/clockpackage/worldclock/City;Lcom/sec/android/app/clockpackage/worldclock/City;)I
    .registers 8
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v1

    .line 330
    .local v1, off1:I
    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v2

    .line 332
    .local v2, off2:I
    if-eq v1, v2, :cond_d

    .line 334
    sub-int v3, v2, v1

    .line 352
    :goto_c
    return v3

    .line 338
    :cond_d
    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 340
    .local v0, dlat:I
    if-gez v0, :cond_1d

    .line 342
    const/4 v3, 0x1

    goto :goto_c

    .line 346
    :cond_1d
    if-lez v0, :cond_21

    .line 348
    const/4 v3, -0x1

    goto :goto_c

    .line 352
    :cond_21
    const/4 v3, 0x0

    goto :goto_c
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 324
    check-cast p1, Lcom/sec/android/app/clockpackage/worldclock/City;

    .end local p1
    check-cast p2, Lcom/sec/android/app/clockpackage/worldclock/City;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager$1;->compare(Lcom/sec/android/app/clockpackage/worldclock/City;Lcom/sec/android/app/clockpackage/worldclock/City;)I

    move-result v0

    return v0
.end method
