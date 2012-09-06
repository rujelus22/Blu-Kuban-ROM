.class final Lcom/android/athome/picker/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/android/athome/picker/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/athome/picker/b;->c:Lcom/android/athome/picker/a;

    iput-object p2, p0, Lcom/android/athome/picker/b;->a:Landroid/view/View;

    iput p3, p0, Lcom/android/athome/picker/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/athome/picker/b;->c:Lcom/android/athome/picker/a;

    invoke-static {v0}, Lcom/android/athome/picker/a;->a(Lcom/android/athome/picker/a;)Landroid/widget/AdapterView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/b;->a:Landroid/view/View;

    iget v2, p0, Lcom/android/athome/picker/b;->b:I

    iget-object v3, p0, Lcom/android/athome/picker/b;->c:Lcom/android/athome/picker/a;

    iget v4, p0, Lcom/android/athome/picker/b;->b:I

    invoke-virtual {v3, v4}, Lcom/android/athome/picker/a;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 52
    return-void
.end method
