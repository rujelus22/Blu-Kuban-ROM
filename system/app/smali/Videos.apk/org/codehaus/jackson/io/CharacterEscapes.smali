.class public abstract Lorg/codehaus/jackson/io/CharacterEscapes;
.super Ljava/lang/Object;
.source "CharacterEscapes.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEscapeCodesForAscii()[I
.end method

.method public abstract getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;
.end method
