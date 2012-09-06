.class LaaD;
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
        "Lcom/google/android/apps/docs/view/PinWarningDialogFragment;",
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
    .line 239
    iput-object p1, p0, LaaD;->a:LaaB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/PinWarningDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    invoke-static {p1}, LaaL;->a(Lcom/google/android/apps/docs/view/PinWarningDialogFragment;)V

    .line 244
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    check-cast p1, Lcom/google/android/apps/docs/view/PinWarningDialogFragment;

    invoke-virtual {p0, p1}, LaaD;->a(Lcom/google/android/apps/docs/view/PinWarningDialogFragment;)V

    return-void
.end method
