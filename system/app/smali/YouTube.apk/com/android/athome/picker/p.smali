.class public final Lcom/android/athome/picker/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:Z

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/athome/picker/MediaOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/p;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/p;->b:I

    .line 102
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/p;->c:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/p;->d:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/p;->e:F

    .line 105
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/athome/picker/p;->f:Z

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/p;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/athome/picker/p;)I
    .registers 2
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/android/athome/picker/p;->b:I

    return v0
.end method

.method static synthetic c(Lcom/android/athome/picker/p;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/athome/picker/p;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/athome/picker/p;)F
    .registers 2
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/android/athome/picker/p;->e:F

    return v0
.end method

.method static synthetic f(Lcom/android/athome/picker/p;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/athome/picker/p;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/android/athome/picker/p;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/athome/picker/p;->g:Ljava/util/List;

    return-object v0
.end method
