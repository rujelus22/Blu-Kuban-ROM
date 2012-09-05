.class Lcom/google/android/voicesearch/HelpDialog$7;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 270
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$800(Lcom/google/android/voicesearch/HelpDialog;)I

    move-result v0

    if-lt p3, v0, :cond_a7

    .line 271
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mInRight:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$900(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mOutLeft:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 279
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #setter for: Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I
    invoke-static {v0, p3}, Lcom/google/android/voicesearch/HelpDialog;->access$802(Lcom/google/android/voicesearch/HelpDialog;I)I

    .line 280
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 281
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_50
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 286
    if-nez p3, :cond_c7

    .line 287
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 293
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 294
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_d1

    .line 295
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1500(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 302
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1500(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Button;

    move-result-object v2

    if-nez p3, :cond_db

    move v0, v1

    :goto_8d
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    :cond_90
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 306
    if-nez p3, :cond_de

    .line 308
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a071d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 316
    :cond_a6
    :goto_a6
    return-void

    .line 274
    :cond_a7
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mInLeft:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$1100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mOutRight:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$1200(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_30

    .line 289
    :cond_c7
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_63

    .line 297
    :cond_d1
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_7c

    .line 302
    :cond_db
    const/16 v0, 0x8

    goto :goto_8d

    .line 309
    :cond_de
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_f2

    .line 311
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a6

    .line 313
    :cond_f2
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a071c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a6
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
