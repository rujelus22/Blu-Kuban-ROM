.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$1;
.super Ljava/lang/Object;
.source "AxT9optionsMyWords.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "tview"
    .parameter "hasfocus"

    .prologue
    .line 292
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 293
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCurrentFocusString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    :cond_10
    return-void
.end method
