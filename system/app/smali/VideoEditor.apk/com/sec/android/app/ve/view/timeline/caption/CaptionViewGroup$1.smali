.class Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$1;
.super Landroid/os/Handler;
.source "CaptionViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 56
    :goto_5
    return-void

    .line 49
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    goto :goto_5

    .line 46
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
