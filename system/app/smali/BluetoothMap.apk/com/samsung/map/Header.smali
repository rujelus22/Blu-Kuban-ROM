.class Lcom/samsung/map/Header;
.super Ljava/lang/Object;
.source "bMessageBuilder.java"


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/samsung/map/Header;->name:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/samsung/map/Header;->value:Ljava/lang/String;

    .line 100
    return-void
.end method
