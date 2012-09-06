.class Lfg;
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
        "Lcom/google/android/apps/docs/app/RetriesExceededActivity;",
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
    .line 1672
    iput-object p1, p0, Lfg;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1675
    invoke-static {p1}, Lgp;->a(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V

    .line 1677
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1672
    check-cast p1, Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-virtual {p0, p1}, Lfg;->a(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V

    return-void
.end method
