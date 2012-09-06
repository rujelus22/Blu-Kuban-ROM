.class final Lcom/android/athome/picker/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field final synthetic b:Lcom/android/athome/picker/a/d;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a/d;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    iget v1, p0, Lcom/android/athome/picker/a/f;->a:I

    invoke-virtual {v0, v1}, Lcom/android/athome/picker/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    invoke-static {v1, v0}, Lcom/android/athome/picker/a/d;->a(Lcom/android/athome/picker/a/d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v1, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    invoke-static {v0}, Lcom/android/athome/picker/media/p;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/athome/picker/a/d;->b(Lcom/android/athome/picker/a/d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v0, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    iget-object v0, v0, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    iget-object v0, v0, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    iget-object v1, v1, Lcom/android/athome/picker/a/d;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v1}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;)I

    move-result v1

    iget-object v2, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    invoke-static {v2}, Lcom/android/athome/picker/a/d;->a(Lcom/android/athome/picker/a/d;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->a()V

    .line 569
    iget-object v0, p0, Lcom/android/athome/picker/a/f;->b:Lcom/android/athome/picker/a/d;

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->b()V

    .line 570
    return-void
.end method
