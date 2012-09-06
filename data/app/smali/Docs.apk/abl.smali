.class public Labl;
.super Ljava/lang/Object;
.source "SpeakerNotesPresence.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Labl;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Labl;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    iget-object v0, v0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Labl;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)Labn;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 101
    iget-object v0, p0, Labl;->a:Lcom/google/android/apps/docs/view/SpeakerNotesPresence;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)Labn;

    move-result-object v0

    invoke-interface {v0}, Labn;->p()V

    .line 103
    :cond_18
    return-void
.end method
