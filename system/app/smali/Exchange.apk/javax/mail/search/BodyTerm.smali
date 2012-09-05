.class public final Ljavax/mail/search/BodyTerm;
.super Ljavax/mail/search/StringTerm;
.source "BodyTerm.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 66
    .line 67
    :try_start_1
    invoke-interface {p1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "text/"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 70
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v0

    .line 85
    :goto_1b
    return v0

    .line 72
    :cond_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "multipart/mixed"

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 74
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Multipart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v7

    .line 75
    invoke-interface {v7}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "text/"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 78
    invoke-interface {v7}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_4f

    move-result v0

    goto :goto_1b

    .line 82
    :catch_4f
    move-exception v0

    :cond_50
    move v0, v6

    .line 85
    goto :goto_1b
.end method
