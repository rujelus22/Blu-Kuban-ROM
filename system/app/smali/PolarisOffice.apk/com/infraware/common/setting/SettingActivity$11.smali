.class Lcom/infraware/common/setting/SettingActivity$11;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/setting/SettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$11;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 674
    sparse-switch p2, :sswitch_data_1e

    .line 685
    :goto_5
    return v0

    .line 678
    :sswitch_6
    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity$11;->this$0:Lcom/infraware/common/setting/SettingActivity;

    invoke-virtual {v2, v1}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    .line 679
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$11;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const v2, 0x7f0800b8

    #setter for: Lcom/infraware/common/setting/SettingActivity;->mCancelMsg:I
    invoke-static {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->access$18(Lcom/infraware/common/setting/SettingActivity;I)V

    .line 680
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$11;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_5

    :sswitch_1b
    move v0, v1

    .line 683
    goto :goto_5

    .line 674
    nop

    :sswitch_data_1e
    .sparse-switch
        0x4 -> :sswitch_6
        0x17 -> :sswitch_6
        0x54 -> :sswitch_1b
    .end sparse-switch
.end method
