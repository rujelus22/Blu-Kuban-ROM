.class LaaH;
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
        "Lcom/google/android/apps/docs/view/ThumbnailView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LaaB;


# direct methods
.method constructor <init>(LaaB;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, LaaH;->a:LaaB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/ThumbnailView;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    invoke-static {p1}, LaaO;->a(Lcom/google/android/apps/docs/view/ThumbnailView;)V

    .line 276
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    check-cast p1, Lcom/google/android/apps/docs/view/ThumbnailView;

    invoke-virtual {p0, p1}, LaaH;->a(Lcom/google/android/apps/docs/view/ThumbnailView;)V

    return-void
.end method
