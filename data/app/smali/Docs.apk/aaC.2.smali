.class LaaC;
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
        "Lcom/google/android/apps/docs/view/SpeakerNotesContent;",
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
    .line 231
    iput-object p1, p0, LaaC;->a:LaaB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    invoke-static {p1}, LaaM;->a(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)V

    .line 236
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    check-cast p1, Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-virtual {p0, p1}, LaaC;->a(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)V

    return-void
.end method
