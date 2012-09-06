.class LKz;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LKy;


# direct methods
.method constructor <init>(LKy;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, LKz;->a:LKy;

    iput p2, p0, LKz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, LKz;->a:LKy;

    iget-object v0, v0, LKy;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)LKF;

    move-result-object v0

    iget v1, p0, LKz;->a:I

    invoke-interface {v0, v1}, LKF;->a(I)V

    .line 122
    return-void
.end method
