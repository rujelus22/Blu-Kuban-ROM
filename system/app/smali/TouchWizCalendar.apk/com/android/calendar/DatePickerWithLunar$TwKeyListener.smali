.class Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;
.super Ljava/lang/Object;
.source "DatePickerWithLunar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DatePickerWithLunar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Lcom/android/calendar/DatePickerWithLunar;


# direct methods
.method public constructor <init>(Lcom/android/calendar/DatePickerWithLunar;I)V
    .registers 3
    .parameter
    .parameter "next_id"

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput p2, p0, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;->mNext:I

    .line 1023
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1027
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_9

    .line 1043
    :goto_8
    return v0

    .line 1031
    :cond_9
    sparse-switch p2, :sswitch_data_28

    goto :goto_8

    :sswitch_d
    move v0, v1

    .line 1041
    goto :goto_8

    .line 1033
    :sswitch_f
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1036
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar;->access$1700(Lcom/android/calendar/DatePickerWithLunar;)[Landroid/widget/EditText;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/DatePickerWithLunar$TwKeyListener;->mNext:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 1037
    goto :goto_8

    .line 1031
    nop

    :sswitch_data_28
    .sparse-switch
        0x17 -> :sswitch_d
        0x3d -> :sswitch_f
        0x42 -> :sswitch_d
    .end sparse-switch
.end method
