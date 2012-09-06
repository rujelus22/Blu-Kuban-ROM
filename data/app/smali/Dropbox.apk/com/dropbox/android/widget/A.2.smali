.class final Lcom/dropbox/android/widget/A;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/z;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/z;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dropbox/android/widget/A;->a:Lcom/dropbox/android/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/android/widget/A;->a:Lcom/dropbox/android/widget/z;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/z;->cancel()V

    .line 65
    return-void
.end method
