.class Lcom/infraware/common/setting/SettingActivity$4;
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
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xc8

    const/16 v7, 0x32

    .line 557
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, strValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5e

    .line 563
    :try_start_1e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_21} :catch_5f

    move-result v1

    .line 568
    .local v1, nValue:I
    :goto_22
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$12(Lcom/infraware/common/setting/SettingActivity;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_63

    if-gt v7, v1, :cond_63

    if-gt v1, v8, :cond_63

    .line 569
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #setter for: Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I
    invoke-static {v3, v1}, Lcom/infraware/common/setting/SettingActivity;->access$13(Lcom/infraware/common/setting/SettingActivity;I)V

    .line 570
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$12(Lcom/infraware/common/setting/SettingActivity;)Landroid/preference/Preference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I
    invoke-static {v5}, Lcom/infraware/common/setting/SettingActivity;->access$14(Lcom/infraware/common/setting/SettingActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " %"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #calls: Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$5(Lcom/infraware/common/setting/SettingActivity;)V

    .line 585
    .end local v1           #nValue:I
    :cond_5e
    :goto_5e
    return-void

    .line 564
    :catch_5f
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v1, 0xc8

    .restart local v1       #nValue:I
    goto :goto_22

    .line 574
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_63
    if-ge v1, v7, :cond_95

    .line 575
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 582
    :cond_8f
    :goto_8f
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #calls: Lcom/infraware/common/setting/SettingActivity;->onShowFieldValueError(II)V
    invoke-static {v3, v7, v8}, Lcom/infraware/common/setting/SettingActivity;->access$9(Lcom/infraware/common/setting/SettingActivity;II)V

    goto :goto_5e

    .line 578
    :cond_95
    if-le v1, v8, :cond_8f

    .line 579
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity$4;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/infraware/common/setting/SettingActivity;->access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_8f
.end method
