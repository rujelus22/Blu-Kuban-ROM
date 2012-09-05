.class public Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavMainScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/nav/NavMainScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavAdapter"
.end annotation


# instance fields
.field private final items:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/car/nav/NavMainScreen$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vlingo/client/car/nav/NavMainScreen;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/nav/NavMainScreen;Landroid/content/Context;Ljava/util/Vector;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/car/nav/NavMainScreen$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p3, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/car/nav/NavMainScreen$Item;>;"
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 157
    iput-object p3, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->items:Ljava/util/Vector;

    .line 158
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 200
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 161
    iget-object v4, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->items:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/nav/NavMainScreen$Item;

    .line 162
    .local v1, item:Lcom/vlingo/client/car/nav/NavMainScreen$Item;
    iget-object v4, p0, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;->this$0:Lcom/vlingo/client/car/nav/NavMainScreen;

    invoke-virtual {v4}, Lcom/vlingo/client/car/nav/NavMainScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, title:Landroid/widget/TextView;
    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 165
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v1}, Lcom/vlingo/client/car/nav/NavMainScreen$Item;->getIconResourceID()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    new-instance v4, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$1;-><init>(Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;Lcom/vlingo/client/car/nav/NavMainScreen$Item;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v4, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter$2;-><init>(Lcom/vlingo/client/car/nav/NavMainScreen$NavAdapter;Lcom/vlingo/client/car/nav/NavMainScreen$Item;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 191
    return-object v3
.end method
