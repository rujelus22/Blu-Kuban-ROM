.class Lfl;
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
        "Lcom/google/android/apps/docs/app/AccountListeningActivity;",
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
    .line 1712
    iput-object p1, p0, Lfl;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/AccountListeningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1715
    invoke-static {p1}, LfV;->a(Lcom/google/android/apps/docs/app/AccountListeningActivity;)V

    .line 1717
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1712
    check-cast p1, Lcom/google/android/apps/docs/app/AccountListeningActivity;

    invoke-virtual {p0, p1}, Lfl;->a(Lcom/google/android/apps/docs/app/AccountListeningActivity;)V

    return-void
.end method
