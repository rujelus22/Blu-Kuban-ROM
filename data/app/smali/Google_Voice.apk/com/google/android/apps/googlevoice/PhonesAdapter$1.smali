.class Lcom/google/android/apps/googlevoice/PhonesAdapter$1;
.super Ljava/lang/Object;
.source "PhonesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/PhonesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhonesAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhonesAdapter;Landroid/widget/ListView;Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->this$0:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->val$position:I

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->this$0:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget v4, p0, Lcom/google/android/apps/googlevoice/PhonesAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 75
    return-void
.end method
