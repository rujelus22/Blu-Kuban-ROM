.class public Lcom/vlingo/client/car/nav/NavMainScreen;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "NavMainScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/nav/NavMainScreen$1;,
        Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;,
        Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;,
        Lcom/vlingo/client/car/nav/NavMainScreen$Item;,
        Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;
    }
.end annotation


# instance fields
.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/nav/NavMainScreen;)Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen;->listener:Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;

    return-object v0
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public getHintDelay()I
    .registers 2

    .prologue
    .line 72
    const/16 v0, 0x1d4c

    return v0
.end method

.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vlingo/client/car/Hints;->getRandomHintForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_nav"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/car/nav/NavMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NAV_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public initialize(Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavMainScreen;->listener:Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;

    .line 49
    return-void
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 89
    const v2, 0x7f0f0036

    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/nav/NavMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/vlingo/client/car/nav/NavMainScreen;->listView:Landroid/widget/ListView;

    .line 91
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 92
    .local v1, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/car/nav/NavMainScreen$Item;>;"
    new-instance v2, Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    sget-object v3, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_GO_HOME:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    invoke-direct {v2, p0, v3, v4}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;-><init>(Lcom/vlingo/client/car/nav/NavMainScreen;Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;Lcom/vlingo/client/car/nav/NavMainScreen$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v2, Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    sget-object v3, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_OPEN_MAPS:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    invoke-direct {v2, p0, v3, v4}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;-><init>(Lcom/vlingo/client/car/nav/NavMainScreen;Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;Lcom/vlingo/client/car/nav/NavMainScreen$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    sget-object v3, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ITEM_OPEN_NAV:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    invoke-direct {v2, p0, v3, v4}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;-><init>(Lcom/vlingo/client/car/nav/NavMainScreen;Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;Lcom/vlingo/client/car/nav/NavMainScreen$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;

    invoke-virtual {p0}, Lcom/vlingo/client/car/nav/NavMainScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;-><init>(Lcom/vlingo/client/car/nav/NavMainScreen;Landroid/content/Context;Ljava/util/Vector;)V

    .line 96
    .local v0, adaptor:Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;
    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavMainScreen;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavMainScreen;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    invoke-virtual {v0}, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public removeOnTaskStart()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
