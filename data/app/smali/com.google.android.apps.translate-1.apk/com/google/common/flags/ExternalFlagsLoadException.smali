.class public Lcom/google/common/flags/ExternalFlagsLoadException;
.super Lcom/google/common/flags/FlagException;
.source "ExternalFlagsLoadException.java"


# static fields
.field private static final serialVersionUID:J = 0x5506bd220ea5L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "arg"

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to open/read external flags specified in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/flags/FlagException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
