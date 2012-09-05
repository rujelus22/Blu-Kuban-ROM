.class Lcom/cooliris/media/Gallery$11;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1762
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$1800(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 1763
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z
    invoke-static {v5, v6}, Lcom/cooliris/media/Gallery;->access$1502(Lcom/cooliris/media/Gallery;Z)Z

    .line 1764
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$1800(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/DialogInterface;->dismiss()V

    .line 1765
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #setter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v5, v7}, Lcom/cooliris/media/Gallery;->access$1802(Lcom/cooliris/media/Gallery;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1768
    :cond_1d
    :try_start_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$1900(Lcom/cooliris/media/Gallery;)Lcom/cooliris/app/App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cooliris/app/App;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1769
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$1900(Lcom/cooliris/media/Gallery;)Lcom/cooliris/app/App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cooliris/app/App;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1771
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1772
    .local v3, layout:Landroid/view/View;
    iget-object v6, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    const v5, 0x7f080016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    #setter for: Lcom/cooliris/media/Gallery;->mImgView:Landroid/widget/ImageView;
    invoke-static {v6, v5}, Lcom/cooliris/media/Gallery;->access$2002(Lcom/cooliris/media/Gallery;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1773
    const v5, 0x7f080015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1775
    .local v4, message1:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v6, 0x1

    #setter for: Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z
    invoke-static {v5, v6}, Lcom/cooliris/media/Gallery;->access$1502(Lcom/cooliris/media/Gallery;Z)Z

    .line 1776
    const v5, 0x7f06008e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1777
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1778
    const v5, 0x7f06008b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1780
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$2100(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1781
    const v5, 0x7f06008d

    new-instance v6, Lcom/cooliris/media/Gallery$11$1;

    invoke-direct {v6, p0}, Lcom/cooliris/media/Gallery$11$1;-><init>(Lcom/cooliris/media/Gallery$11;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1792
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v6, 0x0

    #setter for: Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z
    invoke-static {v5, v6}, Lcom/cooliris/media/Gallery;->access$1502(Lcom/cooliris/media/Gallery;Z)Z

    .line 1793
    iget-object v5, p0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mApp:Lcom/cooliris/app/App;
    invoke-static {v5}, Lcom/cooliris/media/Gallery;->access$1900(Lcom/cooliris/media/Gallery;)Lcom/cooliris/app/App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cooliris/app/App;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/cooliris/media/Gallery$11$2;

    invoke-direct {v6, p0, v0}, Lcom/cooliris/media/Gallery$11$2;-><init>(Lcom/cooliris/media/Gallery$11;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a8
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_a8} :catch_a9

    .line 1804
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #layout:Landroid/view/View;
    .end local v4           #message1:Landroid/widget/TextView;
    :goto_a8
    return-void

    .line 1801
    :catch_a9
    move-exception v1

    .line 1802
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_a8
.end method
