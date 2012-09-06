.class Lcom/google/googlenav/ui/view/dialog/cP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cO;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cP;->a:Lcom/google/googlenav/ui/view/dialog/cO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 130
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 122
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
