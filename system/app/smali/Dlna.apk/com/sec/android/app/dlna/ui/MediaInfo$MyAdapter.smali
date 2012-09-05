.class public Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field private mResourceID:I

.field private mVi:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/ui/MediaInfo;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/MediaInfo;

    .line 221
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 222
    iput p3, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->mResourceID:I

    .line 223
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->mVi:Landroid/view/LayoutInflater;

    .line 224
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/MediaInfo;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaInfo;->access$000(Lcom/sec/android/app/dlna/ui/MediaInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 255
    const-string v0, ""

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 259
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 228
    if-nez p2, :cond_63

    .line 229
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->mVi:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->mResourceID:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 234
    .local v0, ItemView:Landroid/widget/LinearLayout;
    :goto_d
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 235
    const v3, 0x7f02005b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 237
    const v3, 0x7f07000c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    .local v1, deviceProp:Landroid/widget/TextView;
    const v3, 0x7f07000d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    .local v2, devicePropValue:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/MediaInfo;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaInfo;->access$000(Lcom/sec/android/app/dlna/ui/MediaInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_47

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/MediaInfo;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyNames:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaInfo;->access$000(Lcom/sec/android/app/dlna/ui/MediaInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 244
    :cond_47
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/MediaInfo;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaInfo;->access$100(Lcom/sec/android/app/dlna/ui/MediaInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_62

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaInfo$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/MediaInfo;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaInfo;->propertyValues:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaInfo;->access$100(Lcom/sec/android/app/dlna/ui/MediaInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_62
    return-object v0

    .end local v0           #ItemView:Landroid/widget/LinearLayout;
    .end local v1           #deviceProp:Landroid/widget/TextView;
    .end local v2           #devicePropValue:Landroid/widget/TextView;
    :cond_63
    move-object v0, p2

    .line 231
    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0       #ItemView:Landroid/widget/LinearLayout;
    goto :goto_d
.end method
