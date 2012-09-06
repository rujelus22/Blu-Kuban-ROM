.class LKa;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LJZ;


# direct methods
.method constructor <init>(LJZ;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, LKa;->a:LJZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    invoke-static {p1}, LKc;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    .line 95
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    check-cast p1, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {p0, p1}, LKa;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    return-void
.end method
