.class Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;
.super Ljava/lang/Object;
.source "PackSwitcherLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

.field final synthetic val$packIcons:Ljava/util/ArrayList;

.field final synthetic val$packList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    iput-object p2, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->val$packList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->val$packIcons:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 973
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->val$packList:Ljava/util/ArrayList;

    #setter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$402(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 974
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->val$packIcons:Ljava/util/ArrayList;

    #setter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackIcons:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1202(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 975
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackAdapter:Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->notifyDataSetChanged()V

    .line 976
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$1100(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/widget/CoverFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->selectedPosition:I
    invoke-static {v1}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->access$1400(Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/CoverFlow;->setSelection(I)V

    .line 977
    return-void
.end method
