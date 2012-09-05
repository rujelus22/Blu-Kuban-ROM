.class public Lcom/samsung/map/parser/ParsingException;
.super Ljava/lang/Exception;
.source "ParsingException.java"


# instance fields
.field public errorExtra:Ljava/lang/String;

.field public ps:Lcom/samsung/map/parser/ParsingStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V
    .registers 3
    .parameter "ps"
    .parameter "extra"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/map/parser/ParsingException;->ps:Lcom/samsung/map/parser/ParsingStatus;

    .line 42
    iput-object p2, p0, Lcom/samsung/map/parser/ParsingException;->errorExtra:Ljava/lang/String;

    .line 43
    return-void
.end method
