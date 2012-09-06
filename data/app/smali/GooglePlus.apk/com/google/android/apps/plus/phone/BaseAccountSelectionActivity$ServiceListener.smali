.class Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "BaseAccountSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;-><init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onAccountAdded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #getter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$100(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #getter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$100(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->dismissDialog(I)V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_36

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #getter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$200(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #getter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAccountsListFragment:Lcom/google/android/apps/plus/fragments/AccountsListFragment;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$200(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Lcom/google/android/apps/plus/fragments/AccountsListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AccountsListFragment;->showList()V

    .line 105
    :cond_36
    :goto_36
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->isOutOfBoxError(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 106
    :cond_46
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #calls: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleResponse(ILcom/google/android/apps/plus/content/EsAccount;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$400(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;ILcom/google/android/apps/plus/content/EsAccount;)V

    .line 110
    :goto_4b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$102(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 112
    :cond_51
    return-void

    .line 102
    :cond_52
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mShowOnAttach:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$302(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Z)Z

    goto :goto_36

    .line 108
    :cond_59
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #calls: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleError(Lcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p3}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$500(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_4b
.end method

.method public onAccountUpgraded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #getter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$600(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    #getter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$600(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mUpdateAccountIdPendingRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$602(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->dismissDialog(I)V

    .line 123
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_31

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleUpgradeSuccess(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 129
    :cond_30
    :goto_30
    return-void

    .line 126
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$ServiceListener;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->handleUpgradeFailure()V

    goto :goto_30
.end method
