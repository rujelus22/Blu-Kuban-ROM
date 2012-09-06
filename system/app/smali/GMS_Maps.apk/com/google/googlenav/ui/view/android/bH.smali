.class Lcom/google/googlenav/ui/view/android/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bh;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/bh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 372
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:I

    if-ltz v0, :cond_f

    .line 373
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->c(Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;)Lcom/google/googlenav/ui/view/android/bi;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:I

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/android/bi;->a(I)V

    .line 375
    :cond_f
    return-void
.end method
