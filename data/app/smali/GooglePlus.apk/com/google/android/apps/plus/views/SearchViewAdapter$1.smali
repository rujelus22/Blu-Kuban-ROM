.class Lcom/google/android/apps/plus/views/SearchViewAdapter$1;
.super Ljava/lang/Object;
.source "SearchViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/SearchViewAdapter;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/SearchViewAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/SearchViewAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter$1;->this$0:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter$1;->this$0:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter$1;->this$0:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    #getter for: Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->access$000(Lcom/google/android/apps/plus/views/SearchViewAdapter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 76
    return-void
.end method
