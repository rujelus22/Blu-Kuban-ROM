.class Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$3;
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
    .line 257
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$3;->this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$3;->this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->notifyDataSetChanged()V

    .line 260
    return-void
.end method
