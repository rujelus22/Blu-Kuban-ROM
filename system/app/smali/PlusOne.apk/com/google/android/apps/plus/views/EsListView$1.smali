.class Lcom/google/android/apps/plus/views/EsListView$1;
.super Landroid/database/DataSetObserver;
.source "EsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/EsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/EsListView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/EsListView;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EsListView$1;->this$0:Lcom/google/android/apps/plus/views/EsListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsListView$1;->this$0:Lcom/google/android/apps/plus/views/EsListView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EsListView;->adjustFastScroll()V

    .line 54
    return-void
.end method
