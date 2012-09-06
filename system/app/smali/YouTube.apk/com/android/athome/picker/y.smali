.class final Lcom/android/athome/picker/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/a;

.field final synthetic b:Lcom/android/athome/picker/q;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/q;Lcom/android/athome/picker/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/athome/picker/y;->b:Lcom/android/athome/picker/q;

    iput-object p2, p0, Lcom/android/athome/picker/y;->a:Lcom/android/athome/picker/a;

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
    .line 367
    iget-object v1, p0, Lcom/android/athome/picker/y;->b:Lcom/android/athome/picker/q;

    iget-object v2, p0, Lcom/android/athome/picker/y;->a:Lcom/android/athome/picker/a;

    iget-object v0, p0, Lcom/android/athome/picker/y;->a:Lcom/android/athome/picker/a;

    invoke-virtual {v0, p3}, Lcom/android/athome/picker/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutputGroup;

    invoke-static {v1, v2, v0}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/q;Lcom/android/athome/picker/a;Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 368
    return-void
.end method
