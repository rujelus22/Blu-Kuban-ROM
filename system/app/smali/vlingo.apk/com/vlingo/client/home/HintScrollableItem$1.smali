.class Lcom/vlingo/client/home/HintScrollableItem$1;
.super Ljava/lang/Object;
.source "HintScrollableItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/HintScrollableItem;->init(Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;Lcom/vlingo/client/home/Hint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/HintScrollableItem;

.field final synthetic val$listener:Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/HintScrollableItem;Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vlingo/client/home/HintScrollableItem$1;->this$0:Lcom/vlingo/client/home/HintScrollableItem;

    iput-object p2, p0, Lcom/vlingo/client/home/HintScrollableItem$1;->val$listener:Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vlingo/client/home/HintScrollableItem$1;->val$listener:Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;

    invoke-interface {v0}, Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;->onLeftArrowClicked()V

    .line 40
    return-void
.end method
