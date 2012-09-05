.class Lcom/google/android/apps/plus/fragments/StreamListFragment$1;
.super Ljava/lang/Object;
.source "StreamListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/StreamListFragment;->prefetchContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1303
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->fetchContent(Z)V

    .line 1305
    :cond_e
    return-void
.end method
