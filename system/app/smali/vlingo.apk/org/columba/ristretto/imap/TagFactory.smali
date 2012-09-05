.class public Lorg/columba/ristretto/imap/TagFactory;
.super Ljava/lang/Object;
.source "TagFactory.java"


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    iget v0, p0, Lorg/columba/ristretto/imap/TagFactory;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/columba/ristretto/imap/TagFactory;->counter:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
