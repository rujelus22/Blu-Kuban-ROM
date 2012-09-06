.class Lcom/google/android/apps/plus/fragments/BlockFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "BlockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/BlockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/BlockFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/BlockFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/BlockFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/BlockFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetBlockedRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/BlockFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/BlockFragment;->handleSetBlockedCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 47
    return-void
.end method
