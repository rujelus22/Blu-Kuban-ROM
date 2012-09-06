.class public Lcom/google/android/apps/googlevoice/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# static fields
.field public static final GOOGLE_VOICE_DIAL_NUMBER:Ljava/lang/String; = "+13472637643"

.field private static final NON_US_NUMBERING_PLAN_AREAS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUMBERING_PLAN_AREA_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    const-string v0, "\\+?[0-9]{10,20}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/PhoneUtils;->VALID_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/PhoneUtils;->NON_US_NUMBERING_PLAN_AREAS:Ljava/util/Set;

    .line 76
    sget-object v0, Lcom/google/android/apps/googlevoice/PhoneUtils;->NON_US_NUMBERING_PLAN_AREAS:Ljava/util/Set;

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "242"

    aput-object v2, v1, v4

    const-string v2, "246"

    aput-object v2, v1, v5

    const-string v2, "264"

    aput-object v2, v1, v6

    const-string v2, "268"

    aput-object v2, v1, v7

    const-string v2, "284"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "340"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "345"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "441"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "473"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "649"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "664"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "670"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "671"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "684"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "758"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "767"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "784"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "809"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "829"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "849"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "868"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "869"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "876"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    sget-object v0, Lcom/google/android/apps/googlevoice/PhoneUtils;->NON_US_NUMBERING_PLAN_AREAS:Ljava/util/Set;

    const/16 v1, 0x1f

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "403"

    aput-object v2, v1, v4

    const-string v2, "587"

    aput-object v2, v1, v5

    const-string v2, "780"

    aput-object v2, v1, v6

    const-string v2, "825"

    aput-object v2, v1, v7

    const-string v2, "236"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "250"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "604"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "778"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "204"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "506"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "709"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "902"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "226"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "289"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "343"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "416"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "519"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "613"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "647"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "705"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "807"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "905"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "418"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "438"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "450"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "514"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "579"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "581"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "819"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "306"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "867"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    const-string v0, "^\\+?1?([2-9][0-8][0-9]).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/PhoneUtils;->NUMBERING_PLAN_AREA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInternational(Ljava/lang/String;)Z
    .registers 6
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 134
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    const-string v4, "^[+][2-9].*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "011"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 154
    :cond_16
    :goto_16
    return v2

    .line 142
    :cond_17
    sget-object v4, Lcom/google/android/apps/googlevoice/PhoneUtils;->NUMBERING_PLAN_AREA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 144
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 145
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, npa:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/googlevoice/PhoneUtils;->NON_US_NUMBERING_PLAN_AREAS:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    move v2, v3

    .line 154
    goto :goto_16

    .end local v1           #npa:Ljava/lang/String;
    :cond_31
    move v2, v3

    .line 152
    goto :goto_16
.end method

.method public static isRoutable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, networkNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneUtils;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 69
    :cond_c
    :goto_c
    return v2

    .line 56
    :cond_d
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 59
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1e

    .line 60
    const-string v2, "Could not get telephony manager, assuming this is not the voicemail number."

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    move v2, v3

    .line 61
    goto :goto_c

    .line 64
    :cond_1e
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    move v2, v3

    .line 69
    goto :goto_c
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 40
    sget-object v1, Lcom/google/android/apps/googlevoice/PhoneUtils;->VALID_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 41
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method
