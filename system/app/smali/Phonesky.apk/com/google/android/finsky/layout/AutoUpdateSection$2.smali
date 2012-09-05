.class Lcom/google/android/finsky/layout/AutoUpdateSection$2;
.super Ljava/lang/Object;
.source "AutoUpdateSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AutoUpdateSection;->setApplicationPackageName(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

.field final synthetic val$fragmentManager:Landroid/support/v4/app/FragmentManager;

.field final synthetic val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Lcom/google/android/finsky/local/LocalAsset;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    iput-object p3, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    iput-object p4, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    #getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 99
    iget-object v2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    #getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_97

    sget-object v1, Lcom/google/android/finsky/local/AutoUpdateState;->ENABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    :goto_1a
    invoke-interface {v2, v1}, Lcom/google/android/finsky/local/LocalAsset;->setAutoUpdateState(Lcom/google/android/finsky/local/AutoUpdateState;)V

    .line 103
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_58

    .line 104
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 105
    const v1, 0x7f0701dd

    const v2, 0x7f0701de

    const v3, 0x7f0700ca

    const v4, 0x7f0700cb

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 110
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Lcom/google/android/finsky/layout/AutoUpdateSection$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AutoUpdateSection$2$1;-><init>(Lcom/google/android/finsky/layout/AutoUpdateSection$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setListener(Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    .end local v0           #alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    :cond_58
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 125
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoUpdate?doc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&autoupdateenabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    #getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v5, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_96
    return-void

    .line 99
    :cond_97
    sget-object v1, Lcom/google/android/finsky/local/AutoUpdateState;->DISABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    goto :goto_1a
.end method
