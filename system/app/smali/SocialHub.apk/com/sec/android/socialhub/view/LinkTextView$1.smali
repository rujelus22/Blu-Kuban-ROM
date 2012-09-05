.class Lcom/sec/android/socialhub/view/LinkTextView$1;
.super Ljava/lang/Object;
.source "LinkTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/LinkTextView;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/LinkTextView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/LinkTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/socialhub/view/LinkTextView$1;->this$0:Lcom/sec/android/socialhub/view/LinkTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/socialhub/view/LinkTextView$1;->this$0:Lcom/sec/android/socialhub/view/LinkTextView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/view/LinkTextView;->access$002(Lcom/sec/android/socialhub/view/LinkTextView;Z)Z

    .line 157
    return-void
.end method
