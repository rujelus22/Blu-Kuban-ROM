.class public LEB;
.super Ljava/lang/Object;
.source "TrixNativeGridView.java"

# interfaces
.implements LEM;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, LEB;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, LEB;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    iget-object v1, p0, LEB;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)Lws;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;Lws;)V

    .line 279
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 283
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 287
    return-void
.end method
