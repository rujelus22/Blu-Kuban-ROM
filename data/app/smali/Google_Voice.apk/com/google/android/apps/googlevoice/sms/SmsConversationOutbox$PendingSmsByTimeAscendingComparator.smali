.class Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;
.super Ljava/lang/Object;
.source "SmsConversationOutbox.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingSmsByTimeAscendingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/googlevoice/sms/PendingSms;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/googlevoice/sms/PendingSms;Lcom/google/android/apps/googlevoice/sms/PendingSms;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 164
    sget-object v0, Lcom/google/android/apps/googlevoice/core/PhoneCall;->COMPARATOR_BY_TIME_ASCENDING:Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;

    iget-object v1, p1, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iget-object v2, p2, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;->compare(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    check-cast p1, Lcom/google/android/apps/googlevoice/sms/PendingSms;

    .end local p1
    check-cast p2, Lcom/google/android/apps/googlevoice/sms/PendingSms;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsByTimeAscendingComparator;->compare(Lcom/google/android/apps/googlevoice/sms/PendingSms;Lcom/google/android/apps/googlevoice/sms/PendingSms;)I

    move-result v0

    return v0
.end method
