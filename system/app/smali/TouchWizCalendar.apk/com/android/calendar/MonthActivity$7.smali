.class Lcom/android/calendar/MonthActivity$7;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1154
    .local v0, action:I
    packed-switch v0, :pswitch_data_46

    move v1, v2

    .line 1168
    :goto_a
    return v1

    .line 1156
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1157
    iget-object v2, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mSwitchContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/calendar/MonthActivity;->access$600(Lcom/android/calendar/MonthActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 1160
    :pswitch_25
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1161
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 1162
    iget-object v2, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mSwitchContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/calendar/MonthActivity;->access$600(Lcom/android/calendar/MonthActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_a

    .line 1154
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_b
        :pswitch_25
    .end packed-switch
.end method
