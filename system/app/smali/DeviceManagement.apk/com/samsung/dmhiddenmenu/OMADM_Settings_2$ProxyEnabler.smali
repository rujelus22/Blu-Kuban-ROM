.class Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;
.super Landroid/preference/CheckBoxPreference;
.source "OMADM_Settings_2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProxyEnabler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;


# direct methods
.method public constructor <init>(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    .line 239
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 240
    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 15

    .prologue
    const/16 v13, 0x7da

    const/16 v1, 0x16

    const/16 v2, 0xc

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 243
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 244
    const-string v0, "OMADM_Settings_2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Proxy Enabling : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->isChecked()Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    iget-object v0, v0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->myCtx:Landroid/content/Context;

    const-string v5, "DMAPP_STATE"

    const/4 v10, 0x3

    invoke-virtual {v0, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 247
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 248
    .local v7, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 249
    const-string v0, "OMADM_Settings_2"

    const-string v5, "Enable Proxy"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-array v6, v11, [B

    aput-byte v11, v6, v12

    .line 251
    .local v6, byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 252
    .local v3, data:Ljava/lang/String;
    new-array v8, v11, [B

    aput-byte v11, v8, v12

    .line 253
    .local v8, msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 254
    .local v4, len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #getter for: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$100(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #getter for: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$000(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 258
    const-string v0, "Proxy_Enabled"

    invoke-interface {v7, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    :goto_6d
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    return-void

    .line 263
    .end local v3           #data:Ljava/lang/String;
    .end local v4           #len:Ljava/lang/String;
    .end local v6           #byteMsg:[B
    .end local v8           #msgLen:[B
    :cond_71
    const-string v0, "OMADM_Settings_2"

    const-string v5, "Disable Proxy"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-array v6, v11, [B

    const/4 v0, 0x2

    aput-byte v0, v6, v12

    .line 265
    .restart local v6       #byteMsg:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 266
    .restart local v3       #data:Ljava/lang/String;
    new-array v8, v11, [B

    aput-byte v11, v8, v12

    .line 267
    .restart local v8       #msgLen:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 268
    .restart local v4       #len:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #getter for: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$100(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2$ProxyEnabler;->this$0:Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;

    #getter for: Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;->access$000(Lcom/samsung/dmhiddenmenu/OMADM_Settings_2;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 272
    const-string v0, "Proxy_Enabled"

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_6d
.end method
