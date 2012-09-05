.class Lcom/sec/android/widgetapp/dualclock/City$2;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/City;->setupCityListByGMT()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/widgetapp/dualclock/City$CityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/City;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/City;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/City$2;->this$0:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Lcom/sec/android/widgetapp/dualclock/City$CityInfo;)I
    .registers 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v0

    .line 223
    .local v0, off1:I
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v1

    .line 224
    .local v1, off2:I
    if-eq v0, v1, :cond_d

    .line 225
    sub-int v2, v1, v0

    .line 227
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
    .line 220
    check-cast p1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .end local p1
    check-cast p2, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/widgetapp/dualclock/City$2;->compare(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Lcom/sec/android/widgetapp/dualclock/City$CityInfo;)I

    move-result v0

    return v0
.end method
