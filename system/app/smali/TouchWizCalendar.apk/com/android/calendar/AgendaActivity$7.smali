.class Lcom/android/calendar/AgendaActivity$7;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setupTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$7;->this$0:Lcom/android/calendar/AgendaActivity;

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

    .line 873
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 874
    .local v0, action:I
    packed-switch v0, :pswitch_data_46

    move v1, v2

    .line 888
    :goto_a
    return v1

    .line 876
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 877
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity$7;->this$0:Lcom/android/calendar/AgendaActivity;

    #getter for: Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/calendar/AgendaActivity;->access$500(Lcom/android/calendar/AgendaActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$7;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 880
    :pswitch_25
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 881
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 882
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity$7;->this$0:Lcom/android/calendar/AgendaActivity;

    #getter for: Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/calendar/AgendaActivity;->access$500(Lcom/android/calendar/AgendaActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$7;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_a

    .line 874
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_b
        :pswitch_25
    .end packed-switch
.end method
