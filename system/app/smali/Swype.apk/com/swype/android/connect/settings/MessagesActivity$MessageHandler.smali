.class Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;
.super Landroid/os/Handler;
.source "MessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/settings/MessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/swype/android/connect/settings/MessagesActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/settings/MessagesActivity;)V
    .registers 3
    .parameter "ref"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;->activity:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/swype/android/connect/settings/MessagesActivity;

    invoke-virtual {p0, p1}, Lcom/swype/android/connect/settings/MessagesActivity;->handleMessage(Landroid/os/Message;)V

    .line 62
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-gtz v0, :cond_f

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;->removeMessages(I)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 57
    :cond_f
    return-void
.end method
