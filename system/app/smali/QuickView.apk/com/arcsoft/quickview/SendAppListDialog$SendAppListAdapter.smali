.class Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SendAppListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/SendAppListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/SendAppListDialog;


# direct methods
.method public constructor <init>(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;>;"
    iput-object p1, p0, Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 273
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 278
    move-object v3, p2

    .line 280
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_19

    .line 282
    iget-object v5, p0, Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #getter for: Lcom/arcsoft/quickview/SendAppListDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/arcsoft/quickview/SendAppListDialog;->access$700(Lcom/arcsoft/quickview/SendAppListDialog;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 283
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 286
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_19
    invoke-virtual {p0, p1}, Lcom/arcsoft/quickview/SendAppListDialog$SendAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;

    .line 288
    .local v2, ti:Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;
    if-eqz v2, :cond_45

    .line 291
    const v5, 0x7f06001b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 292
    .local v0, appicon:Landroid/widget/ImageView;
    const v5, 0x7f06001c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    .local v1, appname:Landroid/widget/TextView;
    if-eqz v0, :cond_3c

    .line 295
    invoke-virtual {v2}, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_3c
    if-eqz v1, :cond_45

    .line 298
    invoke-virtual {v2}, Lcom/arcsoft/quickview/SendAppListDialog$SendAppItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .end local v0           #appicon:Landroid/widget/ImageView;
    .end local v1           #appname:Landroid/widget/TextView;
    :cond_45
    return-object v3
.end method
