.class Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackSwitcherLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackSwitcherLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackSwitcherLoader;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;Lcom/sprint/w/installer/PackSwitcherLoader$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1078
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x7f0c0031

    const v10, 0x7f030026

    const v9, 0x7f030010

    const v8, 0x7f0c002a

    const/4 v6, 0x0

    .line 1084
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprint/w/installer/PackInfo;

    .line 1086
    .local v4, packInfo:Lcom/sprint/w/installer/PackInfo;
    iget-boolean v7, v4, Lcom/sprint/w/installer/PackInfo;->notReady:Z

    if-eqz v7, :cond_5b

    .line 1088
    if-nez p2, :cond_2d

    .line 1089
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprint/w/installer/SprintIdHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v10, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1092
    :cond_2d
    const v7, 0x7f0c006c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1093
    .local v5, progressText:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    const v8, 0x7f0600ba

    invoke-virtual {v7, v8}, Lcom/sprint/w/installer/SprintIdHome;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v4, Lcom/sprint/w/installer/PackInfo;->downloadPercent:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p2

    .line 1146
    .end local v5           #progressText:Landroid/widget/TextView;
    .end local p2
    .local v1, convertView:Landroid/view/View;
    :goto_5a
    return-object v1

    .line 1095
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :cond_5b
    iget-object v7, v4, Lcom/sprint/w/installer/PackInfo;->installIntent:Ljava/lang/String;

    if-eqz v7, :cond_8e

    .line 1097
    if-nez p2, :cond_6f

    .line 1098
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprint/w/installer/SprintIdHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v10, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1101
    :cond_6f
    const v6, 0x7f0c006c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1102
    .restart local v5       #progressText:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    const v7, 0x7f0600bb

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/SprintIdHome;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p2

    .line 1103
    .end local p2
    .restart local v1       #convertView:Landroid/view/View;
    goto :goto_5a

    .line 1107
    .end local v1           #convertView:Landroid/view/View;
    .end local v5           #progressText:Landroid/widget/TextView;
    .restart local p2
    :cond_8e
    if-nez p2, :cond_da

    .line 1108
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprint/w/installer/SprintIdHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v9, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1109
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1120
    .local v2, image:Landroid/widget/ImageView;
    :cond_a4
    :goto_a4
    const/4 v0, 0x0

    .line 1121
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v7, v4, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    const-string v8, "HOME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 1122
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_b9

    .line 1123
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1133
    :cond_b9
    :goto_b9
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v7

    if-nez v7, :cond_119

    move v3, v6

    .line 1135
    .local v3, isCurrent:Z
    :goto_c2
    if-eqz v3, :cond_128

    .line 1136
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    :goto_cb
    if-eqz v0, :cond_d8

    .line 1142
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1143
    new-instance v6, Lcom/sprint/w/installer/util/ImageReflectionCreator;

    invoke-direct {v6, v2, v3}, Lcom/sprint/w/installer/util/ImageReflectionCreator;-><init>(Landroid/widget/ImageView;Z)V

    invoke-virtual {v6}, Lcom/sprint/w/installer/util/ImageReflectionCreator;->run()V

    :cond_d8
    move-object v1, p2

    .line 1146
    .end local p2
    .restart local v1       #convertView:Landroid/view/View;
    goto :goto_5a

    .line 1111
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #convertView:Landroid/view/View;
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #isCurrent:Z
    .restart local p2
    :cond_da
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1113
    .restart local v2       #image:Landroid/widget/ImageView;
    if-nez v2, :cond_a4

    .line 1115
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprint/w/installer/SprintIdHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v9, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1116
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #image:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2       #image:Landroid/widget/ImageView;
    goto :goto_a4

    .line 1125
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_f7
    iget-object v7, v4, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    const-string v8, "OEM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10c

    .line 1126
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_b9

    .line 1127
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b9

    .line 1130
    :cond_10c
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackIcons:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1200(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    goto :goto_b9

    .line 1133
    :cond_119
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    iget-object v8, v4, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_c2

    .line 1138
    .restart local v3       #isCurrent:Z
    :cond_128
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cb
.end method
