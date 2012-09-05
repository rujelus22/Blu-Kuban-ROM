.class Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$1;
.super Landroid/os/Handler;
.source "DurationViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 52
    :goto_5
    return-void

    .line 45
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->update()V

    goto :goto_5

    .line 42
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
