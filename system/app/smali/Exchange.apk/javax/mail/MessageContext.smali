.class public Ljavax/mail/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field private part:Ljavax/mail/Part;


# direct methods
.method public constructor <init>(Ljavax/mail/Part;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    .line 50
    return-void
.end method


# virtual methods
.method public getMessage()Ljavax/mail/Message;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    .line 66
    :goto_3
    if-eqz v0, :cond_1d

    .line 68
    instance-of v2, v0, Ljavax/mail/Message;

    if-eqz v2, :cond_c

    .line 70
    check-cast v0, Ljavax/mail/Message;

    .line 83
    :goto_b
    return-object v0

    .line 72
    :cond_c
    instance-of v2, v0, Ljavax/mail/BodyPart;

    if-eqz v2, :cond_1b

    .line 74
    check-cast v0, Ljavax/mail/BodyPart;

    .line 75
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getParent()Ljavax/mail/Multipart;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljavax/mail/Multipart;->getParent()Ljavax/mail/Part;

    move-result-object v0

    goto :goto_3

    :cond_1b
    move-object v0, v1

    .line 80
    goto :goto_3

    :cond_1d
    move-object v0, v1

    .line 83
    goto :goto_b
.end method

.method public getPart()Ljavax/mail/Part;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-object v0
.end method

.method public getSession()Ljavax/mail/Session;
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Ljavax/mail/MessageContext;->getMessage()Ljavax/mail/Message;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_9

    .line 94
    iget-object v0, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 96
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
