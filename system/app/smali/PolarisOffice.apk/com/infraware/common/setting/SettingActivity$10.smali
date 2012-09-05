.class Lcom/infraware/common/setting/SettingActivity$10;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$10;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$10;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    .line 668
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$10;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const v1, 0x7f0800b8

    #setter for: Lcom/infraware/common/setting/SettingActivity;->mCancelMsg:I
    invoke-static {v0, v1}, Lcom/infraware/common/setting/SettingActivity;->access$18(Lcom/infraware/common/setting/SettingActivity;I)V

    .line 669
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$10;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    .line 670
    return-void
.end method
