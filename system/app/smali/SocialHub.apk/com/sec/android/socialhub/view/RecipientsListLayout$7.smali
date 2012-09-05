.class Lcom/sec/android/socialhub/view/RecipientsListLayout$7;
.super Landroid/os/Handler;
.source "RecipientsListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/RecipientsListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$7;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout$7;->this$0:Lcom/sec/android/socialhub/view/RecipientsListLayout;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/sec/android/socialhub/view/RecipientsListLayout;->removeButton(I)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->access$400(Lcom/sec/android/socialhub/view/RecipientsListLayout;I)V

    .line 451
    return-void
.end method
