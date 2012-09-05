.class Lcom/infraware/common/setting/SettingActivity$14;
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
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #setter for: Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I
    invoke-static {v0, p2}, Lcom/infraware/common/setting/SettingActivity;->access$20(Lcom/infraware/common/setting/SettingActivity;I)V

    .line 715
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #calls: Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$5(Lcom/infraware/common/setting/SettingActivity;)V

    .line 716
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$21(Lcom/infraware/common/setting/SettingActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 729
    :goto_13
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 730
    return-void

    .line 718
    :pswitch_17
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$22(Lcom/infraware/common/setting/SettingActivity;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0802fa

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_13

    .line 721
    :pswitch_24
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$22(Lcom/infraware/common/setting/SettingActivity;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0802fb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 722
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v1, 0x1

    #calls: Lcom/infraware/common/setting/SettingActivity;->convertStringWIFIToWLAN(Z)V
    invoke-static {v0, v1}, Lcom/infraware/common/setting/SettingActivity;->access$23(Lcom/infraware/common/setting/SettingActivity;Z)V

    goto :goto_13

    .line 725
    :pswitch_37
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/infraware/common/setting/SettingActivity;->access$22(Lcom/infraware/common/setting/SettingActivity;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0802fc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 726
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity$14;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v1, 0x0

    #calls: Lcom/infraware/common/setting/SettingActivity;->convertStringWIFIToWLAN(Z)V
    invoke-static {v0, v1}, Lcom/infraware/common/setting/SettingActivity;->access$23(Lcom/infraware/common/setting/SettingActivity;Z)V

    goto :goto_13

    .line 716
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_24
        :pswitch_37
    .end packed-switch
.end method
