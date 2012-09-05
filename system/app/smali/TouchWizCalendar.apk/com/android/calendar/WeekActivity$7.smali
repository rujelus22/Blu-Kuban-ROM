.class Lcom/android/calendar/WeekActivity$7;
.super Ljava/lang/Object;
.source "WeekActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/WeekActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/WeekActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/WeekActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/calendar/WeekActivity$7;->this$0:Lcom/android/calendar/WeekActivity;

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

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 183
    .local v0, action:I
    packed-switch v0, :pswitch_data_42

    move v1, v2

    .line 197
    :goto_a
    return v1

    .line 185
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 186
    iget-object v2, p0, Lcom/android/calendar/WeekActivity$7;->this$0:Lcom/android/calendar/WeekActivity;

    iget-object v2, v2, Lcom/android/calendar/CalendarActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/calendar/WeekActivity$7;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v3}, Lcom/android/calendar/WeekActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 189
    :pswitch_23
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 190
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 191
    iget-object v2, p0, Lcom/android/calendar/WeekActivity$7;->this$0:Lcom/android/calendar/WeekActivity;

    iget-object v2, v2, Lcom/android/calendar/CalendarActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/calendar/WeekActivity$7;->this$0:Lcom/android/calendar/WeekActivity;

    invoke-virtual {v3}, Lcom/android/calendar/WeekActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_a

    .line 183
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_b
        :pswitch_23
    .end packed-switch
.end method
