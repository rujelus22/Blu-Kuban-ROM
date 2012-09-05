.class Lcom/sec/android/app/music/AudioPreview$19;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 3267
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$19;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    .line 3275
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 3276
    packed-switch p2, :pswitch_data_3a

    .line 3300
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0

    .line 3278
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$19;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto :goto_d

    .line 3282
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$19;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto :goto_d

    .line 3287
    :cond_1f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 3288
    packed-switch p2, :pswitch_data_42

    goto :goto_d

    .line 3290
    :pswitch_2a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$19;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto :goto_d

    .line 3294
    :pswitch_32
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$19;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto :goto_d

    .line 3276
    :pswitch_data_3a
    .packed-switch 0x15
        :pswitch_f
        :pswitch_17
    .end packed-switch

    .line 3288
    :pswitch_data_42
    .packed-switch 0x15
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method
