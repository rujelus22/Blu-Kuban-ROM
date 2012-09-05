.class Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "CheckinListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CheckinListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationQuery(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "account"
    .parameter "query"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_37

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iput-object v3, v0, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 92
    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070122

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 100
    :cond_37
    return-void
.end method
