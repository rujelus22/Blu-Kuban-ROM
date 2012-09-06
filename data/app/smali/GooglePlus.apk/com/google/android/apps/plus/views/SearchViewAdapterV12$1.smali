.class Lcom/google/android/apps/plus/views/SearchViewAdapterV12$1;
.super Ljava/lang/Object;
.source "SearchViewAdapterV12.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/SearchViewAdapterV12;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/SearchViewAdapterV12;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/SearchViewAdapterV12;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12$1;->this$0:Lcom/google/android/apps/plus/views/SearchViewAdapterV12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12$1;->this$0:Lcom/google/android/apps/plus/views/SearchViewAdapterV12;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->show(Landroid/view/View;)V

    .line 44
    return-void
.end method
