.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6$1;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;)V
    .registers 2
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "di"
    .parameter "arg1"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->deleteEntry()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    .line 433
    return-void
.end method
