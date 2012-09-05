.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$23;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$23;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$23;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2584
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$23;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$23;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->closeDialog(Landroid/app/Dialog;)V

    .line 2588
    return-void
.end method
