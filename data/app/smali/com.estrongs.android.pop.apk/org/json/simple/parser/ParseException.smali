.class public Lorg/json/simple/parser/ParseException;
.super Ljava/lang/Exception;


# static fields
.field public static final ERROR_UNEXPECTED_CHAR:I = 0x0

.field public static final ERROR_UNEXPECTED_EXCEPTION:I = 0x2

.field public static final ERROR_UNEXPECTED_TOKEN:I = 0x1

.field private static final serialVersionUID:J = -0x6d5dddf5349df2a4L


# instance fields
.field private errorType:I

.field private position:I

.field private unexpectedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lorg/json/simple/parser/ParseException;->position:I

    iput p2, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    iput-object p3, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getErrorType()I
    .registers 2

    iget v0, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lorg/json/simple/parser/ParseException;->position:I

    return v0
.end method

.method public getUnexpectedObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setErrorType(I)V
    .registers 2

    iput p1, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    iput p1, p0, Lorg/json/simple/parser/ParseException;->position:I

    return-void
.end method

.method public setUnexpectedObject(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    packed-switch v1, :pswitch_data_74

    const-string v1, "Unkown error at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_20
    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :pswitch_3e
    const-string v1, "Unexpected token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :pswitch_5c
    const-string v1, "Unexpected exception at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1b

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_20
        :pswitch_3e
        :pswitch_5c
    .end packed-switch
.end method
