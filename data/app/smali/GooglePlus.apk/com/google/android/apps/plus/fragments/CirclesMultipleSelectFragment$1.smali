.class Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "CirclesMultipleSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateCircleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 101
    return-void
.end method
