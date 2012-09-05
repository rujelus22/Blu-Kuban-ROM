.class Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;
.super Ljava/lang/Object;
.source "TimezoneAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TimezoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimezoneComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "sortingKey"

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;->mSortingKey:Ljava/lang/String;

    .line 386
    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 410
    if-eqz p1, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 6
    .parameter "map1"
    .parameter "map2"

    .prologue
    .line 393
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, value1:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 400
    .local v1, value2:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 401
    invoke-direct {p0, v1}, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    .line 406
    .end local v0           #value1:Ljava/lang/Object;
    :goto_19
    return v2

    .line 401
    .restart local v0       #value1:Ljava/lang/Object;
    :cond_1a
    const/4 v2, 0x0

    goto :goto_19

    .line 402
    :cond_1c
    invoke-direct {p0, v1}, Lcom/android/calendar/TimezoneAdapter$TimezoneComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 403
    const/4 v2, -0x1

    goto :goto_19

    .line 406
    :cond_24
    check-cast v0, Ljava/lang/Comparable;

    .end local v0           #value1:Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_19
.end method
