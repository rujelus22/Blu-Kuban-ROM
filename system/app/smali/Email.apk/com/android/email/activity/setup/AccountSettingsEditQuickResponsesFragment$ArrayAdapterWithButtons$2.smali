.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;
.super Ljava/lang/Object;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/QuickResponse;

    .line 92
    .local v0, quickResponse:Lcom/android/emailcommon/provider/QuickResponse;
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;Lcom/android/emailcommon/provider/QuickResponse;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 99
    return-void
.end method
