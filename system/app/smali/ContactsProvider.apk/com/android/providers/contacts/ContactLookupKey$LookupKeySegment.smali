.class public Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
.super Ljava/lang/Object;
.source "ContactLookupKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLookupKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookupKeySegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
        ">;"
    }
.end annotation


# instance fields
.field public accountHashCode:I

.field public contactId:J

.field public key:Ljava/lang/String;

.field public lookupType:I

.field public rawContactId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;)I
    .registers 6
    .parameter "another"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    iget-wide v2, p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 46
    const/4 v0, -0x1

    .line 51
    :goto_9
    return v0

    .line 48
    :cond_a
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    iget-wide v2, p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 49
    const/4 v0, 0x1

    goto :goto_9

    .line 51
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->compareTo(Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;)I

    move-result v0

    return v0
.end method
