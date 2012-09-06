.class LaaF;
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
        "Lcom/google/android/apps/docs/view/TitleBar;",
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
    .line 255
    iput-object p1, p0, LaaF;->a:LaaB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/TitleBar;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    invoke-static {p1}, LaaP;->a(Lcom/google/android/apps/docs/view/TitleBar;)V

    .line 260
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    check-cast p1, Lcom/google/android/apps/docs/view/TitleBar;

    invoke-virtual {p0, p1}, LaaF;->a(Lcom/google/android/apps/docs/view/TitleBar;)V

    return-void
.end method
