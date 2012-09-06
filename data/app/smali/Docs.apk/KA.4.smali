.class LKA;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LKy;

.field final synthetic b:I


# direct methods
.method constructor <init>(LKy;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, LKA;->a:LKy;

    iput p2, p0, LKA;->a:I

    iput p3, p0, LKA;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, LKA;->a:LKy;

    iget-object v0, v0, LKy;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)LKF;

    move-result-object v0

    iget v1, p0, LKA;->a:I

    iget v2, p0, LKA;->b:I

    invoke-interface {v0, v1, v2}, LKF;->a(II)V

    .line 140
    return-void
.end method
