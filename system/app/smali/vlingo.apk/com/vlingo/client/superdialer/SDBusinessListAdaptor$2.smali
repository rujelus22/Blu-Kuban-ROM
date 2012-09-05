.class Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$2;
.super Ljava/lang/Object;
.source "SDBusinessListAdaptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->onRequestComplete(ZLjava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;


# direct methods
.method constructor <init>(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$2;->this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$2;->this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    #getter for: Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->access$100(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$2;->this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    #getter for: Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->access$100(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090413

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    return-void
.end method
