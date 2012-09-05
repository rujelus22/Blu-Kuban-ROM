.class public Lcom/shazam/sig/SIGExtractor;
.super Ljava/lang/Object;
.source "SIGExtractor.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "sig"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native sigDestroy()I
.end method

.method public native sigFlow([BI)I
.end method

.method public native sigGet()[B
.end method

.method public native sigInit(IIII)I
.end method
