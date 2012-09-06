.class Lcom/google/android/apps/unveil/protocol/QueryManager$1;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Lcom/google/android/apps/unveil/protocol/QueryManager$GogglesResponsesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/QueryManager;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryManagerParams;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Lcom/google/android/apps/unveil/UnveilContext;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$1;->val$application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGogglesResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;)V
    .registers 4
    .parameter "gogglesResponse"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$1;->val$application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/unveil/protocol/IdExtractor;->extractTrackingId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->setTrackingId(Ljava/lang/String;)V

    .line 83
    return-void
.end method
