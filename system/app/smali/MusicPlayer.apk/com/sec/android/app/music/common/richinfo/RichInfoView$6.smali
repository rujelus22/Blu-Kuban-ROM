.class Lcom/sec/android/app/music/common/richinfo/RichInfoView$6;
.super Ljava/lang/Object;
.source "RichInfoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoView;->createMediaInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V
    .registers 2
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$6;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$6;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    const v2, 0x7f09006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 647
    .local v0, text:Landroid/widget/TextView;
    if-nez v0, :cond_13

    .line 661
    :goto_12
    return v3

    .line 650
    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    :pswitch_1a
    goto :goto_12

    .line 652
    :pswitch_1b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_12

    .line 656
    :pswitch_1f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_12

    .line 650
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1f
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method
