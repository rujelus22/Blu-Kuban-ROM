.class Lcom/infraware/common/setting/SettingActivity$2;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/common/setting/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x32

    .line 236
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 238
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_5e

    .line 264
    :cond_a
    :goto_a
    return-void

    .line 241
    :sswitch_b
    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_strVersionCode:Ljava/lang/String;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$6(Lcom/infraware/common/setting/SettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/common/setting/SettingActivity;->onUpdateApk(Ljava/lang/String;)Z

    goto :goto_a

    .line 244
    :sswitch_17
    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/common/setting/SettingActivity;->access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/common/setting/SettingActivity;->access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 247
    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 250
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$8(Lcom/infraware/common/setting/SettingActivity;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 254
    :try_start_3d
    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_4e} :catch_59

    move-result v1

    .line 259
    .local v1, nZoom:I
    :goto_4f
    if-ge v1, v4, :cond_a

    .line 260
    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity$2;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/16 v3, 0xc8

    #calls: Lcom/infraware/common/setting/SettingActivity;->onShowFieldValueError(II)V
    invoke-static {v2, v4, v3}, Lcom/infraware/common/setting/SettingActivity;->access$9(Lcom/infraware/common/setting/SettingActivity;II)V

    goto :goto_a

    .line 255
    .end local v1           #nZoom:I
    :catch_59
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v1, 0xc9

    .restart local v1       #nZoom:I
    goto :goto_4f

    .line 238
    nop

    :sswitch_data_5e
    .sparse-switch
        0x64 -> :sswitch_b
        0xc8 -> :sswitch_17
    .end sparse-switch
.end method
