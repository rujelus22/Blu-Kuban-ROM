.class Lcs;
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
        "Lcom/google/android/apps/docs/DocsApplication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcq;


# direct methods
.method constructor <init>(Lcq;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcs;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/DocsApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 366
    invoke-static {p1}, LcA;->a(Lcom/google/android/apps/docs/DocsApplication;)V

    .line 368
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    check-cast p1, Lcom/google/android/apps/docs/DocsApplication;

    invoke-virtual {p0, p1}, Lcs;->a(Lcom/google/android/apps/docs/DocsApplication;)V

    return-void
.end method
