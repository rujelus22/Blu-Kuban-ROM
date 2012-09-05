.class Lcom/google/android/apps/plus/views/SearchViewAdapterV11$1;
.super Ljava/lang/Object;
.source "SearchViewAdapterV11.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/SearchViewAdapterV11;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/SearchViewAdapterV11;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11$1;->this$0:Lcom/google/android/apps/plus/views/SearchViewAdapterV11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11$1;->this$0:Lcom/google/android/apps/plus/views/SearchViewAdapterV11;

    #getter for: Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->access$000(Lcom/google/android/apps/plus/views/SearchViewAdapterV11;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->show(Landroid/view/View;)V

    .line 131
    return-void
.end method
