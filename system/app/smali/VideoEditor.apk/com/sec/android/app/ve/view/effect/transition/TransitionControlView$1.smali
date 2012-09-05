.class Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;
.super Ljava/lang/Object;
.source "TransitionControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_58

    .line 299
    :cond_7
    :goto_7
    return-void

    .line 72
    :sswitch_8
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToTrim()V

    goto :goto_7

    .line 237
    :sswitch_10
    const/4 v0, 0x0

    .line 239
    .local v0, aSelectedPos:I
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mTransitionTime:I
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$0(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I

    move-result v1

    packed-switch v1, :pswitch_data_62

    .line 254
    :goto_1a
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    const v3, 0x7f080094

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 256
    const v3, 0x7f060001

    new-instance v4, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1$1;-><init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 254
    #setter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$5(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;Landroid/app/AlertDialog;)V

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$6(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$1;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->lCamCamcorder:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$6(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_7

    .line 241
    :pswitch_51
    const/4 v0, 0x0

    .line 242
    goto :goto_1a

    .line 244
    :pswitch_53
    const/4 v0, 0x1

    .line 245
    goto :goto_1a

    .line 247
    :pswitch_55
    const/4 v0, 0x2

    .line 248
    goto :goto_1a

    .line 69
    nop

    :sswitch_data_58
    .sparse-switch
        0x7f0b0111 -> :sswitch_8
        0x7f0b0115 -> :sswitch_10
    .end sparse-switch

    .line 239
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_51
        :pswitch_53
        :pswitch_55
    .end packed-switch
.end method
