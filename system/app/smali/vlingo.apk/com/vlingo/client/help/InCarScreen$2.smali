.class Lcom/vlingo/client/help/InCarScreen$2;
.super Ljava/lang/Object;
.source "InCarScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/help/InCarScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/help/InCarScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/help/InCarScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vlingo/client/help/InCarScreen$2;->this$0:Lcom/vlingo/client/help/InCarScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vlingo/client/help/InCarScreen$2;->this$0:Lcom/vlingo/client/help/InCarScreen;

    #getter for: Lcom/vlingo/client/help/InCarScreen;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;
    invoke-static {v0}, Lcom/vlingo/client/help/InCarScreen;->access$000(Lcom/vlingo/client/help/InCarScreen;)Lcom/vlingo/client/scroller/ScrollableContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollRight()V

    .line 80
    return-void
.end method
