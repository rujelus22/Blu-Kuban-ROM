.class Lcom/android/athome/picker/MediaOutputSelector$9$1;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/MediaOutputSelector$9;->onStartGroupEditing(Lcom/android/athome/picker/MediaOutputGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/athome/picker/MediaOutputSelector$9;

.field final synthetic val$adapter:Lcom/android/athome/picker/MediaOutputAdapter;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputSelector$9;Lcom/android/athome/picker/MediaOutputAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector$9$1;->this$1:Lcom/android/athome/picker/MediaOutputSelector$9;

    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputSelector$9$1;->val$adapter:Lcom/android/athome/picker/MediaOutputAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 818
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$9$1;->this$1:Lcom/android/athome/picker/MediaOutputSelector$9;

    iget-object v1, v0, Lcom/android/athome/picker/MediaOutputSelector$9;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$9$1;->val$adapter:Lcom/android/athome/picker/MediaOutputAdapter;

    invoke-virtual {v0, p3}, Lcom/android/athome/picker/MediaOutputAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->editGroup(Lcom/android/athome/picker/MediaOutput;)V
    invoke-static {v1, v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$2100(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutput;)V

    .line 819
    return-void
.end method
