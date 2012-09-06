.class public Lcom/google/android/apps/googlevoice/sms/PendingSms;
.super Ljava/lang/Object;
.source "PendingSms.java"


# instance fields
.field public final phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

.field public final requestId:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/core/PhoneCall;J)V
    .registers 4
    .parameter "phoneCall"
    .parameter "requestId"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 20
    iput-wide p2, p0, Lcom/google/android/apps/googlevoice/sms/PendingSms;->requestId:J

    .line 21
    return-void
.end method
