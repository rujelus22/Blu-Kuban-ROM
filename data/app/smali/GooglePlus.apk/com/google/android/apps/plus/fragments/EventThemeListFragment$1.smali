.class Lcom/google/android/apps/plus/fragments/EventThemeListFragment$1;
.super Ljava/lang/Object;
.source "EventThemeListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EventThemeListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 116
    const v1, 0x7f0900cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/EventThemeView;

    .line 117
    .local v0, imageView:Lcom/google/android/apps/plus/views/EventThemeView;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventThemeView;->onRecycle()V

    .line 118
    return-void
.end method
