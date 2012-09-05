.class public Lcom/sprint/smps/pojo/TermsAndConditions;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"


# instance fields
.field public language:Ljava/lang/String;

.field public paragraphs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/smps/pojo/Paragraph;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->language:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->paragraphs:Ljava/util/Vector;

    .line 10
    iput-object v1, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->text:Ljava/lang/StringBuffer;

    .line 6
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15
    iget-object v2, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->text:Ljava/lang/StringBuffer;

    if-nez v2, :cond_17

    .line 17
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->text:Ljava/lang/StringBuffer;

    .line 18
    iget-object v2, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->paragraphs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 19
    .local v1, paras:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/pojo/Paragraph;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 27
    .end local v1           #paras:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/pojo/Paragraph;>;"
    :cond_17
    iget-object v2, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 21
    .restart local v1       #paras:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/sprint/smps/pojo/Paragraph;>;"
    :cond_1e
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/pojo/Paragraph;

    .line 22
    .local v0, para:Lcom/sprint/smps/pojo/Paragraph;
    iget-object v2, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->text:Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/sprint/smps/pojo/Paragraph;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    iget-object v2, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->text:Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/sprint/smps/pojo/Paragraph;->paragraph:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Language="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nParagraphs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/TermsAndConditions;->paragraphs:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
