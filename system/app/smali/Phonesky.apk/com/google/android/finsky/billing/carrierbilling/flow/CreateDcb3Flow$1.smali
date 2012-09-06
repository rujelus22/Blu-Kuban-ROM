.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;
.super Ljava/lang/Object;
.source "CreateDcb3Flow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    .line 194
    return-void
.end method
