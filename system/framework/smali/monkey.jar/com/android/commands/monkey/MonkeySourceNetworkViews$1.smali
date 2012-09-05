.class final Lcom/android/commands/monkey/MonkeySourceNetworkViews$1;
.super Landroid/accessibilityservice/IEventListener$Stub;
.source "MonkeySourceNetworkViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getConnection()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/accessibilityservice/IEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 125
    const-string v0, "MonkeyViews"

    const-string v1, "Accessibility Event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 127
    const-class v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v1

    .line 128
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public onInterrupt()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V
    .registers 5
    .parameter "connection"
    .parameter "connectionId"

    .prologue
    .line 110
    sput p2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    .line 111
    if-eqz p1, :cond_13

    .line 112
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 117
    :goto_b
    const-class v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v1

    .line 118
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1b

    .line 120
    return-void

    .line 115
    :cond_13
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    goto :goto_b

    .line 119
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method
