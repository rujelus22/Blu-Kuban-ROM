.class public Lcom/samsung/swift/service/phonebook/PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumber.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# instance fields
.field phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;
    .registers 5
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x0

    .line 104
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move-object v1, v2

    .line 116
    :goto_a
    return-object v1

    .line 110
    :cond_b
    new-instance v1, Lcom/samsung/swift/service/phonebook/PhoneNumber;

    invoke-direct {v1}, Lcom/samsung/swift/service/phonebook/PhoneNumber;-><init>()V

    .line 111
    .local v1, oPhoneNumber:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    invoke-virtual {v1, p0}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_a

    .line 114
    .end local v1           #oPhoneNumber:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    :catch_14
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-object v1, v2

    .line 116
    goto :goto_a
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    if-ne p0, p1, :cond_5

    .line 163
    :cond_4
    :goto_4
    return v1

    .line 153
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 156
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 157
    check-cast v0, Lcom/samsung/swift/service/phonebook/PhoneNumber;

    .line 158
    .local v0, other:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    iget-object v3, p0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 159
    iget-object v3, v0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    .line 160
    goto :goto_4

    .line 161
    :cond_22
    iget-object v3, p0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 162
    goto :goto_4
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 139
    const/16 v0, 0x1f

    .line 140
    .local v0, prime:I
    const/4 v1, 0x1

    .line 141
    .local v1, result:I
    iget-object v2, p0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 143
    return v1

    .line 141
    :cond_b
    iget-object v2, p0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/swift/service/phonebook/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 132
    return-void
.end method
