.class public abstract Lcom/google/android/youtube/core/player/mp4/AtomFactory;
.super Ljava/lang/Object;
.source "AtomFactory.java"


# static fields
.field public static final HDLR_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final MDHD_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final MDIA_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final MINF_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final MOOV_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final STBL_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final STCO_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final STSC_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final STSS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final STSZ_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final STTS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

.field public static final TRAK_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "moov"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MOOV_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 17
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "trak"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->TRAK_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "mdia"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDIA_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "hdlr"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->HDLR_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 20
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "minf"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MINF_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 21
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "stbl"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STBL_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 22
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "stts"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STTS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "stco"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STCO_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "stsz"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSZ_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "stsc"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSC_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "stss"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Tag;

    const-string v1, "mdhd"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDHD_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAtom(ILcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;
    .registers 3
    .parameter "size"
    .parameter "tag"

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MOOV_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->TRAK_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDIA_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MINF_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STBL_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 35
    :cond_28
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    .line 51
    :goto_2d
    return-object v0

    .line 36
    :cond_2e
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->HDLR_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/HdlrAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d

    .line 38
    :cond_3c
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STTS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 39
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/SttsAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/SttsAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d

    .line 40
    :cond_4a
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STCO_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 41
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/StcoAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/StcoAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d

    .line 42
    :cond_58
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSZ_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 43
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/StszAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/StszAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d

    .line 44
    :cond_66
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSC_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 45
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/StscAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/StscAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d

    .line 46
    :cond_74
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->STSS_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 47
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/StssAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/StssAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d

    .line 48
    :cond_82
    sget-object v0, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->MDHD_TAG:Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 49
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/MdhdAtom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/MdhdAtom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d

    .line 51
    :cond_90
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Atom;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/mp4/Atom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    goto :goto_2d
.end method

.method public static readNextAtom(Ljava/io/DataInputStream;)Lcom/google/android/youtube/core/player/mp4/Atom;
    .registers 5
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 57
    .local v1, size:I
    new-instance v2, Lcom/google/android/youtube/core/player/mp4/Tag;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/player/mp4/Tag;-><init>(I)V

    .line 58
    .local v2, tag:Lcom/google/android/youtube/core/player/mp4/Tag;
    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->newAtom(ILcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v0

    .line 59
    .local v0, atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/player/mp4/Atom;->readFrom(Ljava/io/DataInputStream;)V

    .line 60
    return-object v0
.end method
