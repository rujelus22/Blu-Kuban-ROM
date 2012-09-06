.class public interface abstract Lcom/google/android/apps/googlevoice/activity/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# virtual methods
.method public abstract obtainMessage(I)Landroid/os/Message;
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract postAtTime(Ljava/lang/Runnable;J)Z
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)Z
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method public abstract removeMessages(I)V
.end method

.method public abstract sendEmptyMessage(I)Z
.end method

.method public abstract sendEmptyMessageDelayed(IJ)Z
.end method

.method public abstract sendMessage(Landroid/os/Message;)Z
.end method

.method public abstract sendMessageDelayed(Landroid/os/Message;J)Z
.end method

.method public abstract sendToTarget(Landroid/os/Message;)V
.end method
