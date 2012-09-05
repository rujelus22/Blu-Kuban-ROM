.class Lcom/android/calendar/DatePickerWithLunar$1;
.super Ljava/lang/Object;
.source "DatePickerWithLunar.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DatePickerWithLunar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DatePickerWithLunar;


# direct methods
.method constructor <init>(Lcom/android/calendar/DatePickerWithLunar;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 12
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v5, 0xb

    const/4 v7, 0x1

    .line 218
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    iget v3, v4, Lcom/android/calendar/DatePickerWithLunar;->mCurrentYear:I

    .line 219
    .local v3, newYear:I
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    iget v2, v4, Lcom/android/calendar/DatePickerWithLunar;->mCurrentMonth:I

    .line 220
    .local v2, newMonth:I
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    iget v1, v4, Lcom/android/calendar/DatePickerWithLunar;->mCurrentDay:I

    .line 223
    .local v1, newDay:I
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v4}, Lcom/android/calendar/DatePickerWithLunar;->access$000(Lcom/android/calendar/DatePickerWithLunar;)Landroid/widget/NumberPicker;

    move-result-object v4

    if-ne p1, v4, :cond_62

    .line 224
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    iget-object v5, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mSetLunar:Z
    invoke-static {v5}, Lcom/android/calendar/DatePickerWithLunar;->access$100(Lcom/android/calendar/DatePickerWithLunar;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mIsLeapMonth:Z
    invoke-static {v6}, Lcom/android/calendar/DatePickerWithLunar;->access$200(Lcom/android/calendar/DatePickerWithLunar;)Z

    move-result v6

    #calls: Lcom/android/calendar/DatePickerWithLunar;->getMaxMonthDay(IIZZ)I
    invoke-static {v4, v3, v2, v5, v6}, Lcom/android/calendar/DatePickerWithLunar;->access$300(Lcom/android/calendar/DatePickerWithLunar;IIZZ)I

    move-result v0

    .line 225
    .local v0, maxDayOfMonth:I
    if-ne p2, v0, :cond_58

    if-ne p3, v7, :cond_58

    .line 226
    move v1, p3

    .line 251
    .end local v0           #maxDayOfMonth:I
    :goto_2e
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    iget-object v5, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mSetLunar:Z
    invoke-static {v5}, Lcom/android/calendar/DatePickerWithLunar;->access$100(Lcom/android/calendar/DatePickerWithLunar;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mIsLeapMonth:Z
    invoke-static {v6}, Lcom/android/calendar/DatePickerWithLunar;->access$200(Lcom/android/calendar/DatePickerWithLunar;)Z

    move-result v6

    #calls: Lcom/android/calendar/DatePickerWithLunar;->getMaxMonthDay(IIZZ)I
    invoke-static {v4, v3, v2, v5, v6}, Lcom/android/calendar/DatePickerWithLunar;->access$300(Lcom/android/calendar/DatePickerWithLunar;IIZZ)I

    move-result v0

    .line 252
    .restart local v0       #maxDayOfMonth:I
    if-le v1, v0, :cond_43

    .line 253
    move v1, v0

    .line 256
    :cond_43
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #calls: Lcom/android/calendar/DatePickerWithLunar;->setDate(III)V
    invoke-static {v4, v3, v2, v1}, Lcom/android/calendar/DatePickerWithLunar;->access$700(Lcom/android/calendar/DatePickerWithLunar;III)V

    .line 257
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #calls: Lcom/android/calendar/DatePickerWithLunar;->updateSpinners()V
    invoke-static {v4}, Lcom/android/calendar/DatePickerWithLunar;->access$800(Lcom/android/calendar/DatePickerWithLunar;)V

    .line 258
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #calls: Lcom/android/calendar/DatePickerWithLunar;->updateCalendarView()V
    invoke-static {v4}, Lcom/android/calendar/DatePickerWithLunar;->access$900(Lcom/android/calendar/DatePickerWithLunar;)V

    .line 259
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #calls: Lcom/android/calendar/DatePickerWithLunar;->notifyDateChanged()V
    invoke-static {v4}, Lcom/android/calendar/DatePickerWithLunar;->access$1000(Lcom/android/calendar/DatePickerWithLunar;)V

    .line 260
    return-void

    .line 227
    :cond_58
    if-ne p2, v7, :cond_5e

    if-ne p3, v0, :cond_5e

    .line 228
    move v1, p3

    goto :goto_2e

    .line 230
    :cond_5e
    sub-int v4, p3, p2

    add-int/2addr v1, v4

    goto :goto_2e

    .line 232
    .end local v0           #maxDayOfMonth:I
    :cond_62
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v4}, Lcom/android/calendar/DatePickerWithLunar;->access$400(Lcom/android/calendar/DatePickerWithLunar;)Landroid/widget/NumberPicker;

    move-result-object v4

    if-ne p1, v4, :cond_86

    .line 233
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->isNumMonth:Z
    invoke-static {v4}, Lcom/android/calendar/DatePickerWithLunar;->access$500(Lcom/android/calendar/DatePickerWithLunar;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 234
    add-int/lit8 p2, p2, -0x1

    .line 235
    add-int/lit8 p3, p3, -0x1

    .line 237
    :cond_76
    if-ne p2, v5, :cond_7c

    if-nez p3, :cond_7c

    .line 238
    move v2, p3

    goto :goto_2e

    .line 239
    :cond_7c
    if-nez p2, :cond_82

    if-ne p3, v5, :cond_82

    .line 240
    move v2, p3

    goto :goto_2e

    .line 242
    :cond_82
    sub-int v4, p3, p2

    add-int/2addr v2, v4

    goto :goto_2e

    .line 244
    :cond_86
    iget-object v4, p0, Lcom/android/calendar/DatePickerWithLunar$1;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #getter for: Lcom/android/calendar/DatePickerWithLunar;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v4}, Lcom/android/calendar/DatePickerWithLunar;->access$600(Lcom/android/calendar/DatePickerWithLunar;)Landroid/widget/NumberPicker;

    move-result-object v4

    if-ne p1, v4, :cond_90

    .line 245
    move v3, p3

    goto :goto_2e

    .line 247
    :cond_90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method
