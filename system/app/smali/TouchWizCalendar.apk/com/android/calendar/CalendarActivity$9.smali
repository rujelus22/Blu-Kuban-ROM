.class Lcom/android/calendar/CalendarActivity$9;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;

.field final synthetic val$quickAdd:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$9;->this$0:Lcom/android/calendar/CalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/CalendarActivity$9;->val$quickAdd:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$9;->val$quickAdd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_24

    .line 721
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$9;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity$9;->val$quickAdd:Landroid/widget/EditText;

    #calls: Lcom/android/calendar/CalendarActivity;->hideQuickAddDialog(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/calendar/CalendarActivity;->access$100(Lcom/android/calendar/CalendarActivity;Landroid/view/View;)V

    .line 722
    return-void

    .line 719
    :cond_24
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$9;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity$9;->val$quickAdd:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/android/calendar/CalendarView;->saveQuickAddEvent(Landroid/widget/TextView;)V

    goto :goto_1c
.end method
