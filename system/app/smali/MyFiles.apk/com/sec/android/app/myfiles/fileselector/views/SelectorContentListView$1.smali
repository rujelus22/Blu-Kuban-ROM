.class Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView$1;
.super Ljava/lang/Object;
.source "SelectorContentListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->setFirstSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/SelectorContentListView;->setSelection(I)V

    .line 101
    return-void
.end method
