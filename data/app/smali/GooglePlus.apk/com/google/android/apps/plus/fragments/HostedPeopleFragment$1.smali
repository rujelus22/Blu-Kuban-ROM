.class Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedPeopleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

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
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleNewCircleCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 172
    return-void
.end method

.method public onDeleteCirclesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 190
    return-void
.end method

.method public onModifyCirclePropertiesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 199
    return-void
.end method

.method public onSetBlockedRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 181
    return-void
.end method

.method public onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 163
    return-void
.end method
