.class Lcom/arcsoft/quickview/QuickViewActivity$5;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->showMorePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsMenuClicked:Z
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$002(Lcom/arcsoft/quickview/QuickViewActivity;Z)Z

    .line 519
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$100(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 520
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/arcsoft/quickview/QuickViewActivity;->mMoreDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->access$102(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 521
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mIsViewingImage:Z
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$200(Lcom/arcsoft/quickview/QuickViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 522
    cmp-long v0, p4, v2

    if-nez v0, :cond_2b

    .line 523
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->showSetAsDialog()V

    .line 533
    :cond_2a
    :goto_2a
    return-void

    .line 524
    :cond_2b
    cmp-long v0, p4, v4

    if-nez v0, :cond_2a

    .line 525
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showRenameDialog()V
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$300(Lcom/arcsoft/quickview/QuickViewActivity;)V

    goto :goto_2a

    .line 528
    :cond_35
    cmp-long v0, p4, v2

    if-nez v0, :cond_3f

    .line 529
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->PlayVideo()V

    goto :goto_2a

    .line 530
    :cond_3f
    cmp-long v0, p4, v4

    if-nez v0, :cond_2a

    .line 531
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$5;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showRenameDialog()V
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$300(Lcom/arcsoft/quickview/QuickViewActivity;)V

    goto :goto_2a
.end method
