.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;
.super Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .registers 13
    .parameter "number"
    .parameter "candidate"
    .parameter "util"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 497
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v7

    if-eqz v7, :cond_14

    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    invoke-static {p1, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$100(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v7

    if-eqz v7, :cond_14

    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsMoreThanOneSlash(Ljava/lang/String;)Z
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$200(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 532
    :cond_14
    :goto_14
    return v6

    .line 504
    :cond_15
    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    invoke-static {p2, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->access$400(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 506
    .local v4, normalizedCandidate:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->access$500()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, candidateGroups:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v7

    if-eqz v7, :cond_3f

    array-length v7, v0

    add-int/lit8 v1, v7, -0x2

    .line 514
    .local v1, candidateNumberGroupIndex:I
    :goto_2e
    array-length v7, v0

    if-eq v7, v5, :cond_3d

    aget-object v7, v0, v1

    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_43

    :cond_3d
    move v6, v5

    .line 517
    goto :goto_14

    .line 509
    .end local v1           #candidateNumberGroupIndex:I
    :cond_3f
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    goto :goto_2e

    .line 519
    .restart local v1       #candidateNumberGroupIndex:I
    :cond_43
    #calls: Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    invoke-static {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->access$300(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, formattedNumberGroups:[Ljava/lang/String;
    array-length v7, v3

    add-int/lit8 v2, v7, -0x1

    .line 523
    .local v2, formattedNumberGroupIndex:I
    :goto_4a
    if-lez v2, :cond_5d

    if-ltz v1, :cond_5d

    .line 525
    aget-object v7, v0, v1

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 524
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    .line 532
    :cond_5d
    if-ltz v1, :cond_6b

    aget-object v7, v0, v1

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    :goto_69
    move v6, v5

    goto :goto_14

    :cond_6b
    move v5, v6

    goto :goto_69
.end method
