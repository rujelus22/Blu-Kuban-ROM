.class Lcom/google/android/apps/plus/views/AlbumGridItemView$1;
.super Ljava/lang/Object;
.source "AlbumGridItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/AlbumGridItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/AlbumGridItemView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/AlbumGridItemView;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView$1;->this$0:Lcom/google/android/apps/plus/views/AlbumGridItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AlbumGridItemView$1;->this$0:Lcom/google/android/apps/plus/views/AlbumGridItemView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/views/AlbumGridItemView;->mFadeAnimEnabled:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/AlbumGridItemView;->access$002(Lcom/google/android/apps/plus/views/AlbumGridItemView;Z)Z

    .line 80
    return-void
.end method
