.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

.field final synthetic val$EditTextMin:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->val$EditTextMin:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "arg0"
    .parameter "actionId"
    .parameter "arg2"

    .prologue
    .line 806
    packed-switch p2, :pswitch_data_3e

    .line 821
    :goto_3
    const/4 v2, 0x1

    return v2

    .line 808
    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$600()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 809
    const-string v2, "AlarmDetail"

    const-string v3, "ACTION HOUR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 811
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_37

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_37

    .line 812
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 813
    .local v0, cursorPos:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 816
    .end local v0           #cursorPos:I
    :cond_37
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$5;->val$EditTextMin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 806
    nop

    :pswitch_data_3e
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method
