.class public Lrm;
.super Lro;
.source "HtmlStateMachine.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p1, p4, p3, p5}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, p2, p5, v0}, Lro;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V

    .line 26
    return-void
.end method
