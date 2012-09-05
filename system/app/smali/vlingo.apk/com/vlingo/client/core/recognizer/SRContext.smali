.class public Lcom/vlingo/client/core/recognizer/SRContext;
.super Ljava/lang/Object;
.source "SRContext.java"


# static fields
.field private static volatile SRContextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile curText:Ljava/lang/String;

.field protected volatile cursorPos:I

.field public volatile customFlag:Z

.field protected volatile fieldContext:Ljava/lang/String;

.field protected volatile fieldID:Ljava/lang/String;

.field protected volatile fieldType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->curText:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldType:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldID:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->cursorPos:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fieldID"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldID:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->curText:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldType:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->cursorPos:I

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "fieldID"
    .parameter "fieldType"
    .parameter "fieldContext"
    .parameter "curText"
    .parameter "cursorPos"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldID:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldType:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldContext:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/vlingo/client/core/recognizer/SRContext;->curText:Ljava/lang/String;

    .line 87
    iput p5, p0, Lcom/vlingo/client/core/recognizer/SRContext;->cursorPos:I

    .line 88
    return-void
.end method

.method public static newInstance()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 4

    .prologue
    .line 52
    sget-object v1, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    if-eqz v1, :cond_73

    .line 54
    :try_start_4
    sget-object v1, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/recognizer/SRContext;
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_3c

    .line 63
    :goto_c
    return-object v1

    .line 55
    :catch_d
    move-exception v0

    .line 56
    .local v0, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantiationException creating new instance: Class must contain empty constructor to avoid this exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_3c
    move-exception v0

    .line 59
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException creating new instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :cond_73
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SRContext;-><init>()V

    goto :goto_c
.end method

.method public static setSRContextClass(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, contextClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SRContextClass has already been set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_c
    if-nez p0, :cond_16

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contextClass must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_16
    const-class v0, Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 43
    sput-object p0, Lcom/vlingo/client/core/recognizer/SRContext;->SRContextClass:Ljava/lang/Class;

    .line 46
    return-void

    .line 45
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Assignment of contextClass failed. contextClass must be to be subclass of SRContext."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurrentText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->curText:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 112
    const-string v0, ""

    .line 113
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->curText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getCursorPosition()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->curText:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 118
    const-string v0, "0"

    .line 119
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->cursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getCursorPositionInt()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->cursorPos:I

    return v0
.end method

.method public getCustomParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 127
    const-string v0, ""

    return-object v0
.end method

.method public getFieldContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldContext:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 106
    const-string v0, ""

    .line 107
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldContext:Ljava/lang/String;

    goto :goto_6
.end method

.method public getFieldID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldID:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldType:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 100
    const-string v0, ""

    .line 101
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldType:Ljava/lang/String;

    goto :goto_6
.end method

.method public setCurText(Ljava/lang/String;)V
    .registers 2
    .parameter "curText"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->curText:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCursorPos(I)V
    .registers 2
    .parameter "cursorPos"

    .prologue
    .line 151
    iput p1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->cursorPos:I

    .line 152
    return-void
.end method

.method public setFieldContext(Ljava/lang/String;)V
    .registers 2
    .parameter "fieldContext"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldContext:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setFieldID(Ljava/lang/String;)V
    .registers 2
    .parameter "fieldID"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldID:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setFieldType(Ljava/lang/String;)V
    .registers 2
    .parameter "fieldType"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRContext;->fieldType:Ljava/lang/String;

    .line 140
    return-void
.end method
