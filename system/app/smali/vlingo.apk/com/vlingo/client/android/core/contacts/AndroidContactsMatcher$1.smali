.class final Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher$1;
.super Ljava/lang/Object;
.source "AndroidContactsMatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;->sortByName(Ljava/util/List;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vlingo/client/core/contacts/VlingoContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$desc:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher$1;->val$desc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vlingo/client/core/contacts/VlingoContact;Lcom/vlingo/client/core/contacts/VlingoContact;)I
    .registers 5
    .parameter "contact1"
    .parameter "contact2"

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher$1;->val$desc:Z

    if-eqz v0, :cond_11

    .line 367
    invoke-virtual {p2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 369
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_10
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    check-cast p1, Lcom/vlingo/client/core/contacts/VlingoContact;

    .end local p1
    check-cast p2, Lcom/vlingo/client/core/contacts/VlingoContact;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher$1;->compare(Lcom/vlingo/client/core/contacts/VlingoContact;Lcom/vlingo/client/core/contacts/VlingoContact;)I

    move-result v0

    return v0
.end method
