.class Lqj;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lqi;


# direct methods
.method constructor <init>(Lqi;)V
    .registers 2
    .parameter

    .prologue
    .line 1710
    iput-object p1, p0, Lqj;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1713
    invoke-static {p1}, LqL;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V

    .line 1715
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1710
    check-cast p1, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {p0, p1}, Lqj;->a(Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;)V

    return-void
.end method
