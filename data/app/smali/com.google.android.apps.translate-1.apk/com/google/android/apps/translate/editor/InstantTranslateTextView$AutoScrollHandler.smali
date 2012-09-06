.class Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;
.super Landroid/os/Handler;
.source "InstantTranslateTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollHandler"
.end annotation


# static fields
.field private static final MSG_START_SCROLL:I


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 51
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3e

    .line 62
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :pswitch_26
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .local v1, toPositionX:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 55
    .local v0, pxPerScroll:I
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->scrollToByUpToGivenDistance(II)Z
    invoke-static {v2, v1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$100(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;II)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    .end local v0           #pxPerScroll:I
    .end local v1           #toPositionX:I
    :cond_3c
    return-void

    .line 51
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method public startScroll(IFI)V
    .registers 9
    .parameter "toPositionX"
    .parameter "pxPerMillis"
    .parameter "delayMillis"

    .prologue
    const/4 v4, 0x0

    .line 76
    const-string v1, "InstantTranslateTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScroll toPositionX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pxPerMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->removeMessages(I)V

    .line 79
    const/high16 v1, 0x4120

    mul-float/2addr v1, p2

    float-to-int v0, v1

    .line 80
    .local v0, pxPerScroll:I
    invoke-virtual {p0, v4, p1, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->removeMessages(I)V

    .line 85
    return-void
.end method
