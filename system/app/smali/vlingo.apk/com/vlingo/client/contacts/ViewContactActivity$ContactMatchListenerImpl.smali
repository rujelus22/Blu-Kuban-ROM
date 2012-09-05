.class Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Lcom/vlingo/client/core/contacts/ContactsMatcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactMatchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/ViewContactActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ViewContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoAction(Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 2
    .parameter "contact"

    .prologue
    .line 157
    return-void
.end method

.method public onContactMatchResultsUpdate()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method public onContactMatchingFinished()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;->this$0:Lcom/vlingo/client/contacts/ViewContactActivity;

    new-instance v1, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl$1;-><init>(Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/contacts/ViewContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
