.class Lcom/android/email/activity/MoveMessageToDialog$1;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$1;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$1;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 188
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$1;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/MoveMessageToDialog;->dismissAllowingStateLoss()V

    .line 190
    :cond_d
    return-void
.end method
