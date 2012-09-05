.class Lcom/android/calendar/TwSelectCalendarsActivity$2;
.super Ljava/lang/Object;
.source "TwSelectCalendarsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$2;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 141
    .local v0, action:I
    packed-switch v0, :pswitch_data_16

    move v1, v2

    .line 152
    :goto_a
    return v1

    .line 143
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_a

    .line 146
    :pswitch_f
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_a

    .line 141
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
