.class Lcom/google/android/apps/plus/fragments/CircleListFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "CircleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CircleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/CircleListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

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
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 95
    return-void
.end method

.method public onDeleteCirclesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 104
    return-void
.end method
