.class final Lcom/google/android/apps/translate/history/BaseDb$2;
.super Ljava/lang/Object;
.source "BaseDb.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/history/BaseDb;
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
        "Lcom/google/android/apps/translate/history/Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/history/Entry;)I
    .registers 9
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    const/4 v4, 0x0

    .line 90
    if-ne p1, p2, :cond_4

    .line 100
    :cond_3
    :goto_3
    return v4

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getAccessedTime()J

    move-result-wide v0

    .line 94
    .local v0, atime1:J
    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getAccessedTime()J

    move-result-wide v2

    .line 95
    .local v2, atime2:J
    cmp-long v5, v0, v2

    if-gez v5, :cond_12

    .line 96
    const/4 v4, 0x1

    goto :goto_3

    .line 97
    :cond_12
    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    .line 98
    const/4 v4, -0x1

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    check-cast p1, Lcom/google/android/apps/translate/history/Entry;

    .end local p1
    check-cast p2, Lcom/google/android/apps/translate/history/Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/translate/history/BaseDb$2;->compare(Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/history/Entry;)I

    move-result v0

    return v0
.end method
