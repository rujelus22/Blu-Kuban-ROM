.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, -0x1

    .line 2374
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 2375
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$12(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/app/Dialog;)V

    .line 2376
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2377
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2379
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    .line 2380
    return-void
.end method
