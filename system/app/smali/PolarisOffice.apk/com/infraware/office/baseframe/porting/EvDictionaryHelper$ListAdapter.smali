.class public Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EvDictionaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAdapter"
.end annotation


# instance fields
.field clrState:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter "c"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->this$0:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    .line 77
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 78
    new-array v2, v4, [I

    aput-object v2, v1, v5

    .line 79
    new-array v2, v6, [I

    fill-array-data v2, :array_2c

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->clrState:Landroid/content/res/ColorStateList;

    .line 83
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    iput-object p2, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->mContext:Landroid/content/Context;

    return-void

    .line 79
    :array_2c
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0xfft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    .line 102
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080245

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, string:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->this$0:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    #getter for: Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->mStrDictionary:Ljava/lang/String;
    invoke-static {v4}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->access$0(Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const v2, 0x7f0c000b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$ListAdapter;->clrState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    const/high16 v2, 0x41a0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    return-object p2
.end method
