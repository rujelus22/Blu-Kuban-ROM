.class Lcom/android/calendar/CalendarActivity$8;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 709
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$8;->this$0:Lcom/android/calendar/CalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/CalendarActivity$8;->val$quickAdd:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity$8;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$8;->val$quickAdd:Landroid/widget/EditText;

    #calls: Lcom/android/calendar/CalendarActivity;->hideQuickAddDialog(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/calendar/CalendarActivity;->access$100(Lcom/android/calendar/CalendarActivity;Landroid/view/View;)V

    .line 712
    return-void
.end method
