.class Lcom/android/contacts/datepicker/DatePicker$3;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 5
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$300(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    add-int/lit8 p2, p2, -0x1

    .line 211
    add-int/lit8 p3, p3, -0x1

    .line 216
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iput p3, v0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 218
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #calls: Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$400(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 219
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #calls: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$000(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 220
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 222
    return-void
.end method
