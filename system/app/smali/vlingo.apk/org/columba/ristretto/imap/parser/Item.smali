.class Lorg/columba/ristretto/imap/parser/Item;
.super Ljava/lang/Object;
.source "MimeTreeParser.java"


# static fields
.field public static final NIL:I = 0x2

.field public static final NUMBER:I = 0x3

.field public static final PARENTHESIS:I = 0x1

.field public static final STRING:I


# instance fields
.field private type:I

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Lorg/columba/ristretto/imap/parser/Item;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lorg/columba/ristretto/imap/parser/Item;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 527
    iput p1, p0, Lorg/columba/ristretto/imap/parser/Item;->type:I

    .line 528
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 537
    iput-object p1, p0, Lorg/columba/ristretto/imap/parser/Item;->value:Ljava/lang/Object;

    .line 538
    return-void
.end method
