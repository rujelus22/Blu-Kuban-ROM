.class final Lcom/android/athome/picker/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/q;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/q;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/athome/picker/w;->a:Lcom/android/athome/picker/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 281
    iget-object v0, p0, Lcom/android/athome/picker/w;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->c(Lcom/android/athome/picker/q;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/android/athome/picker/w;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->d(Lcom/android/athome/picker/q;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/android/athome/picker/w;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->e(Lcom/android/athome/picker/q;)V

    .line 285
    return-void
.end method
