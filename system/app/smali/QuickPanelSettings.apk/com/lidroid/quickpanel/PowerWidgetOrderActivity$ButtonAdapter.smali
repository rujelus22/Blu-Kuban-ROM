.class Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerWidgetOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/quickpanel/PowerWidgetOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonAdapter"
.end annotation


# instance fields
.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSystemUIResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/lidroid/quickpanel/PowerWidgetOrderActivity;


# direct methods
.method public constructor <init>(Lcom/lidroid/quickpanel/PowerWidgetOrderActivity;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 105
    iput-object p1, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->this$0:Lcom/lidroid/quickpanel/PowerWidgetOrderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 101
    iput-object v3, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    .line 106
    iput-object p2, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mContext:Landroid/content/Context;

    .line 107
    iget-object v2, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    iget-object v2, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 110
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_22

    .line 112
    :try_start_1a
    const-string v2, "lidroid"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_26

    .line 119
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->reloadButtons()V

    .line 120
    return-void

    .line 113
    :catch_26
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    iput-object v3, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    .line 115
    const-string v2, "PowerWidgetOrderActivity"

    const-string v3, "Could not load SystemUI resources"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 148
    if-nez p2, :cond_4e

    .line 149
    iget-object v7, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 154
    .local v6, v:Landroid/view/View;
    :goto_b
    iget-object v7, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;

    .line 156
    .local v0, button:Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;
    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 157
    .local v4, name:Landroid/widget/TextView;
    const/high16 v7, 0x7f09

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 159
    .local v3, icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->getTitleResId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 162
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v7, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    if-eqz v7, :cond_4d

    .line 166
    iget-object v7, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, resId:I
    if-lez v5, :cond_4d

    .line 169
    :try_start_40
    iget-object v7, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mSystemUIResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 170
    .local v1, d:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4d} :catch_50

    .line 178
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #resId:I
    :cond_4d
    :goto_4d
    return-object v6

    .line 151
    .end local v0           #button:Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;
    .end local v3           #icon:Landroid/widget/ImageView;
    .end local v4           #name:Landroid/widget/TextView;
    .end local v6           #v:Landroid/view/View;
    :cond_4e
    move-object v6, p2

    .restart local v6       #v:Landroid/view/View;
    goto :goto_b

    .line 172
    .restart local v0       #button:Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;
    .restart local v3       #icon:Landroid/widget/ImageView;
    .restart local v4       #name:Landroid/widget/TextView;
    .restart local v5       #resId:I
    :catch_50
    move-exception v2

    .line 173
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PowerWidgetOrderActivity"

    const-string v8, "Error retrieving icon drawable"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d
.end method

.method public reloadButtons()V
    .registers 6

    .prologue
    .line 123
    iget-object v3, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lidroid/util/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/util/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 126
    .local v1, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, button:Ljava/lang/String;
    sget-object v3, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 129
    iget-object v3, p0, Lcom/lidroid/quickpanel/PowerWidgetOrderActivity$ButtonAdapter;->mButtons:Ljava/util/ArrayList;

    sget-object v4, Lcom/lidroid/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 132
    .end local v0           #button:Ljava/lang/String;
    :cond_35
    return-void
.end method
