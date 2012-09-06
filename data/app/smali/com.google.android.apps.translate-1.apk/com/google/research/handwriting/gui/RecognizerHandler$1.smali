.class Lcom/google/research/handwriting/gui/RecognizerHandler$1;
.super Ljava/lang/Object;
.source "RecognizerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/research/handwriting/gui/RecognizerHandler;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/research/handwriting/gui/RecognizerHandler;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/gui/RecognizerHandler;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler$1;->this$0:Lcom/google/research/handwriting/gui/RecognizerHandler;

    iput-object p2, p0, Lcom/google/research/handwriting/gui/RecognizerHandler$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler$1;->this$0:Lcom/google/research/handwriting/gui/RecognizerHandler;

    #getter for: Lcom/google/research/handwriting/gui/RecognizerHandler;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/research/handwriting/gui/RecognizerHandler;->access$000(Lcom/google/research/handwriting/gui/RecognizerHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/RecognizerHandler$1;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 112
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method
