.class public abstract Lcom/google/android/youtube/core/player/mp4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final b:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final c:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final d:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final e:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final f:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final g:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final h:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final i:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final j:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final k:Lcom/google/android/youtube/core/player/mp4/s;

.field public static final l:Lcom/google/android/youtube/core/player/mp4/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "moov"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->a:Lcom/google/android/youtube/core/player/mp4/s;

    .line 17
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "trak"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->b:Lcom/google/android/youtube/core/player/mp4/s;

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "mdia"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->c:Lcom/google/android/youtube/core/player/mp4/s;

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "hdlr"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->d:Lcom/google/android/youtube/core/player/mp4/s;

    .line 20
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "minf"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->e:Lcom/google/android/youtube/core/player/mp4/s;

    .line 21
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "stbl"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->f:Lcom/google/android/youtube/core/player/mp4/s;

    .line 22
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "stts"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->g:Lcom/google/android/youtube/core/player/mp4/s;

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "stco"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->h:Lcom/google/android/youtube/core/player/mp4/s;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "stsz"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->i:Lcom/google/android/youtube/core/player/mp4/s;

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "stsc"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->j:Lcom/google/android/youtube/core/player/mp4/s;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "stss"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->k:Lcom/google/android/youtube/core/player/mp4/s;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/s;

    const-string v1, "mdhd"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/b;->l:Lcom/google/android/youtube/core/player/mp4/s;

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Lcom/google/android/youtube/core/player/mp4/a;
    .registers 4
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 57
    new-instance v2, Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;-><init>(I)V

    .line 58
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->a:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->b:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->c:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->e:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->f:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_35
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/c;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/c;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    .line 59
    :goto_3a
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/player/mp4/a;->a(Ljava/io/DataInputStream;)V

    .line 60
    return-object v0

    .line 58
    :cond_3e
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->d:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a

    :cond_4c
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->g:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/p;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/p;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a

    :cond_5a
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->h:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/i;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/i;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a

    :cond_68
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->i:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/n;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/n;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a

    :cond_76
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->j:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/j;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/j;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a

    :cond_84
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->k:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/m;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/m;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a

    :cond_92
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/b;->l:Lcom/google/android/youtube/core/player/mp4/s;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/mp4/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    new-instance v0, Lcom/google/android/youtube/core/player/mp4/d;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/d;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a

    :cond_a0
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/a;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/mp4/a;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    goto :goto_3a
.end method
