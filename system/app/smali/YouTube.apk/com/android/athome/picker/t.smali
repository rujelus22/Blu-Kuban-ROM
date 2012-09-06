.class final Lcom/android/athome/picker/t;
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
    .line 224
    iput-object p1, p0, Lcom/android/athome/picker/t;->a:Lcom/android/athome/picker/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/athome/picker/t;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->a(Lcom/android/athome/picker/q;)V

    .line 228
    return-void
.end method
