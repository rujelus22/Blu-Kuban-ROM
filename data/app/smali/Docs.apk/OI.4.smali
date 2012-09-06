.class LOI;
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
        "Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LOH;


# direct methods
.method constructor <init>(LOH;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, LOI;->a:LOH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    invoke-static {p1}, LOK;->a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)V

    .line 101
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    check-cast p1, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;

    invoke-virtual {p0, p1}, LOI;->a(Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;)V

    return-void
.end method
