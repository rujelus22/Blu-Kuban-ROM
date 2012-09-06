.class public Lcp;
.super Ljava/lang/Thread;
.source "DocsApplication.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/DocsApplication;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/DocsApplication;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcp;->a:Lcom/google/android/apps/docs/DocsApplication;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcp;->a:Lcom/google/android/apps/docs/DocsApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/DocsApplication;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lcp;->a:Lcom/google/android/apps/docs/DocsApplication;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcp;->a:Lcom/google/android/apps/docs/DocsApplication;

    iget-object v0, v0, Lcom/google/android/apps/docs/DocsApplication;->a:Llv;

    invoke-interface {v0}, Llv;->a()V

    .line 145
    return-void
.end method
