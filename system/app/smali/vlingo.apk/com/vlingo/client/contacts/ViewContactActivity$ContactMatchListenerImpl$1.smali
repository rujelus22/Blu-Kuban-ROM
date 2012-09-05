.class Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl$1;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;->onContactMatchingFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl$1;->this$1:Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl$1;->this$1:Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/ViewContactActivity;->handleResults()V

    .line 152
    return-void
.end method
