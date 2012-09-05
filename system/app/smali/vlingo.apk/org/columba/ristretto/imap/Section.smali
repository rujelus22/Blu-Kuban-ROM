.class public Lorg/columba/ristretto/imap/Section;
.super Ljava/lang/Object;
.source "Section.java"


# instance fields
.field private params:[Ljava/lang/Object;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .parameter "type"
    .parameter "params"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/columba/ristretto/imap/Section;->type:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/columba/ristretto/imap/Section;->params:[Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public getParams()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/columba/ristretto/imap/Section;->params:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/columba/ristretto/imap/Section;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setParams([Ljava/lang/Object;)V
    .registers 2
    .parameter "params"

    .prologue
    .line 69
    iput-object p1, p0, Lorg/columba/ristretto/imap/Section;->params:[Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/columba/ristretto/imap/Section;->type:Ljava/lang/String;

    .line 82
    return-void
.end method
