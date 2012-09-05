.class public Lcom/vlingo/client/core/contacts/CustomPhoneDetailProvider;
.super Ljava/lang/Object;
.source "CustomPhoneDetailProvider.java"

# interfaces
.implements Lcom/vlingo/client/core/contacts/ContactDetailProvider;


# instance fields
.field m_number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "number"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/CustomPhoneDetailProvider;->m_number:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getEmailDetails(II)Ljava/util/Vector;
    .registers 4
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-object v0
.end method

.method public getPhoneDetails(II)Ljava/util/Vector;
    .registers 4
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-object v0
.end method
