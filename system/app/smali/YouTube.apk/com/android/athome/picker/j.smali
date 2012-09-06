.class final Lcom/android/athome/picker/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/android/athome/picker/g;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/g;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/athome/picker/j;->c:Lcom/android/athome/picker/g;

    iput-object p2, p0, Lcom/android/athome/picker/j;->a:Landroid/view/View;

    iput p3, p0, Lcom/android/athome/picker/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/athome/picker/j;->c:Lcom/android/athome/picker/g;

    iget-object v1, p0, Lcom/android/athome/picker/j;->c:Lcom/android/athome/picker/g;

    invoke-static {v1}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/g;)Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/g;I)I

    .line 251
    iget-object v0, p0, Lcom/android/athome/picker/j;->c:Lcom/android/athome/picker/g;

    invoke-static {v0}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/g;)Landroid/widget/AdapterView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/j;->a:Landroid/view/View;

    iget v2, p0, Lcom/android/athome/picker/j;->b:I

    iget-object v3, p0, Lcom/android/athome/picker/j;->c:Lcom/android/athome/picker/g;

    iget v4, p0, Lcom/android/athome/picker/j;->b:I

    invoke-virtual {v3, v4}, Lcom/android/athome/picker/g;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 252
    return-void
.end method
