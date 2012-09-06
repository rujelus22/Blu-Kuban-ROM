.class public Lcom/google/android/apps/docs/view/SpeakerNotesPresence;
.super Landroid/widget/LinearLayout;
.source "SpeakerNotesPresence.java"


# instance fields
.field private a:LMA;

.field public a:LNn;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Labn;

.field public final a:Landroid/content/Context;

.field private a:Landroid/widget/ImageView;

.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-object p1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a()V

    .line 72
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)Labn;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Labn;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/content/Context;

    sget v1, LcU;->speaker_note_presence:I

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    sget v0, LcS;->notes_present:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/widget/ImageView;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/widget/ImageView;

    new-instance v1, Labl;

    invoke-direct {v1, p0}, Labl;-><init>(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->c()V

    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->b()V

    .line 108
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V
    .registers 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->b()V

    return-void
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 154
    const-string v0, "SpeakerNotesPresence"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setAreSpeakerNotesPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean p1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Z

    .line 156
    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    :goto_21
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    return-void

    .line 156
    :cond_25
    const/16 v0, 0x8

    goto :goto_21
.end method

.method private b()V
    .registers 5

    .prologue
    .line 111
    const-string v0, "SpeakerNotesPresence"

    const-string v1, "in update"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LNn;

    invoke-interface {v0}, LNn;->c()I

    move-result v0

    if-eqz v0, :cond_39

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LNn;

    invoke-interface {v0}, LNn;->d()I

    move-result v0

    .line 114
    const-string v1, "SpeakerNotesPresence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In SpeakerNotesPresence.update() slideIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LNn;

    invoke-interface {v1, v0}, LNn;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_36
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a(Z)V

    .line 117
    :cond_39
    return-void

    .line 115
    :cond_3a
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private c()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LMA;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 128
    new-instance v0, Labm;

    invoke-direct {v0, p0}, Labm;-><init>(Lcom/google/android/apps/docs/view/SpeakerNotesPresence;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LMA;

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LNn;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LMA;

    invoke-interface {v0, v1}, LNn;->a(LNo;)V

    .line 146
    return-void

    .line 127
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private d()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LMA;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LNn;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:LMA;

    invoke-interface {v0, v1}, LNn;->b(LNo;)V

    .line 151
    return-void

    .line 149
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 122
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->d()V

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    return-void
.end method

.method public setListener(Labn;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/docs/view/SpeakerNotesPresence;->a:Labn;

    .line 86
    return-void
.end method
