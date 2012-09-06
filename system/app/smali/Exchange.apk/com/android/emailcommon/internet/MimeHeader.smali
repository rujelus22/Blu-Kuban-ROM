.class public Lcom/android/emailcommon/internet/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/MimeHeader$Field;
    }
.end annotation


# static fields
.field private static final WRITE_OMIT_FIELDS:[Ljava/lang/String;


# instance fields
.field protected final mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/internet/MimeHeader$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "X-Android-Attachment-StoreData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/internet/MimeHeader;->WRITE_OMIT_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    .line 134
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/emailcommon/internet/MimeHeader$Field;

    invoke-direct {v1, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader$Field;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    return-void
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, header:[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 65
    const/4 v1, 0x0

    .line 67
    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeHeader$Field;

    .line 85
    .local v0, field:Lcom/android/emailcommon/internet/MimeHeader$Field;
    iget-object v3, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 86
    iget-object v3, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 89
    .end local v0           #field:Lcom/android/emailcommon/internet/MimeHeader$Field;
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2d

    .line 90
    const/4 v3, 0x0

    .line 92
    :goto_2c
    return-object v3

    :cond_2d
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_2c
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, removeFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/internet/MimeHeader$Field;>;"
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeHeader$Field;

    .line 98
    .local v0, field:Lcom/android/emailcommon/internet/MimeHeader$Field;
    iget-object v3, v0, Lcom/android/emailcommon/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 99
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 102
    .end local v0           #field:Lcom/android/emailcommon/internet/MimeHeader$Field;
    :cond_23
    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 103
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 80
    :cond_4
    :goto_4
    return-void

    .line 78
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
