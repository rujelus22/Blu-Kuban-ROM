.class Lcom/sec/android/app/lcdtest/AccImageTest$2;
.super Ljava/lang/Object;
.source "AccImageTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/AccImageTest;->updateGUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/AccImageTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/AccImageTest;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/AccImageTest$2;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest$2;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$200(Lcom/sec/android/app/lcdtest/AccImageTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest$2;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->currentACC:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$100(Lcom/sec/android/app/lcdtest/AccImageTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest$2;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$200(Lcom/sec/android/app/lcdtest/AccImageTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest$2;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$400(Lcom/sec/android/app/lcdtest/AccImageTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest$2;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->currentANG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$300(Lcom/sec/android/app/lcdtest/AccImageTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest$2;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #getter for: Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$400(Lcom/sec/android/app/lcdtest/AccImageTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 99
    return-void
.end method
