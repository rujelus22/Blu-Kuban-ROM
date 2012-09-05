.class public Lcom/google/wireless/gdata/contacts/data/Organization;
.super Lcom/google/wireless/gdata/contacts/data/ContactsElement;
.source "Organization.java"


# static fields
.field public static final TYPE_OTHER:B = 0x2t

.field public static final TYPE_WORK:B = 0x1t


# instance fields
.field private name:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->title:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    const-string v0, "Organization"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 32
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->name:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    :cond_17
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->title:Ljava/lang/String;

    if-eqz v0, :cond_26

    const-string v0, " title:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_26
    return-void
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->validate()V

    .line 39
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->name:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/Organization;->title:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 40
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "at least one of name or title must be present"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_13
    return-void
.end method
