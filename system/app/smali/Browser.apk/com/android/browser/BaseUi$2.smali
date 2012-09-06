.class Lcom/android/browser/BaseUi$2;
.super Landroid/os/Handler;
.source "BaseUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BaseUi;


# direct methods
.method constructor <init>(Lcom/android/browser/BaseUi;)V
    .registers 2
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/browser/BaseUi$2;->this$0:Lcom/android/browser/BaseUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 822
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 823
    iget-object v0, p0, Lcom/android/browser/BaseUi$2;->this$0:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->suggestHideTitleBar()V

    .line 825
    :cond_a
    iget-object v0, p0, Lcom/android/browser/BaseUi$2;->this$0:Lcom/android/browser/BaseUi;

    invoke-virtual {v0, p1}, Lcom/android/browser/BaseUi;->handleMessage(Landroid/os/Message;)V

    .line 826
    return-void
.end method
