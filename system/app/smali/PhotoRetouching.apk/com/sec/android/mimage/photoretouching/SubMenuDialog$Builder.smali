.class public Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
.super Ljava/lang/Object;
.source "SubMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/SubMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;",
            ">;"
        }
    .end annotation
.end field

.field public mSmartOn:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->context:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOptions:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mSmartOn:Z

    .line 70
    return-void
.end method

.method private createOptionFromSequence([Ljava/lang/CharSequence;)V
    .registers 9
    .parameter "items"

    .prologue
    .line 94
    array-length v1, p1

    .line 96
    .local v1, length:I
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOptions:Ljava/util/ArrayList;

    if-nez v2, :cond_10

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOptions:Ljava/util/ArrayList;

    .line 101
    :goto_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-lt v0, v1, :cond_16

    .line 103
    return-void

    .line 99
    .end local v0           #i:I
    :cond_10
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_c

    .line 102
    .restart local v0       #i:I
    :cond_16
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOptions:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v4, p1, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public create(I)Lcom/sec/android/mimage/photoretouching/SubMenuDialog;
    .registers 15
    .parameter "layout_id"

    .prologue
    const/16 v12, 0x20

    .line 112
    new-instance v8, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->context:Landroid/content/Context;

    const v2, 0x7f07000f

    invoke-direct {v8, v1, v2}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;-><init>(Landroid/content/Context;I)V

    .line 113
    .local v8, dialog:Lcom/sec/android/mimage/photoretouching/SubMenuDialog;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 115
    .local v9, layout:Landroid/view/View;
    const v1, 0x7f090020

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 117
    .local v11, title:Landroid/widget/TextView;
    if-eqz v11, :cond_27

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    .line 118
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_27
    const v1, 0x7f090021

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 122
    .local v10, listView:Landroid/widget/ListView;
    const/4 v0, 0x0

    .line 124
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    new-instance v0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    .line 125
    const v4, 0x7f090024

    const v5, 0x7f090025

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOptions:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mSmartOn:Z

    .line 124
    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;IIILjava/util/ArrayList;Z)V

    .line 127
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_53

    .line 128
    new-instance v1, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder$1;

    invoke-direct {v1, p0, v8}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder$1;-><init>(Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;Lcom/sec/android/mimage/photoretouching/SubMenuDialog;)V

    invoke-virtual {v10, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    :cond_53
    if-eqz v10, :cond_58

    .line 140
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    :cond_58
    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->setContentView(Landroid/view/View;)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 146
    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 148
    return-object v8
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    .registers 4
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->createOptionFromSequence([Ljava/lang/CharSequence;)V

    .line 83
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    return-object p0
.end method

.method public setItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    .registers 3
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOptions:Ljava/util/ArrayList;

    .line 77
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    .registers 3
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->createOptionFromSequence([Ljava/lang/CharSequence;)V

    .line 89
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    return-object p0
.end method

.method public setSmartMode(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mSmartOn:Z

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
