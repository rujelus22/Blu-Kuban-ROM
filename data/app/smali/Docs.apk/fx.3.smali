.class Lfx;
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
        "Lcom/google/android/apps/docs/app/BaseDialogActivity;",
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
    .line 1800
    iput-object p1, p0, Lfx;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/BaseDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1803
    invoke-static {p1}, LfZ;->a(Lcom/google/android/apps/docs/app/BaseDialogActivity;)V

    .line 1805
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1800
    check-cast p1, Lcom/google/android/apps/docs/app/BaseDialogActivity;

    invoke-virtual {p0, p1}, Lfx;->a(Lcom/google/android/apps/docs/app/BaseDialogActivity;)V

    return-void
.end method
