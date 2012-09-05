.class Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$1;
.super Ljava/lang/Object;
.source "NandFlashHeaderRead.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;

    #getter for: Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->mBackButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->access$000(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$1;->this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;

    invoke-virtual {v0}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->finish()V

    .line 84
    :cond_d
    return-void
.end method
