.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$2;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 362
    :goto_7
    return-void

    .line 352
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->swipeLeft()V

    goto :goto_7

    .line 355
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$2;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->swipeRight()V

    goto :goto_7

    .line 349
    :pswitch_data_14
    .packed-switch 0x7f0b001b
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method
