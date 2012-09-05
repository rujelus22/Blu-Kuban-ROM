.class public Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;
.super Lcom/infraware/office/util/EvMessageTimerTask;
.source "EvCaretTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/CaretTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawCaretTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/CaretTask;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/gestureproc/CaretTask;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    invoke-direct {p0}, Lcom/infraware/office/util/EvMessageTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 129
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v7

    .line 131
    .local v7, caretInfo:Lcom/infraware/office/evengine/EV$CARET_INFO;
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    if-eqz v1, :cond_2b

    iget v1, v7, Lcom/infraware/office/evengine/EV$CARET_INFO;->bCaret:I

    if-ne v1, v0, :cond_2b

    .line 132
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-boolean v3, v3, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbCursor:Z

    if-eqz v3, :cond_1d

    move v0, v2

    :cond_1d
    iput-boolean v0, v1, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbCursor:Z

    .line 133
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x2

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 135
    :cond_2b
    return-void
.end method
