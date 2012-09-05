.class Lcom/vlingo/client/car/nav/NavMainScreen$Item;
.super Ljava/lang/Object;
.source "NavMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/nav/NavMainScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

.field private type:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/nav/NavMainScreen;Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;)V
    .registers 3
    .parameter
    .parameter "type"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->type:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/nav/NavMainScreen;Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;Lcom/vlingo/client/car/nav/NavMainScreen$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;-><init>(Lcom/vlingo/client/car/nav/NavMainScreen;Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/nav/NavMainScreen$Item;)Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->type:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    return-object v0
.end method


# virtual methods
.method public getIconResourceID()I
    .registers 3

    .prologue
    .line 133
    sget-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$1;->$SwitchMap$com$vlingo$client$car$nav$NavMainScreen$ItemType:[I

    iget-object v1, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->type:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    invoke-virtual {v1}, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 141
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 135
    :pswitch_f
    const v0, 0x7f020055

    goto :goto_e

    .line 137
    :pswitch_13
    const v0, 0x7f020056

    goto :goto_e

    .line 139
    :pswitch_17
    const v0, 0x7f020057

    goto :goto_e

    .line 133
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    sget-object v0, Lcom/vlingo/client/car/nav/NavMainScreen$1;->$SwitchMap$com$vlingo$client$car$nav$NavMainScreen$ItemType:[I

    iget-object v1, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->type:Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;

    invoke-virtual {v1}, Lcom/vlingo/client/car/nav/NavMainScreen$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    .line 124
    :pswitch_12
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/nav/NavMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 126
    :pswitch_24
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/nav/NavMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 128
    :pswitch_36
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/car/nav/NavMainScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 122
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_12
        :pswitch_24
        :pswitch_36
    .end packed-switch
.end method
