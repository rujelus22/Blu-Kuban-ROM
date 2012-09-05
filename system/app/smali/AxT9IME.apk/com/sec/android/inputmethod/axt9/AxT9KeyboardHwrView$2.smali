.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;
.super Ljava/lang/Object;
.source "AxT9KeyboardHwrView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onPostHwrTimeOut()V

    .line 104
    return-void
.end method
