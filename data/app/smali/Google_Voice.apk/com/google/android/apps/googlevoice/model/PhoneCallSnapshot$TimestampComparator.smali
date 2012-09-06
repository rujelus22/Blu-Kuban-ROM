.class Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$TimestampComparator;
.super Ljava/lang/Object;
.source "PhoneCallSnapshot.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimestampComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$TimestampComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)I
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 90
    iget-wide v0, p2, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    iget-wide v2, p1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p2, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    iget-wide v2, p1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    check-cast p1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .end local p1
    check-cast p2, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot$TimestampComparator;->compare(Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)I

    move-result v0

    return v0
.end method
