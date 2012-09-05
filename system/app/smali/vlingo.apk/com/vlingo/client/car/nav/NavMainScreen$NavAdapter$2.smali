.class Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$2;
.super Ljava/lang/Object;
.source "NavMainScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

.field final synthetic val$item:Lcom/vlingo/client/car/nav/NavMainScreen$Item;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;Lcom/vlingo/client/car/nav/NavMainScreen$Item;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$2;->this$1:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

    iput-object p2, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$2;->val$item:Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$2;->val$item:Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    #getter for: Lcom/vlingo/client/car/nav/NavMainScreen$Item;->type:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;
    invoke-static {v0}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->access$100(Lcom/vlingo/client/car/nav/NavMainScreen$Item;)Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_GO_HOME:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    if-ne v0, v1, :cond_17

    .line 185
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$2;->this$1:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

    iget-object v0, v0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    #getter for: Lcom/vlingo/client/car/nav/NavMainScreen;->listener:Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/nav/NavMainScreen;->access$200(Lcom/vlingo/client/car/nav/NavMainScreen;)Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;->onEditHomeAddress()V

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
