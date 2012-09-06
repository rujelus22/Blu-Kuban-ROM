.class Lcom/android/athome/picker/MediaGroupAdapter$1;
.super Ljava/lang/Object;
.source "MediaGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/MediaGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaGroupAdapter;

.field final synthetic val$tempPosition:I

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaGroupAdapter;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->this$0:Lcom/android/athome/picker/MediaGroupAdapter;

    iput-object p2, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->val$tempView:Landroid/view/View;

    iput p3, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->val$tempPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->this$0:Lcom/android/athome/picker/MediaGroupAdapter;

    #getter for: Lcom/android/athome/picker/MediaGroupAdapter;->mView:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/android/athome/picker/MediaGroupAdapter;->access$000(Lcom/android/athome/picker/MediaGroupAdapter;)Landroid/widget/AdapterView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->val$tempView:Landroid/view/View;

    iget v2, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->val$tempPosition:I

    iget-object v3, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->this$0:Lcom/android/athome/picker/MediaGroupAdapter;

    iget v4, p0, Lcom/android/athome/picker/MediaGroupAdapter$1;->val$tempPosition:I

    invoke-virtual {v3, v4}, Lcom/android/athome/picker/MediaGroupAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 52
    return-void
.end method
