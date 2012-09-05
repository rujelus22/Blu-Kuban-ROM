.class public Lorg/columba/ristretto/imap/IMAPHeader;
.super Ljava/lang/Object;
.source "IMAPHeader.java"


# instance fields
.field header:Lorg/columba/ristretto/message/Header;

.field size:Ljava/lang/Integer;

.field uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/message/Header;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4
    .parameter "h"
    .parameter "uid"
    .parameter "size"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPHeader;->header:Lorg/columba/ristretto/message/Header;

    .line 66
    iput-object p2, p0, Lorg/columba/ristretto/imap/IMAPHeader;->uid:Ljava/lang/Integer;

    .line 67
    iput-object p3, p0, Lorg/columba/ristretto/imap/IMAPHeader;->size:Ljava/lang/Integer;

    .line 68
    return-void
.end method


# virtual methods
.method public getHeader()Lorg/columba/ristretto/message/Header;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPHeader;->header:Lorg/columba/ristretto/message/Header;

    return-object v0
.end method

.method public getSize()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPHeader;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPHeader;->uid:Ljava/lang/Integer;

    return-object v0
.end method
