.class Lcom/google/android/finsky/layout/LayoutSwitcher$2;
.super Ljava/lang/Object;
.source "LayoutSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LayoutSwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher$2;->this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher$2;->this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;

    #getter for: Lcom/google/android/finsky/layout/LayoutSwitcher;->mPendingLoad:Z
    invoke-static {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->access$100(Lcom/google/android/finsky/layout/LayoutSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher$2;->this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    .line 186
    :cond_d
    return-void
.end method
