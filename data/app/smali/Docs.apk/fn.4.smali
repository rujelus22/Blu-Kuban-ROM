.class Lfn;
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
        "Lcom/google/android/apps/docs/app/AccountsActivity;",
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
    .line 1728
    iput-object p1, p0, Lfn;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/AccountsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1731
    invoke-static {p1}, LfW;->a(Lcom/google/android/apps/docs/app/AccountsActivity;)V

    .line 1733
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1728
    check-cast p1, Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-virtual {p0, p1}, Lfn;->a(Lcom/google/android/apps/docs/app/AccountsActivity;)V

    return-void
.end method
