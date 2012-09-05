.class Lcom/sec/android/socialhub/messagelist/MessageListView$1;
.super Landroid/database/ContentObserver;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListView;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$1;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 216
    const-string v0, "MessageListView"

    const-string v1, "onChange()"

    const-string v2, "fast requery uri is invoked"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListView$1;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListView;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/socialhub/messagelist/MessageListView;->startQuery(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListView;->access$000(Lcom/sec/android/socialhub/messagelist/MessageListView;Z)V

    .line 218
    return-void
.end method
