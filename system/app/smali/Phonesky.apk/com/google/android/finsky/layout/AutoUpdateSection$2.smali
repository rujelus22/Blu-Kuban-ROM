.class Lcom/google/android/finsky/layout/AutoUpdateSection$2;
.super Ljava/lang/Object;
.source "AutoUpdateSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AutoUpdateSection;->bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

.field final synthetic val$appStates:Lcom/google/android/finsky/appstate/AppStates;

.field final synthetic val$fragmentManager:Landroid/support/v4/app/FragmentManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Lcom/google/android/finsky/appstate/AppStates;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p3, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 143
    iget-object v2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    #getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    .line 145
    iget-object v2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    #getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7c

    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ENABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 147
    .local v1, newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :goto_18
    iget-object v2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    .line 150
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 151
    new-instance v0, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;-><init>()V

    .line 152
    .local v0, dialog:Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;
    iget-object v2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v3, "auto_update_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    .end local v0           #dialog:Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;
    :cond_3d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 156
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoUpdate?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&autoupdateenabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    #getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v5, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_7b
    return-void

    .line 145
    .end local v1           #newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :cond_7c
    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    goto :goto_18
.end method
