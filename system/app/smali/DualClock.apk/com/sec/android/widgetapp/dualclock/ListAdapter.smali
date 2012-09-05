.class public Lcom/sec/android/widgetapp/dualclock/ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/dualclock/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isHidedBottomLabel:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/dualclock/ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/dualclock/ListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput p2, p0, Lcom/sec/android/widgetapp/dualclock/ListAdapter;->mLayoutID:I

    .line 50
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f0a0044

    .line 55
    if-nez p2, :cond_e

    .line 57
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/sec/android/widgetapp/dualclock/ListAdapter;->mLayoutID:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    :cond_e
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/dualclock/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/dualclock/ListItem;

    .line 63
    .local v1, item:Lcom/sec/android/widgetapp/dualclock/ListItem;
    if-eqz v1, :cond_34

    .line 65
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;-><init>()V

    .line 67
    .local v0, holder:Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;
    iget v2, p0, Lcom/sec/android/widgetapp/dualclock/ListAdapter;->mLayoutID:I

    packed-switch v2, :pswitch_data_6e

    .line 100
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    .line 103
    iget-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    .end local v0           #holder:Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;
    :cond_34
    :goto_34
    return-object p2

    .line 71
    .restart local v0       #holder:Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;
    :pswitch_35
    const v2, 0x7f0a0045

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->layoutToggle:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    .line 77
    iget-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v2, 0x7f0a0048

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    .line 82
    iget-object v3, v0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/sec/android/widgetapp/dualclock/ListAdapter;->isHidedBottomLabel:Z

    if-eqz v2, :cond_68

    const-string v2, ""

    :goto_64
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    :cond_68
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/ListItem;->getBottomLabel()Ljava/lang/String;

    move-result-object v2

    goto :goto_64

    .line 67
    nop

    :pswitch_data_6e
    .packed-switch 0x7f030003
        :pswitch_35
    .end packed-switch
.end method
