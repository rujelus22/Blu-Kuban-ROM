.class Lcom/sprint/w/installer/ManagePacksActivity$1;
.super Ljava/lang/Thread;
.source "ManagePacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/ManagePacksActivity;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ManagePacksActivity;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/ManagePacksActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iput-object p2, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 112
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 113
    .local v2, list:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/sprint/w/installer/ManagePacksActivity$Listable;>;"
    iget-object v5, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    #calls: Lcom/sprint/w/installer/ManagePacksActivity;->findDistinctPacks()Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sprint/w/installer/ManagePacksActivity;->access$000(Lcom/sprint/w/installer/ManagePacksActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .line 114
    .local v4, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/ManagePacksActivity$PackItem;>;"
    iget-object v6, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_52

    const/4 v5, 0x1

    :goto_15
    iput-boolean v5, v6, Lcom/sprint/w/installer/ManagePacksActivity;->mLimitReached:Z

    .line 115
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_54

    .line 116
    new-instance v5, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;

    iget-object v6, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v7, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->val$c:Landroid/content/Context;

    const v8, 0x7f06000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sprint/w/installer/ManagePacksActivity$MixedContentItem;-><init>(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;

    .line 119
    .local v3, p:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;
    iget-object v5, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    iget-object v6, v3, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sprint/w/installer/PackInfo;->loadPackDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v1

    .line 120
    .local v1, info:Lcom/sprint/w/installer/PackInfo;
    if-eqz v1, :cond_34

    .line 121
    iget-object v5, v1, Lcom/sprint/w/installer/PackInfo;->iconBytes:[B

    iput-object v5, v3, Lcom/sprint/w/installer/ManagePacksActivity$PackItem;->iconBytes:[B

    .line 122
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/sprint/w/installer/PackInfo;
    .end local v3           #p:Lcom/sprint/w/installer/ManagePacksActivity$PackItem;
    :cond_52
    const/4 v5, 0x0

    goto :goto_15

    .line 126
    :cond_54
    iget-object v5, p0, Lcom/sprint/w/installer/ManagePacksActivity$1;->this$0:Lcom/sprint/w/installer/ManagePacksActivity;

    #calls: Lcom/sprint/w/installer/ManagePacksActivity;->updateListView(Ljava/util/Vector;)V
    invoke-static {v5, v2}, Lcom/sprint/w/installer/ManagePacksActivity;->access$100(Lcom/sprint/w/installer/ManagePacksActivity;Ljava/util/Vector;)V

    .line 127
    return-void
.end method
