.class Lcom/android/calendar/MonthActivity$19;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;

.field final synthetic val$quickAdd:Landroid/widget/EditText;

.field final synthetic val$selectedDate:J


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$19;->this$0:Lcom/android/calendar/MonthActivity;

    iput-object p2, p0, Lcom/android/calendar/MonthActivity$19;->val$quickAdd:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/android/calendar/MonthActivity$19;->val$selectedDate:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 1647
    iget-object v1, p0, Lcom/android/calendar/MonthActivity$19;->val$quickAdd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/MonthActivity$19;->this$0:Lcom/android/calendar/MonthActivity;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity$19;->val$quickAdd:Landroid/widget/EditText;

    #calls: Lcom/android/calendar/MonthActivity;->hideQuickAddDialog(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/calendar/MonthActivity;->access$700(Lcom/android/calendar/MonthActivity;Landroid/view/View;)V

    .line 1649
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_24

    .line 1654
    :cond_23
    :goto_23
    return-void

    .line 1651
    :cond_24
    iget-object v1, p0, Lcom/android/calendar/MonthActivity$19;->this$0:Lcom/android/calendar/MonthActivity;

    iget-wide v2, p0, Lcom/android/calendar/MonthActivity$19;->val$selectedDate:J

    #calls: Lcom/android/calendar/MonthActivity;->saveQuickAddEvent(JLjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/calendar/MonthActivity;->access$800(Lcom/android/calendar/MonthActivity;JLjava/lang/String;)V

    goto :goto_23
.end method
