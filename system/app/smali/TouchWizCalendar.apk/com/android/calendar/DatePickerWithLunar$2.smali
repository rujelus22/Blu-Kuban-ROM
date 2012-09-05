.class Lcom/android/calendar/DatePickerWithLunar$2;
.super Ljava/lang/Object;
.source "DatePickerWithLunar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 318
    iput-object p1, p0, Lcom/android/calendar/DatePickerWithLunar$2;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 325
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 322
    :pswitch_9
    iget-object v0, p0, Lcom/android/calendar/DatePickerWithLunar$2;->this$0:Lcom/android/calendar/DatePickerWithLunar;

    #calls: Lcom/android/calendar/DatePickerWithLunar;->updateInputState()V
    invoke-static {v0}, Lcom/android/calendar/DatePickerWithLunar;->access$1100(Lcom/android/calendar/DatePickerWithLunar;)V

    goto :goto_7

    .line 320
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
