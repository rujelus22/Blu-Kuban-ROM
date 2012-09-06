.class Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PlusOneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PlusOneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlusOneApplyResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$000(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->onFinishedWrite(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 79
    :cond_15
    return-void
.end method
