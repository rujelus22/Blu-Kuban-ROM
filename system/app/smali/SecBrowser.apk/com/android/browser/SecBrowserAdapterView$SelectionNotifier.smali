.class Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "SecBrowserAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecBrowserAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecBrowserAdapterView;


# direct methods
.method private constructor <init>(Lcom/android/browser/SecBrowserAdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 839
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;,"Lcom/android/browser/SecBrowserAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/SecBrowserAdapterView;Lcom/android/browser/SecBrowserAdapterView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 839
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;,"Lcom/android/browser/SecBrowserAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;-><init>(Lcom/android/browser/SecBrowserAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 841
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;,"Lcom/android/browser/SecBrowserAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget-boolean v0, v0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 845
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 846
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0, p0}, Lcom/android/browser/SecBrowserAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 851
    :cond_13
    :goto_13
    return-void

    .line 849
    :cond_14
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$SelectionNotifier;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    #calls: Lcom/android/browser/SecBrowserAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/android/browser/SecBrowserAdapterView;->access$200(Lcom/android/browser/SecBrowserAdapterView;)V

    goto :goto_13
.end method
