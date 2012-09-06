.class Lcom/android/calendar/DeleteEventHelper$3;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #calls: Lcom/android/calendar/DeleteEventHelper;->deleteStarted()V
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$300(Lcom/android/calendar/DeleteEventHelper;)V

    .line 156
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #calls: Lcom/android/calendar/DeleteEventHelper;->deleteExceptionEvent()V
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$900(Lcom/android/calendar/DeleteEventHelper;)V

    .line 157
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$600(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 158
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$600(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_1b
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mExitWhenDone:Z
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$700(Lcom/android/calendar/DeleteEventHelper;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 161
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$3;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$800(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 163
    :cond_2c
    return-void
.end method
