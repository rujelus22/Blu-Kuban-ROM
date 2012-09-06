.class public Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;
.super Ljava/lang/Object;
.source "VoiceAllocationCounters.java"


# static fields
.field public static final CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/googlevoice/util/AllocationCounter",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    new-instance v1, Lcom/google/android/apps/googlevoice/util/logging/GLogImpl;

    const-string v2, "ContextAllocations"

    invoke-direct {v1, v2}, Lcom/google/android/apps/googlevoice/util/logging/GLogImpl;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;-><init>(Lcom/google/android/apps/common/log/GLog;Z)V

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->withSummaryEveryRegister()Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->withToStringOfLiveObjectsInSummary()Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
