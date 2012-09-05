.class Lcom/android/calendar/DayEventListActivity$6;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayEventListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$6;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 261
    .local v0, action:I
    packed-switch v0, :pswitch_data_42

    move v1, v2

    .line 274
    :goto_a
    return v1

    .line 263
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 264
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity$6;->this$0:Lcom/android/calendar/DayEventListActivity;

    #getter for: Lcom/android/calendar/DayEventListActivity;->mSwitchContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/calendar/DayEventListActivity;->access$000(Lcom/android/calendar/DayEventListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity$6;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v3}, Lcom/android/calendar/DayEventListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 267
    :pswitch_25
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 268
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity$6;->this$0:Lcom/android/calendar/DayEventListActivity;

    #getter for: Lcom/android/calendar/DayEventListActivity;->mSwitchContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/calendar/DayEventListActivity;->access$000(Lcom/android/calendar/DayEventListActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity$6;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v3}, Lcom/android/calendar/DayEventListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_a

    .line 261
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_b
        :pswitch_25
    .end packed-switch
.end method
