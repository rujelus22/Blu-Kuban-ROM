.class public Lcom/sec/android/socialhub/clipboard/MessageCommentClipboard;
.super Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
.source "MessageCommentClipboard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getContent(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .parameter "object"

    .prologue
    const/16 v3, 0xa

    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, holder:Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .local v1, str_buff:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_14

    instance-of v2, p1, Lcom/sec/android/socialhub/clipboard/IMessageClipBoard;

    if-eqz v2, :cond_14

    .line 22
    check-cast p1, Lcom/sec/android/socialhub/clipboard/IMessageClipBoard;

    .end local p1
    invoke-interface {p1}, Lcom/sec/android/socialhub/clipboard/IMessageClipBoard;->getObject()Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;

    move-result-object v0

    .line 25
    :cond_14
    if-eqz v0, :cond_31

    .line 27
    invoke-interface {v0}, Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    invoke-interface {v0}, Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    invoke-interface {v0}, Lcom/sec/android/socialhub/clipboard/IMessageClipBoardObject;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
