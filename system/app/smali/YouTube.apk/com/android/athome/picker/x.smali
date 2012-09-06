.class final Lcom/android/athome/picker/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/g;

.field final synthetic b:Lcom/android/athome/picker/q;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/q;Lcom/android/athome/picker/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/athome/picker/x;->b:Lcom/android/athome/picker/q;

    iput-object p2, p0, Lcom/android/athome/picker/x;->a:Lcom/android/athome/picker/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/athome/picker/x;->b:Lcom/android/athome/picker/q;

    iget-object v2, p0, Lcom/android/athome/picker/x;->a:Lcom/android/athome/picker/g;

    iget-object v0, p0, Lcom/android/athome/picker/x;->a:Lcom/android/athome/picker/g;

    invoke-virtual {v0, p3}, Lcom/android/athome/picker/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/g;Lcom/android/athome/picker/MediaOutput;)V

    .line 351
    return-void
.end method
