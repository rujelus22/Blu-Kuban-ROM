.class Lcom/estrongs/android/pop/view/mc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SupportActivity;

.field private final synthetic b:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SupportActivity;Landroid/widget/LinearLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/mc;->a:Lcom/estrongs/android/pop/view/SupportActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/mc;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/pop/view/mc;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_7

    :pswitch_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/mc;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_12
    .end packed-switch
.end method
