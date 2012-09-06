.class LfM;
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
        "Lcom/google/android/apps/docs/app/BaseDialogFragment;",
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
    .line 1624
    iput-object p1, p0, LfM;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1627
    invoke-static {p1}, Lga;->a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V

    .line 1629
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1624
    check-cast p1, Lcom/google/android/apps/docs/app/BaseDialogFragment;

    invoke-virtual {p0, p1}, LfM;->a(Lcom/google/android/apps/docs/app/BaseDialogFragment;)V

    return-void
.end method
