.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;
.super Ljava/lang/Object;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;

.field final synthetic val$quickResponse:Lcom/android/emailcommon/provider/QuickResponse;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;Lcom/android/emailcommon/provider/QuickResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;->val$quickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->access$200(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;->val$quickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/QuickResponse;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2$1;->val$quickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/QuickResponse;->getId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 97
    return-void
.end method
