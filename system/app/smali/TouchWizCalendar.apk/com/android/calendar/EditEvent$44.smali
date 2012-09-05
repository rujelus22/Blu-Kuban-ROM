.class Lcom/android/calendar/EditEvent$44;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createAlarmCustomizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;Landroid/widget/Button;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/calendar/EditEvent$44;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$44;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/calendar/EditEvent$44;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1711
    iget-object v1, p0, Lcom/android/calendar/EditEvent$44;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->hideSoftInput()V
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1600(Lcom/android/calendar/EditEvent;)V

    .line 1712
    const/4 v0, 0x0

    .line 1714
    .local v0, alarm_input:I
    :try_start_6
    iget-object v1, p0, Lcom/android/calendar/EditEvent$44;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_13} :catch_27

    move-result v0

    .line 1718
    :goto_14
    iget-object v1, p0, Lcom/android/calendar/EditEvent$44;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v2, p0, Lcom/android/calendar/EditEvent$44;->val$button:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/calendar/EditEvent;->setAlarmCustomize(ILjava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/calendar/EditEvent;->access$4900(Lcom/android/calendar/EditEvent;ILjava/lang/String;)V

    .line 1719
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1720
    return-void

    .line 1715
    :catch_27
    move-exception v1

    goto :goto_14
.end method
