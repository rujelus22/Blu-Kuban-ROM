.class public Lorg/columba/ristretto/imap/ListInfo;
.super Ljava/lang/Object;
.source "ListInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final MARKED:I = 0x4

.field public static final NOINFERIORS:I = 0x1

.field public static final NOSELECT:I = 0x2

.field public static final UNMARKED:I = 0x8


# instance fields
.field protected delimiter:Ljava/lang/String;

.field protected mailboxName:Ljava/lang/String;

.field protected parameters:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "delimiter"
    .parameter "parameters"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/columba/ristretto/imap/ListInfo;->mailboxName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lorg/columba/ristretto/imap/ListInfo;->delimiter:Ljava/lang/String;

    .line 81
    iput p3, p0, Lorg/columba/ristretto/imap/ListInfo;->parameters:I

    .line 82
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "arg0"

    .prologue
    .line 126
    iget-object v0, p0, Lorg/columba/ristretto/imap/ListInfo;->mailboxName:Ljava/lang/String;

    check-cast p1, Lorg/columba/ristretto/imap/ListInfo;

    .end local p1
    invoke-virtual {p1}, Lorg/columba/ristretto/imap/ListInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/columba/ristretto/imap/ListInfo;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/columba/ristretto/imap/ListInfo;->mailboxName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Z
    .registers 3
    .parameter "parameter"

    .prologue
    .line 119
    iget v0, p0, Lorg/columba/ristretto/imap/ListInfo;->parameters:I

    and-int/2addr v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSelectable()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/imap/ListInfo;->getParameter(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
