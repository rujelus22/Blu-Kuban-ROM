.class Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter$1;
.super Ljava/lang/Object;
.source "EventThemeListFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter$1;->this$1:Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Lcom/google/android/apps/plus/views/EsImageView;)V
    .registers 4
    .parameter "imageView"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    return-void
.end method
