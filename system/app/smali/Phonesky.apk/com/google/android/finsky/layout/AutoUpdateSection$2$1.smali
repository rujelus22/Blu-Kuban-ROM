.class Lcom/google/android/finsky/layout/AutoUpdateSection$2$1;
.super Ljava/lang/Object;
.source "AutoUpdateSection.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AutoUpdateSection$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/AutoUpdateSection$2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AutoUpdateSection$2;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$2$1;->this$1:Lcom/google/android/finsky/layout/AutoUpdateSection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 113
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
