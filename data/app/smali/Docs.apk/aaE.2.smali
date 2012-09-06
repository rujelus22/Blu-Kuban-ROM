.class LaaE;
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
        "Lcom/google/android/apps/docs/view/SpeakerNotesPresence;",
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
    .line 247
    iput-object p1, p0, LaaE;->a:LaaB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    invoke-static {p1}, LaaN;->a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V

    .line 252
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    check-cast p1, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-virtual {p0, p1}, LaaE;->a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V

    return-void
.end method
