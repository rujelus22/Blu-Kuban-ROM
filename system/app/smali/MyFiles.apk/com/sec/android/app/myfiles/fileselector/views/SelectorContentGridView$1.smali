.class Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView$1;
.super Ljava/lang/Object;
.source "SelectorContentGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setFirstSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentGridView;->setSelection(I)V

    .line 104
    return-void
.end method
