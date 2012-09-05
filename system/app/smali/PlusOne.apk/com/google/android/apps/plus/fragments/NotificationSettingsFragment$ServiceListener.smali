.class Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onChangeNotificationsRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->access$100(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;

    const v1, 0x7f07009f

    #calls: Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->showToast(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;->access$200(Lcom/google/android/apps/plus/fragments/NotificationSettingsFragment;I)V

    .line 180
    :cond_1a
    return-void
.end method
