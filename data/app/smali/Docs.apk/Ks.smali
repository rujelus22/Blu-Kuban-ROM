.class LKs;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LKr;


# direct methods
.method constructor <init>(LKr;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, LKs;->a:LKr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, LKs;->a:LKr;

    iget-object v0, v0, LKr;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    .line 318
    return-void
.end method
