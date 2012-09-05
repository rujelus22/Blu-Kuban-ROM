.class public Lcom/vlingo/client/safereader/email/Email;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vlingo/client/safereader/email/Email;",
        ">;"
    }
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public date:J

.field public from:Ljava/lang/String;

.field public senderAddress:Ljava/lang/String;

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/vlingo/client/safereader/email/Email;)I
    .registers 6
    .parameter "another"

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/vlingo/client/safereader/email/Email;->date:J

    iget-wide v2, p1, Lcom/vlingo/client/safereader/email/Email;->date:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 18
    const/4 v0, 0x0

    .line 22
    :goto_9
    return v0

    .line 19
    :cond_a
    iget-wide v0, p0, Lcom/vlingo/client/safereader/email/Email;->date:J

    iget-wide v2, p1, Lcom/vlingo/client/safereader/email/Email;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 20
    const/4 v0, 0x1

    goto :goto_9

    .line 22
    :cond_14
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 8
    check-cast p1, Lcom/vlingo/client/safereader/email/Email;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/safereader/email/Email;->compareTo(Lcom/vlingo/client/safereader/email/Email;)I

    move-result v0

    return v0
.end method
