.class public Lcom/google/common/flags/IllegalFlagStateException;
.super Ljava/lang/IllegalStateException;
.source "IllegalFlagStateException.java"


# static fields
.field private static final serialVersionUID:J = 0x16ecaa2512L


# instance fields
.field flagName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/flags/IllegalFlagStateException;->flagName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to set flag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flags/IllegalFlagStateException;->flagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after it was read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
