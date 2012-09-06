.class LfU;
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
        "Lcom/google/android/apps/docs/app/DocsPreferencesActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfe;


# direct methods
.method constructor <init>(Lfe;)V
    .registers 2
    .parameter

    .prologue
    .line 1664
    iput-object p1, p0, LfU;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1667
    invoke-static {p1}, Lge;->a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    .line 1669
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1664
    check-cast p1, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-virtual {p0, p1}, LfU;->a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V

    return-void
.end method
