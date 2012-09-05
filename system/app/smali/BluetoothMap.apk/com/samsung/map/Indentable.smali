.class abstract Lcom/samsung/map/Indentable;
.super Ljava/lang/Object;
.source "bMessageBuilder.java"


# instance fields
.field protected in:Ljava/lang/String;

.field protected level:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/map/Indentable;->level:I

    return-void
.end method
