.class Lcom/vlingo/client/contacts/ContactSelectActivity$3;
.super Ljava/lang/Object;
.source "ContactSelectActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/contacts/ContactSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$3;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 163
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 164
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$3;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    #getter for: Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->access$000(Lcom/vlingo/client/contacts/ContactSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$3;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    #getter for: Lcom/vlingo/client/contacts/ContactSelectActivity;->m_eventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/contacts/ContactSelectActivity;->access$000(Lcom/vlingo/client/contacts/ContactSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    return-void
.end method
