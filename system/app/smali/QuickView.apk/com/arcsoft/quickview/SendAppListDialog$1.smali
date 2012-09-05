.class Lcom/arcsoft/quickview/SendAppListDialog$1;
.super Ljava/lang/Object;
.source "SendAppListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/SendAppListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/SendAppListDialog;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/SendAppListDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #getter for: Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$000(Lcom/arcsoft/quickview/SendAppListDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne p2, v7, :cond_12

    .line 116
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #calls: Lcom/arcsoft/quickview/SendAppListDialog;->sendToKodak()Z
    invoke-static {v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$100(Lcom/arcsoft/quickview/SendAppListDialog;)Z

    .line 155
    :goto_11
    return-void

    .line 118
    :cond_12
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #getter for: Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$000(Lcom/arcsoft/quickview/SendAppListDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ne p2, v7, :cond_26

    .line 120
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #calls: Lcom/arcsoft/quickview/SendAppListDialog;->sendToSnapfish()Z
    invoke-static {v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$200(Lcom/arcsoft/quickview/SendAppListDialog;)Z

    goto :goto_11

    .line 125
    :cond_26
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #getter for: Lcom/arcsoft/quickview/SendAppListDialog;->mDisplayAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$000(Lcom/arcsoft/quickview/SendAppListDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v6, shareInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 130
    .local v5, mimeType:Ljava/lang/String;
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #getter for: Lcom/arcsoft/quickview/SendAppListDialog;->mShareAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$300(Lcom/arcsoft/quickview/SendAppListDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 132
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 135
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 139
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_6e
    iget-object v8, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    #setter for: Lcom/arcsoft/quickview/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v8, v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$402(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    .line 141
    const/4 v3, 0x0

    .local v3, index:I
    :goto_7b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_aa

    .line 143
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 145
    .restart local v4       #info:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_88
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    if-ge v1, v7, :cond_a7

    .line 147
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 148
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #calls: Lcom/arcsoft/quickview/SendAppListDialog;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v4, v5}, Lcom/arcsoft/quickview/SendAppListDialog;->access$500(Lcom/arcsoft/quickview/SendAppListDialog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 141
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 152
    .end local v1           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_aa
    iget-object v7, p0, Lcom/arcsoft/quickview/SendAppListDialog$1;->this$0:Lcom/arcsoft/quickview/SendAppListDialog;

    #calls: Lcom/arcsoft/quickview/SendAppListDialog;->singleSend()V
    invoke-static {v7}, Lcom/arcsoft/quickview/SendAppListDialog;->access$600(Lcom/arcsoft/quickview/SendAppListDialog;)V

    goto/16 :goto_11
.end method
