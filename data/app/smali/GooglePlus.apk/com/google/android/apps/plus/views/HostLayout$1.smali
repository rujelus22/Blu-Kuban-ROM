.class Lcom/google/android/apps/plus/views/HostLayout$1;
.super Ljava/lang/Object;
.source "HostLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/HostLayout;->showNavigationBarDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/HostLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/HostLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostLayout$1;->this$0:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout$1;->this$0:Lcom/google/android/apps/plus/views/HostLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostLayout;->showNavigationBar()V

    .line 189
    return-void
.end method
