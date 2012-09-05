.class Lcom/android/browser/NavScreen$3;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Lcom/android/browser/SecBrowserAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NavScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/android/browser/SecBrowserAdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/SecBrowserAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, parent:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<*>;"
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    iget-object v4, v4, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v4, p3}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    .line 243
    .local v3, tab:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    iget-object v4, v4, Lcom/android/browser/NavScreen;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    iget-object v4, v4, Lcom/android/browser/NavScreen;->mTabUrl:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    iget-object v4, v4, Lcom/android/browser/NavScreen;->tc:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 248
    .local v0, count:I
    add-int/lit8 v2, p3, 0x1

    .line 249
    .local v2, positionCount:I
    const/4 v1, 0x0

    .local v1, pageIndicator:I
    :goto_29
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageCount:I
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$100(Lcom/android/browser/NavScreen;)I

    move-result v4

    if-ge v1, v4, :cond_b6

    .line 251
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    if-eqz v4, :cond_86

    .line 252
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 254
    if-ge v1, v0, :cond_86

    .line 255
    if-ne v1, p3, :cond_89

    .line 256
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    const v5, 0x7f0200d2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 258
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    :cond_86
    :goto_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 261
    :cond_89
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v4, v4, v1

    const v5, 0x7f0200d3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 263
    iget-object v4, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageIndicatorView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/browser/NavScreen;->access$200(Lcom/android/browser/NavScreen;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/NavScreen$3;->this$0:Lcom/android/browser/NavScreen;

    #getter for: Lcom/android/browser/NavScreen;->mPageTextView:[Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/browser/NavScreen;->access$300(Lcom/android/browser/NavScreen;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_86

    .line 270
    :cond_b6
    return-void
.end method

.method public onNothingSelected(Lcom/android/browser/SecBrowserAdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/SecBrowserAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, parent:Lcom/android/browser/SecBrowserAdapterView;,"Lcom/android/browser/SecBrowserAdapterView<*>;"
    return-void
.end method
