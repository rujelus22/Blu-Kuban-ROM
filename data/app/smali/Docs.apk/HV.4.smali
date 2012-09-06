.class public LHV;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic a:Lcom/google/android/apps/docs/fragment/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/WebViewFragment;Landroid/webkit/WebView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, LHV;->a:Lcom/google/android/apps/docs/fragment/WebViewFragment;

    iput-object p2, p0, LHV;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, LHV;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 82
    return-void
.end method
