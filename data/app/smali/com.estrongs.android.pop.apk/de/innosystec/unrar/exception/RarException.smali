.class public Lde/innosystec/unrar/exception/RarException;
.super Ljava/lang/Exception;


# instance fields
.field private type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V
    .registers 3

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/exception/RarException;)V
    .registers 3

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lde/innosystec/unrar/exception/RarException;->getType()Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    sget-object v0, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->unkownError:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-virtual {v0}, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->unkownError:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    iput-object v0, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method


# virtual methods
.method public getType()Lde/innosystec/unrar/exception/RarException$RarExceptionType;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-object v0
.end method

.method public setType(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V
    .registers 2

    iput-object p1, p0, Lde/innosystec/unrar/exception/RarException;->type:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    return-void
.end method
