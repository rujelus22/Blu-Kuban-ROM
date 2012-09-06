.class final Lcom/android/athome/picker/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/athome/picker/c;->a:Lcom/android/athome/picker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/c;->a:Lcom/android/athome/picker/a;

    invoke-static {v0}, Lcom/android/athome/picker/a;->c(Lcom/android/athome/picker/a;)Lcom/android/athome/picker/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/c;->a:Lcom/android/athome/picker/a;

    invoke-static {v1}, Lcom/android/athome/picker/a;->b(Lcom/android/athome/picker/a;)Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/athome/picker/d;->a(Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 80
    return-void
.end method
