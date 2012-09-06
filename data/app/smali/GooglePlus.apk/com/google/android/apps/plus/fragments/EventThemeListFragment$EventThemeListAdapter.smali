.class Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "EventThemeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EventThemeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventThemeListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EventThemeListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;->this$0:Lcom/google/android/apps/plus/fragments/EventThemeListFragment;

    .line 223
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 224
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 243
    const v4, 0x7f0900cd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 244
    .local v3, progressBar:Landroid/widget/ProgressBar;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    const v4, 0x7f0900cc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/EventThemeView;

    .line 248
    .local v1, imageView:Lcom/google/android/apps/plus/views/EventThemeView;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;

    .line 249
    .local v2, listener:Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;
    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/EventThemeView;->setOnImageLoadedListener(Lcom/google/android/apps/plus/views/EsImageView$OnImageLoadedListener;)V

    .line 251
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, imageUrl:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/EventThemeView;->setImageUrl(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 228
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 232
    .local v0, progressBar:Landroid/widget/ProgressBar;
    new-instance v2, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    return-object v1
.end method
