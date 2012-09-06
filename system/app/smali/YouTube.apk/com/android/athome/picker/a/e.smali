.class final Lcom/android/athome/picker/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/android/athome/picker/a/i;

.field final synthetic d:Lcom/android/athome/picker/a/d;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a/d;Landroid/widget/ListView;Landroid/view/View;Lcom/android/athome/picker/a/i;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/athome/picker/a/e;->d:Lcom/android/athome/picker/a/d;

    iput-object p2, p0, Lcom/android/athome/picker/a/e;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/athome/picker/a/e;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/android/athome/picker/a/e;->c:Lcom/android/athome/picker/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/athome/picker/a/e;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/athome/picker/a/e;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/android/athome/picker/a/e;->c:Lcom/android/athome/picker/a/i;

    iget v2, v2, Lcom/android/athome/picker/a/i;->f:I

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 415
    return-void
.end method
