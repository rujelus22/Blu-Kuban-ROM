.class Lcom/sec/android/app/lcdtest/CabcTest$1;
.super Ljava/lang/Object;
.source "CabcTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/CabcTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/CabcTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/CabcTest;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/CabcTest$1;->this$0:Lcom/sec/android/app/lcdtest/CabcTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 71
    const-string v0, "Cabc TEST"

    const-string v1, "Button Clicked "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 83
    :goto_e
    return-void

    .line 75
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/CabcTest$1;->this$0:Lcom/sec/android/app/lcdtest/CabcTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->setCabcValue(I)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/CabcTest$1;->this$0:Lcom/sec/android/app/lcdtest/CabcTest;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CabcTest$1;->this$0:Lcom/sec/android/app/lcdtest/CabcTest;

    invoke-virtual {v1}, Lcom/sec/android/app/lcdtest/CabcTest;->getCabcValue()I

    move-result v1

    #calls: Lcom/sec/android/app/lcdtest/CabcTest;->setSysfsFile(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->access$000(Lcom/sec/android/app/lcdtest/CabcTest;I)V

    goto :goto_e

    .line 79
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/CabcTest$1;->this$0:Lcom/sec/android/app/lcdtest/CabcTest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->setCabcValue(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/CabcTest$1;->this$0:Lcom/sec/android/app/lcdtest/CabcTest;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CabcTest$1;->this$0:Lcom/sec/android/app/lcdtest/CabcTest;

    invoke-virtual {v1}, Lcom/sec/android/app/lcdtest/CabcTest;->getCabcValue()I

    move-result v1

    #calls: Lcom/sec/android/app/lcdtest/CabcTest;->setSysfsFile(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->access$000(Lcom/sec/android/app/lcdtest/CabcTest;I)V

    goto :goto_e

    .line 73
    nop

    :pswitch_data_34
    .packed-switch 0x7f080012
        :pswitch_f
        :pswitch_21
    .end packed-switch
.end method
