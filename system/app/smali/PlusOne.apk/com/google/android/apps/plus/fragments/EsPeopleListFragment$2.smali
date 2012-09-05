.class Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EsPeopleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPeopleToCirclesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 92
    return-void
.end method

.method public onCircleSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 74
    return-void
.end method

.method public onDismissSuggestedPeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 110
    return-void
.end method

.method public onRemovePeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 101
    return-void
.end method

.method public onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 83
    return-void
.end method
