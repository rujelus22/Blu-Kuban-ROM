.class public Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;
.super Landroid/widget/BaseAdapter;
.source "MultipleFieldArrayAdaptor.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/vlingo/client/ui/MultipleFieldResource;",
            ">;"
        }
    .end annotation
.end field

.field private textViewResource:I

.field private textViewResourceIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[ILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "textViewResource"
    .parameter "textViewResourceIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[I",
            "Ljava/util/List",
            "<+",
            "Lcom/vlingo/client/ui/MultipleFieldResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;,"Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<+Lcom/vlingo/client/ui/MultipleFieldResource;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p4, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->list:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->context:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->textViewResource:I

    .line 28
    iput-object p3, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->textViewResourceIds:[I

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    .local p0, this:Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;,"Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor<TT;>;"
    iget-object v0, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 36
    .local p0, this:Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;,"Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 40
    .local p0, this:Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;,"Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 44
    .local p0, this:Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;,"Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor<TT;>;"
    iget-object v3, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->context:Landroid/content/Context;

    iget v4, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->textViewResource:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, v:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->textViewResourceIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2f

    .line 46
    iget-object v3, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->textViewResourceIds:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, tf:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/ui/MultipleFieldResource;

    iget-object v4, p0, Lcom/vlingo/client/ui/MultipleFieldArrayAdaptor;->textViewResourceIds:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/vlingo/client/ui/MultipleFieldResource;->stringForResourceID(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 49
    .end local v1           #tf:Landroid/widget/TextView;
    :cond_2f
    return-object v2
.end method
