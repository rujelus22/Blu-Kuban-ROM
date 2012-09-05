.class Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;
.super Ljava/lang/Object;
.source "NavMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 167
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;->this$1:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

    iput-object p2, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;->val$item:Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 169
    sget-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$1;->$SwitchMap$com$vlingo$client$car$nav$NavMainScreen$ItemType:[I

    iget-object v1, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;->val$item:Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    #getter for: Lcom/vlingo/client/car/nav/NavMainScreen$Item;->type:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;
    invoke-static {v1}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->access$100(Lcom/vlingo/client/car/nav/NavMainScreen$Item;)Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 180
    :goto_11
    return-void

    .line 171
    :pswitch_12
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;->this$1:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

    iget-object v0, v0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    #getter for: Lcom/vlingo/client/car/nav/NavMainScreen;->listener:Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/nav/NavMainScreen;->access$200(Lcom/vlingo/client/car/nav/NavMainScreen;)Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;->onGoHome()V

    goto :goto_11

    .line 174
    :pswitch_1e
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;->this$1:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

    iget-object v0, v0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    #getter for: Lcom/vlingo/client/car/nav/NavMainScreen;->listener:Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/nav/NavMainScreen;->access$200(Lcom/vlingo/client/car/nav/NavMainScreen;)Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;->onShowMaps()V

    goto :goto_11

    .line 177
    :pswitch_2a
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;->this$1:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

    iget-object v0, v0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    #getter for: Lcom/vlingo/client/car/nav/NavMainScreen;->listener:Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;
    invoke-static {v0}, Lcom/vlingo/client/car/nav/NavMainScreen;->access$200(Lcom/vlingo/client/car/nav/NavMainScreen;)Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;->onShowNav()V

    goto :goto_11

    .line 169
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1e
        :pswitch_2a
    .end packed-switch
.end method
