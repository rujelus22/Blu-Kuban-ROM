.class final Lcom/google/android/apps/reader/app/ReaderCleanupService$1;
.super Ljava/lang/Object;
.source "ReaderCleanupService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/reader/app/ReaderCleanupService;->clearWebViewCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/apps/reader/app/ReaderCleanupService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 50
    const/4 v0, 0x1

    .line 51
    :try_start_1
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/ReaderCleanupService$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_c

    .line 57
    :goto_b
    return-void

    .line 52
    :catch_c
    move-exception v0

    .line 55
    const-string v1, "ReaderCleanupService"

    const-string v2, "Failed to clear WebView cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
