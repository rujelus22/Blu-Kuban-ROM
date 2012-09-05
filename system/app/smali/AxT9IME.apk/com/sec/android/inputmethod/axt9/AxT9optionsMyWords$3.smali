.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$3;
.super Ljava/lang/Object;
.source "AxT9optionsMyWords.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 316
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->addMyWord()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    .line 319
    return-void
.end method
