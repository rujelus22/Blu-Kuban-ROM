.class Lcom/google/android/apps/books/app/BooksActivity$1$1;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1;->populateReaderActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

.field final synthetic val$actionBar:Landroid/app/ActionBar;

.field final synthetic val$author:Ljava/lang/CharSequence;

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/ActionBar;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$title:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$author:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$actionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 575
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iget-object v3, v3, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/BooksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 577
    .local v1, titleButton:Landroid/view/View;
    const v3, 0x7f0f000c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 578
    .local v2, titleView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const v3, 0x7f0f000d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    .local v0, authorView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$author:Ljava/lang/CharSequence;

    if-nez v3, :cond_45

    const-string v3, ""

    :goto_2d
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    new-instance v3, Lcom/google/android/apps/books/app/BooksActivity$1$1$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/app/BooksActivity$1$1$1;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1$1;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 589
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/app/BooksActivity$1;->setActionBarDisplayOptions(I)V

    .line 591
    return-void

    .line 580
    :cond_45
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->val$author:Ljava/lang/CharSequence;

    goto :goto_2d
.end method
