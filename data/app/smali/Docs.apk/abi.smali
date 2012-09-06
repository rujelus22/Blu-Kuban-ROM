.class public Labi;
.super Ljava/lang/Object;
.source "SpeakerNotesContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Labi;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Labi;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    iget-object v0, v0, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Labi;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)Labk;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 131
    iget-object v0, p0, Labi;->a:Lcom/google/android/apps/docs/view/SpeakerNotesContent;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/SpeakerNotesContent;->a(Lcom/google/android/apps/docs/view/SpeakerNotesContent;)Labk;

    move-result-object v0

    invoke-interface {v0}, Labk;->q()V

    .line 133
    :cond_18
    return-void
.end method
