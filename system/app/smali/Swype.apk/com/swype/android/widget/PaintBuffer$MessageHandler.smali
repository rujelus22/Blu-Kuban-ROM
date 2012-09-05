.class Lcom/swype/android/widget/PaintBuffer$MessageHandler;
.super Landroid/os/Handler;
.source "PaintBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/PaintBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field final EMPTY_RECT:Landroid/graphics/Rect;

.field private final weakParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/swype/android/widget/PaintBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swype/android/widget/PaintBuffer;)V
    .registers 3
    .parameter "paintBuffer"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer$MessageHandler;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer$MessageHandler;->weakParent:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 60
    :cond_5
    :goto_5
    return-void

    .line 47
    :pswitch_6
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer$MessageHandler;->weakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintBuffer;

    .line 48
    iget-object v1, p0, Lcom/swype/android/widget/PaintBuffer$MessageHandler;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 49
    if-eqz v0, :cond_5

    .line 50
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_25

    .line 51
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/swype/android/widget/PaintBuffer$Frame;

    .line 52
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/swype/android/widget/PaintBuffer$Frame;

    #calls: Lcom/swype/android/widget/PaintBuffer;->queueFrame(Lcom/swype/android/widget/PaintBuffer$Frame;)V
    invoke-static {v0, v1}, Lcom/swype/android/widget/PaintBuffer;->access$000(Lcom/swype/android/widget/PaintBuffer;Lcom/swype/android/widget/PaintBuffer$Frame;)V

    .line 53
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintBuffer$Frame;->getDirtyRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 55
    :cond_25
    #calls: Lcom/swype/android/widget/PaintBuffer;->notifyPaintBufferUpdated(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/swype/android/widget/PaintBuffer;->access$100(Lcom/swype/android/widget/PaintBuffer;Landroid/graphics/Rect;)V

    goto :goto_5

    .line 43
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
