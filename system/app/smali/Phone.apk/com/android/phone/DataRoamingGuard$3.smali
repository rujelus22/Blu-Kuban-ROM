.class Lcom/android/phone/DataRoamingGuard$3;
.super Ljava/lang/Object;
.source "DataRoamingGuard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/DataRoamingGuard;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    .line 106
    .local v0, IsDomesticRoaming:Z
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v1

    .line 108
    .local v1, IsInternationalRoaming:Z
    if-eqz v0, :cond_39

    .line 109
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roam_setting_data_domestic"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 117
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v2}, Lcom/android/phone/DataRoamingGuard;->finish()V

    .line 118
    return-void

    .line 111
    :cond_39
    if-eqz v1, :cond_2a

    .line 112
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roam_setting_data_international"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2a
.end method
