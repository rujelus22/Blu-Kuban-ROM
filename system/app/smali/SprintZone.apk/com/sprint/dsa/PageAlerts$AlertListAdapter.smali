.class Lcom/sprint/dsa/PageAlerts$AlertListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PageAlerts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageAlerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlertListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageAlerts;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageAlerts;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->this$0:Lcom/sprint/dsa/PageAlerts;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;
    invoke-static {v0}, Lcom/sprint/dsa/PageAlerts;->access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alerts;->getSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;
    invoke-static {v0}, Lcom/sprint/dsa/PageAlerts;->access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/data/Alerts;->getAlert(I)Lcom/sprint/dsa/data/Alert;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;
    invoke-static {v1}, Lcom/sprint/dsa/PageAlerts;->access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sprint/dsa/data/Alerts;->getAlert(I)Lcom/sprint/dsa/data/Alert;

    move-result-object v0

    .line 221
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getHeader()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    .line 222
    :cond_12
    const/4 v1, 0x0

    .line 224
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b000c

    .line 178
    new-instance v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;

    iget-object v3, p0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->this$0:Lcom/sprint/dsa/PageAlerts;

    invoke-direct {v1, v3, v6}, Lcom/sprint/dsa/PageAlerts$ViewHolder;-><init>(Lcom/sprint/dsa/PageAlerts;Lcom/sprint/dsa/PageAlerts$ViewHolder;)V

    .line 180
    .local v1, holder:Lcom/sprint/dsa/PageAlerts$ViewHolder;
    iget-object v3, p0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mAlerts:Lcom/sprint/dsa/data/Alerts;
    invoke-static {v3}, Lcom/sprint/dsa/PageAlerts;->access$0(Lcom/sprint/dsa/PageAlerts;)Lcom/sprint/dsa/data/Alerts;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sprint/dsa/data/Alerts;->getAlert(I)Lcom/sprint/dsa/data/Alert;

    move-result-object v0

    .line 182
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    if-nez p2, :cond_91

    .line 183
    iget-object v3, p0, Lcom/sprint/dsa/PageAlerts$AlertListAdapter;->this$0:Lcom/sprint/dsa/PageAlerts;

    #getter for: Lcom/sprint/dsa/PageAlerts;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/sprint/dsa/PageAlerts;->access$1(Lcom/sprint/dsa/PageAlerts;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030004

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, view:Landroid/view/View;
    :goto_24
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_header:Landroid/widget/TextView;

    .line 192
    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_icon:Landroid/widget/ImageView;

    .line 193
    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_title:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_desc:Landroid/widget/TextView;

    .line 196
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getHeader()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 197
    iget-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_header:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_header:Landroid/widget/TextView;

    .line 203
    :goto_61
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getHeader()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_70

    iget-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_header:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_70
    iget-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_desc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_9b

    .line 207
    iget-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_icon:Landroid/widget/ImageView;

    const v4, 0x7f020014

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :goto_90
    return-object v2

    .line 187
    .end local v2           #view:Landroid/view/View;
    :cond_91
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_24

    .line 200
    :cond_93
    iget-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_header:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_61

    .line 209
    :cond_9b
    iget-object v3, v1, Lcom/sprint/dsa/PageAlerts$ViewHolder;->m_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_90
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x2

    return v0
.end method
