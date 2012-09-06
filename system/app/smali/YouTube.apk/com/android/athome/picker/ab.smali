.class final Lcom/android/athome/picker/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/g;

.field final synthetic b:Lcom/android/athome/picker/aa;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/aa;Lcom/android/athome/picker/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/athome/picker/ab;->b:Lcom/android/athome/picker/aa;

    iput-object p2, p0, Lcom/android/athome/picker/ab;->a:Lcom/android/athome/picker/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/athome/picker/ab;->b:Lcom/android/athome/picker/aa;

    iget-object v1, v0, Lcom/android/athome/picker/aa;->a:Lcom/android/athome/picker/q;

    iget-object v0, p0, Lcom/android/athome/picker/ab;->a:Lcom/android/athome/picker/g;

    invoke-virtual {v0, p3}, Lcom/android/athome/picker/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    invoke-static {v1, v0}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/MediaOutput;)V

    .line 819
    return-void
.end method
