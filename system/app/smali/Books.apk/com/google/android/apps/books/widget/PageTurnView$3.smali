.class Lcom/google/android/apps/books/widget/PageTurnView$3;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$3;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$3;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1500(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 1578
    return-void
.end method
