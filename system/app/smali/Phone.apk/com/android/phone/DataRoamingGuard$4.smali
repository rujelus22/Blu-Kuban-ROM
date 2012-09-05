.class Lcom/android/phone/DataRoamingGuard$4;
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
    .line 122
    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 125
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    .line 126
    .local v0, IsDomesticRoaming:Z
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v1

    .line 128
    .local v1, IsInternationalRoaming:Z
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    iget-object v5, v5, Lcom/android/phone/DataRoamingGuard;->cbNeverAsk:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 130
    if-eqz v0, :cond_a4

    .line 131
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roam_guard_data_domestic"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    :cond_35
    :goto_35
    if-eqz v0, :cond_e9

    .line 147
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roam_setting_data_domestic"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    :cond_4a
    :goto_4a
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 155
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    .line 157
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/android/phone/DataRoamingGuard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 158
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->setRoamingMobileDataEnabled(Z)V

    .line 161
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roam_guard_first_time"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, bFirstTime:I
    if-eqz v2, :cond_9e

    .line 164
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roam_guard_first_time"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    const v6, 0x7f0e04d2

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 169
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 172
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_9e
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v5}, Lcom/android/phone/DataRoamingGuard;->finish()V

    .line 173
    return-void

    .line 133
    .end local v2           #bFirstTime:I
    .end local v3           #cm:Landroid/net/ConnectivityManager;
    :cond_a4
    if-eqz v1, :cond_35

    .line 134
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roam_guard_data_international"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_35

    .line 137
    :cond_bb
    if-eqz v0, :cond_d2

    .line 138
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roam_guard_data_domestic"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_35

    .line 140
    :cond_d2
    if-eqz v1, :cond_35

    .line 141
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roam_guard_data_international"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_35

    .line 149
    :cond_e9
    if-eqz v1, :cond_4a

    .line 150
    iget-object v5, p0, Lcom/android/phone/DataRoamingGuard$4;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/DataRoamingGuard;->access$000(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roam_setting_data_international"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4a
.end method
