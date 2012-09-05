.class Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$4;
.super Ljava/lang/Object;
.source "MessageDeleteViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setListItemCount()V
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
    .line 334
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$4;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$4;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->updateAllCheckState()V

    .line 340
    return-void
.end method
