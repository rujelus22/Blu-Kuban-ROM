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
    .line 69
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
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 95
    return-void
.end method

.method public onCircleSyncComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 77
    return-void
.end method

.method public onDismissSuggestedPeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 113
    return-void
.end method

.method public onEventManageGuestComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 121
    return-void
.end method

.method public onRemovePeopleRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 104
    return-void
.end method

.method public onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 86
    return-void
.end method
