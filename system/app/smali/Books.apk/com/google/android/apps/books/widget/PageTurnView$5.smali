.class Lcom/google/android/apps/books/widget/PageTurnView$5;
.super Landroid/os/Handler;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$5;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$5;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->maybeUnPauseTTS()V
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5700(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 2311
    return-void
.end method
