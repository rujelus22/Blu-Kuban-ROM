.class Lcom/android/email/activity/MessageOrderManager$PostingCallback$1;
.super Ljava/lang/Object;
.source "MessageOrderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageOrderManager$PostingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageOrderManager$PostingCallback;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageOrderManager$PostingCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback$1;->this$1:Lcom/android/email/activity/MessageOrderManager$PostingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback$1;->this$1:Lcom/android/email/activity/MessageOrderManager$PostingCallback;

    #getter for: Lcom/android/email/activity/MessageOrderManager$PostingCallback;->mOriginal:Lcom/android/email/activity/MessageOrderManager$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->access$000(Lcom/android/email/activity/MessageOrderManager$PostingCallback;)Lcom/android/email/activity/MessageOrderManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    .line 106
    return-void
.end method
