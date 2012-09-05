.class public Landroid/webkit/WebView$SingleCursorTimerTask;
.super Ljava/util/TimerTask;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SingleCursorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method protected constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 5045
    iput-object p1, p0, Landroid/webkit/WebView$SingleCursorTimerTask;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5048
    iget-object v0, p0, Landroid/webkit/WebView$SingleCursorTimerTask;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 5049
    return-void
.end method
