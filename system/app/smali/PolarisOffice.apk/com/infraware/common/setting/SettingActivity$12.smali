.class Lcom/infraware/common/setting/SettingActivity$12;
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
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$12;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$12;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/common/setting/SettingActivity;->mIsSubUpdate:Z
    invoke-static {v0, v1}, Lcom/infraware/common/setting/SettingActivity;->access$19(Lcom/infraware/common/setting/SettingActivity;Z)V

    .line 699
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$12;->this$0:Lcom/infraware/common/setting/SettingActivity;

    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$12;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_strVersionCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$6(Lcom/infraware/common/setting/SettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/common/setting/SettingActivity;->onUpdateApk(Ljava/lang/String;)Z

    .line 700
    return-void
.end method
