.class public Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/core/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)I
    .registers 9
    .parameter "a"
    .parameter "b"

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v0

    .line 207
    .local v0, aTime:J
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v2

    .line 208
    .local v2, bTime:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_e

    const/4 v4, -0x1

    :goto_d
    return v4

    :cond_e
    cmp-long v4, v2, v0

    if-lez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_d

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    check-cast p1, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .end local p1
    check-cast p2, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;->compare(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v0

    return v0
.end method
