.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1993
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1994
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 1995
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->changeStep(I)V

    .line 1996
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1997
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1998
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelSizeBtn(I)V
    invoke-static {v0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$44(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2000
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getActionType()I

    move-result v0

    if-nez v0, :cond_46

    .line 2001
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setActionType(I)V

    .line 2002
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x2

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$42(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2004
    :cond_46
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->inst:Landroid/app/Instrumentation;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$15(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 2005
    return-void
.end method
