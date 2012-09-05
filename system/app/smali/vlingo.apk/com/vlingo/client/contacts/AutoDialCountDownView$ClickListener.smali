.class public Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;
.super Ljava/lang/Object;
.source "AutoDialCountDownView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/contacts/AutoDialCountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClickListener"
.end annotation


# instance fields
.field _listener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/vlingo/client/contacts/AutoDialCountDownView;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/AutoDialCountDownView;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;->this$0:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;->_listener:Landroid/view/View$OnClickListener;

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;->this$0:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->cancel()V

    .line 126
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;->_listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;->this$0:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView$ClickListener;->onClick(Landroid/view/View;)V

    .line 130
    return-void
.end method
