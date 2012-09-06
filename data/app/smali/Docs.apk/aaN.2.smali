.class public LaaN;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    invoke-static {}, LNd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LaaB;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNn;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LNn;

    .line 101
    return-void
.end method
