.class Lcom/android/athome/picker/MediaOutputSelector$7;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/MediaOutputSelector;->configureGroupList(Landroid/widget/ListView;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaOutputSelector;

.field final synthetic val$adapter:Lcom/android/athome/picker/MediaGroupAdapter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaGroupAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector$7;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputSelector$7;->val$adapter:Lcom/android/athome/picker/MediaGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputSelector$7;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputSelector$7;->val$adapter:Lcom/android/athome/picker/MediaGroupAdapter;

    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$7;->val$adapter:Lcom/android/athome/picker/MediaGroupAdapter;

    invoke-virtual {v0, p3}, Lcom/android/athome/picker/MediaGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->selectOutputGroup(Lcom/android/athome/picker/MediaGroupAdapter;Lcom/android/athome/picker/MediaOutputGroup;)V
    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$700(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaGroupAdapter;Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 368
    return-void
.end method
