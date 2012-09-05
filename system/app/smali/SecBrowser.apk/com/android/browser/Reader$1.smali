.class Lcom/android/browser/Reader$1;
.super Ljava/util/TimerTask;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Reader;->runDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Reader;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/browser/Reader;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/browser/Reader$1;->this$0:Lcom/android/browser/Reader;

    iput-object p2, p0, Lcom/android/browser/Reader$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/browser/Reader$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/Reader$1$1;

    invoke-direct {v1, p0}, Lcom/android/browser/Reader$1$1;-><init>(Lcom/android/browser/Reader$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
