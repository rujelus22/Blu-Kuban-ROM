.class public Lcom/vlingo/client/android/core/contacts/ComparableVlingoContact;
.super Lcom/vlingo/client/core/contacts/VlingoContact;
.source "ComparableVlingoContact.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vlingo/client/core/contacts/VlingoContact;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V
    .registers 3
    .parameter "name"
    .parameter "detailProvider"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/contacts/VlingoContact;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V

    .line 15
    return-void
.end method
