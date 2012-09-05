.class Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;->this$1:Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;

    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;->this$1:Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;->val$messageId:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->onUiThread(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->access$300(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;I)V

    .line 682
    return-void
.end method
