.class Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;
.super Ljava/lang/Object;
.source "DiagnosticsNotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/DiagnosticsNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    .line 46
    :try_start_0
    iget-object v10, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsNotificationActivity;->ledFlashButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->access$0(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 47
    const-string v2, ""

    .line 49
    .local v2, d:Ljava/lang/String;
    const/4 v1, 0x0

    .line 50
    .local v1, color:I
    iget-object v10, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    const v11, 0x7f0b001f

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 51
    .local v7, red:Landroid/widget/RadioButton;
    invoke-virtual {v7}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 52
    const/high16 v10, -0x1

    or-int/2addr v1, v10

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " RED "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_34
    iget-object v10, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    const v11, 0x7f0b0020

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 56
    .local v4, green:Landroid/widget/RadioButton;
    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 57
    const v10, -0xff0100

    or-int/2addr v1, v10

    .line 58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " GREEN "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_5c
    iget-object v10, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    const v11, 0x7f0b0021

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 61
    .local v0, blue:Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_84

    .line 62
    const v10, -0xffff01

    or-int/2addr v1, v10

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " BLUE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    :cond_84
    iget-object v10, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    const v11, 0x7f0b0024

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 67
    .local v8, sound:Landroid/widget/CheckBox;
    const/4 v5, 0x0

    .line 68
    .local v5, isSound:Z
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 69
    const/4 v5, 0x1

    .line 70
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " SOUND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_aa
    iget-object v10, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    const v11, 0x7f0b0023

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 73
    .local v9, vibrate:Landroid/widget/CheckBox;
    const/4 v6, 0x0

    .line 74
    .local v6, isVibrate:Z
    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 75
    const/4 v6, 0x1

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " VIBRATE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    :cond_d0
    iget-object v10, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsNotificationActivity;

    #calls: Lcom/sprint/dsa/DiagnosticsNotificationActivity;->flashLEDLight(IZZ)V
    invoke-static {v10, v1, v6, v5}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->access$1(Lcom/sprint/dsa/DiagnosticsNotificationActivity;IZZ)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d5} :catch_d6

    .line 86
    .end local v0           #blue:Landroid/widget/RadioButton;
    .end local v1           #color:I
    .end local v2           #d:Ljava/lang/String;
    .end local v4           #green:Landroid/widget/RadioButton;
    .end local v5           #isSound:Z
    .end local v6           #isVibrate:Z
    .end local v7           #red:Landroid/widget/RadioButton;
    .end local v8           #sound:Landroid/widget/CheckBox;
    .end local v9           #vibrate:Landroid/widget/CheckBox;
    :goto_d5
    return-void

    .line 83
    :catch_d6
    move-exception v3

    .line 84
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "SprintZone_Diagnostics"

    const-string v11, "Exception: "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d5
.end method
