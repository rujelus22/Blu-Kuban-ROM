.class Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$2;
.super Ljava/lang/Object;
.source "MessageDeleteViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mState:Lcom/sec/android/socialhub/state/tab/TabState;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->access$000(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onBackPressed()V

    .line 138
    return-void
.end method
