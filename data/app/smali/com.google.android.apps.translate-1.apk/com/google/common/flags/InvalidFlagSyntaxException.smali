.class Lcom/google/common/flags/InvalidFlagSyntaxException;
.super Lcom/google/common/flags/FlagException;
.source "InvalidFlagSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x5506bd220ea4L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid flag syntax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/flags/FlagException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
