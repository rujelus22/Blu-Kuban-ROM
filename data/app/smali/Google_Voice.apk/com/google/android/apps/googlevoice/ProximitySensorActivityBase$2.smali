.class Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$2;
.super Ljava/lang/Object;
.source "ProximitySensorActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->injectEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;Landroid/view/MotionEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$2;->this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$2;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$2;->this$0:Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$2;->val$event:Landroid/view/MotionEvent;

    #calls: Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->access$101(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;Landroid/view/MotionEvent;)Z

    .line 106
    return-void
.end method
