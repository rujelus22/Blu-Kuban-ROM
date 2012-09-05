.class Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$2;
.super Ljava/lang/Object;
.source "AxT9UmlautPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, code:Landroid/content/Intent;
    const-string v1, "commit_char"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "altenative_code"

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->finish()V

    .line 83
    return-void
.end method
