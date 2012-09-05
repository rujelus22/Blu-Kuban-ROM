.class Lcom/google/android/apps/books/widget/ScrubBar$2;
.super Ljava/lang/Object;
.source "ScrubBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScrubBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/ScrubBar;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/ScrubBar;)V
    .registers 2
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar$2;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar$2;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    #getter for: Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->access$400(Lcom/google/android/apps/books/widget/ScrubBar;)Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 661
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar$2;->this$0:Lcom/google/android/apps/books/widget/ScrubBar;

    #getter for: Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->access$400(Lcom/google/android/apps/books/widget/ScrubBar;)Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;->onScrubUndo()V

    .line 663
    :cond_11
    return-void
.end method
