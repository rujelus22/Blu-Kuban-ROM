.class Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;
.super Ljava/lang/Object;
.source "WidgetServiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->doNotDisturbChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

.field final synthetic val$thisNotificationId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    iput p2, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;->val$thisNotificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    #getter for: Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->notificationId:I
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->access$000(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;->val$thisNotificationId:I

    if-ne v0, v1, :cond_1b

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    #getter for: Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->access$100(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Lcom/google/android/apps/googlevoice/widget/WidgetState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->setNotificationMessage(Ljava/lang/Integer;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$2;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->sendEmptyMessage(I)Z

    .line 222
    :cond_1b
    return-void
.end method
