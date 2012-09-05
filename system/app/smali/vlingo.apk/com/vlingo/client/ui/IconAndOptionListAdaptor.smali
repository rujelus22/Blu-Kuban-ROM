.class public Lcom/vlingo/client/ui/IconAndOptionListAdaptor;
.super Landroid/widget/BaseAdapter;
.source "IconAndOptionListAdaptor.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private iconIDs:[I

.field private options:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .registers 4
    .parameter "context"
    .parameter "options"
    .parameter "iconIDs"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;->options:[Ljava/lang/CharSequence;

    .line 27
    iput-object p3, p0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;->iconIDs:[I

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;->options:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    if-nez p2, :cond_c

    .line 44
    iget-object v0, p0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;->context:Landroid/content/Context;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    :cond_c
    const v0, 0x7f0f001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;->iconIDs:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    const v0, 0x7f0f0053

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vlingo/client/ui/IconAndOptionListAdaptor;->options:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-object p2
.end method
