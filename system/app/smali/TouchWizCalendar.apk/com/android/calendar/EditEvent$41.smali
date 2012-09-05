.class Lcom/android/calendar/EditEvent$41;
.super Ljava/util/TimerTask;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->prepareRepeatCustomizeDialog(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$mEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/android/calendar/EditEvent$41;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$41;->val$mEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1690
    iget-object v1, p0, Lcom/android/calendar/EditEvent$41;->this$0:Lcom/android/calendar/EditEvent;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1691
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/calendar/EditEvent$41;->val$mEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1692
    return-void
.end method
