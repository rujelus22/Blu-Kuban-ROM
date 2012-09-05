.class Lcom/sec/android/inputmethod/axt9/AxT9IME$5;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 2
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    .line 699
    return-void
.end method
