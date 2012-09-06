.class public Lhj;
.super Ljava/lang/Object;
.source "NewMainProxyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lhj;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lhj;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->finish()V

    .line 267
    return-void
.end method
