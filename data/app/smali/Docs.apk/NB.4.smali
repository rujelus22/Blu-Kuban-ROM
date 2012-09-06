.class public LNB;
.super Ljava/lang/Object;
.source "PunchWebViewFactory.java"

# interfaces
.implements LNp;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lld;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->a(Landroid/net/Uri;Lld;Ljava/lang/String;)Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    move-result-object v0

    .line 22
    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewFragment;->p()V

    .line 29
    return-void
.end method
