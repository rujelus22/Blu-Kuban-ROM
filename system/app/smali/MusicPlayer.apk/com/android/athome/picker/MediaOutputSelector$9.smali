.class Lcom/android/athome/picker/MediaOutputSelector$9;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Lcom/android/athome/picker/MediaGroupAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaOutputSelector;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartGroupEditing(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 9
    .parameter "group"

    .prologue
    const/4 v6, 0x1

    .line 796
    if-nez p1, :cond_4

    .line 822
    :goto_3
    return-void

    .line 799
    :cond_4
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v2

    .line 800
    .local v2, groupType:I
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$500(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 801
    const-string v3, "MediaOutputSelector"

    const-string v4, "AtHome receiver adapter already exists."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 804
    :cond_20
    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mGroupAdapters:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$1600(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/athome/picker/MediaGroupAdapter;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->getIndividualOutputs(Lcom/android/athome/picker/MediaGroupAdapter;)Ljava/util/ArrayList;
    invoke-static {v4, v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$1700(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 806
    .local v1, atHomeReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/athome/picker/MediaOutput;>;"
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mUIModeBySection:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$400(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v0, Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$1800(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/android/athome/picker/MediaOutputAdapter;-><init>(Landroid/content/Context;II)V

    .line 809
    .local v0, adapter:Lcom/android/athome/picker/MediaOutputAdapter;
    invoke-virtual {v0, v6}, Lcom/android/athome/picker/MediaOutputAdapter;->setMode(I)V

    .line 810
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutputAdapter;->setSelectedGroup(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 811
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mOutputAdapters:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$500(Lcom/android/athome/picker/MediaOutputSelector;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->updateAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V
    invoke-static {v3, v0, v1}, Lcom/android/athome/picker/MediaOutputSelector;->access$1900(Lcom/android/athome/picker/MediaOutputSelector;Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V

    .line 813
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$2000(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/athome/picker/MediaOutputAdapter;->setView(Landroid/widget/AdapterView;)V

    .line 814
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$2000(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 815
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mAtHomeReceiverList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$2000(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/athome/picker/MediaOutputSelector$9$1;

    invoke-direct {v4, p0, v0}, Lcom/android/athome/picker/MediaOutputSelector$9$1;-><init>(Lcom/android/athome/picker/MediaOutputSelector$9;Lcom/android/athome/picker/MediaOutputAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 821
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->updateViewVisibility()V
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$600(Lcom/android/athome/picker/MediaOutputSelector;)V

    goto/16 :goto_3
.end method
