.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$CachedDate;
    }
.end annotation


# static fields
.field public static MESSAGE_MAX_RAWATTACH_COUNT:I

.field public static MESSAGE_MAX_SLIDE_NUM:I

.field private static final NUMERIC_CHARS_SUGAR:[C

.field private static final PART_13_CHARS_UNICODE:[C

.field public static final SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

.field public static final WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

.field public static mCMASType:Ljava/lang/String;

.field public static mIsCMAS:Z

.field public static mIsHeadsetPlugged:Z

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static part13charsMap_UNICIDE:Ljava/util/HashMap;

.field private static sDateOrder:[C

.field private static sLocalNumber:Ljava/lang/String;

.field private static sNow:Ljava/util/Calendar;

.field private static sOldDateOrderValue:Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 121
    sput-boolean v1, Lcom/android/mms/ui/MessageUtils;->mIsCMAS:Z

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mCMASType:Ljava/lang/String;

    .line 134
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "wap-push-messages"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    .line 140
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "group"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 151
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 158
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_98

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 162
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    move v0, v1

    .line 165
    :goto_39
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    if-ge v0, v2, :cond_56

    .line 166
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 171
    :cond_56
    const/16 v0, 0x4d

    new-array v0, v0, [C

    fill-array-data v0, :array_a8

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    .line 184
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    move v0, v1

    .line 187
    :goto_6a
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v2, v2

    if-ge v0, v2, :cond_87

    .line 188
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 193
    :cond_87
    sput v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    .line 195
    sput v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_RAWATTACH_COUNT:I

    .line 197
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    .line 201
    const-string v0, ""

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 203
    sput-boolean v1, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    return-void

    .line 158
    :array_98
    .array-data 0x2
        0x2dt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data

    .line 171
    nop

    :array_a8
    .array-data 0x2
        0x60t 0x24t
        0x61t 0x24t
        0x62t 0x24t
        0x63t 0x24t
        0x64t 0x24t
        0x65t 0x24t
        0x66t 0x24t
        0x67t 0x24t
        0x68t 0x24t
        0x69t 0x24t
        0x6at 0x24t
        0x6bt 0x24t
        0x6ct 0x24t
        0x6dt 0x24t
        0x6et 0x24t
        0x6ft 0x24t
        0x70t 0x24t
        0x71t 0x24t
        0x72t 0x24t
        0x73t 0x24t
        0x60t 0x21t
        0x61t 0x21t
        0x62t 0x21t
        0x63t 0x21t
        0x64t 0x21t
        0x65t 0x21t
        0x66t 0x21t
        0x67t 0x21t
        0x68t 0x21t
        0x69t 0x21t
        0x6at 0x21t
        0x49t 0x33t
        0x14t 0x33t
        0x22t 0x33t
        0x4dt 0x33t
        0x18t 0x33t
        0x27t 0x33t
        0x3t 0x33t
        0x36t 0x33t
        0x51t 0x33t
        0x57t 0x33t
        0xdt 0x33t
        0x26t 0x33t
        0x23t 0x33t
        0x2bt 0x33t
        0x4at 0x33t
        0x3bt 0x33t
        0x9ct 0x33t
        0x9dt 0x33t
        0x9et 0x33t
        0x8et 0x33t
        0x8ft 0x33t
        0xc4t 0x33t
        0xa1t 0x33t
        0x6bt 0x21t
        0x7bt 0x33t
        0x1dt 0x30t
        0x1ft 0x30t
        0x16t 0x21t
        0xcdt 0x33t
        0x21t 0x21t
        0xa4t 0x32t
        0xa5t 0x32t
        0xa6t 0x32t
        0xa7t 0x32t
        0xa8t 0x32t
        0x31t 0x32t
        0x32t 0x32t
        0x39t 0x32t
        0x7et 0x33t
        0x7dt 0x33t
        0x7ct 0x33t
        0x2et 0x22t
        0x1ft 0x22t
        0xbft 0x22t
        0x56t 0x27t
        0x1et 0x26t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public static LanguageSize(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 2865
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System locale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    const-string v0, "de"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2867
    const/4 v0, 0x1

    .line 2939
    :goto_21
    return v0

    .line 2868
    :cond_22
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2869
    const/4 v0, 0x2

    goto :goto_21

    .line 2870
    :cond_2c
    const-string v0, "bg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2871
    const/4 v0, 0x3

    goto :goto_21

    .line 2872
    :cond_36
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2873
    const/4 v0, 0x4

    goto :goto_21

    .line 2874
    :cond_40
    const-string v0, "ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2875
    const/4 v0, 0x5

    goto :goto_21

    .line 2876
    :cond_4a
    const-string v0, "el"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2877
    const/4 v0, 0x6

    goto :goto_21

    .line 2878
    :cond_54
    const-string v0, "uk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2879
    const/4 v0, 0x7

    goto :goto_21

    .line 2880
    :cond_5e
    const-string v0, "lt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2881
    const/16 v0, 0x8

    goto :goto_21

    .line 2882
    :cond_69
    const-string v0, "hu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2883
    const/16 v0, 0x9

    goto :goto_21

    .line 2884
    :cond_74
    const-string v0, "cs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2885
    const/16 v0, 0xa

    goto :goto_21

    .line 2886
    :cond_7f
    const-string v0, "es"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2887
    const/16 v0, 0xb

    goto :goto_21

    .line 2888
    :cond_8a
    const-string v0, "fr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2889
    const/16 v0, 0xc

    goto :goto_21

    .line 2890
    :cond_95
    const-string v0, "it"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2891
    const/16 v0, 0xd

    goto :goto_21

    .line 2892
    :cond_a0
    const-string v0, "sk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 2893
    const/16 v0, 0xe

    goto/16 :goto_21

    .line 2894
    :cond_ac
    const-string v0, "et"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 2895
    const/16 v0, 0xf

    goto/16 :goto_21

    .line 2896
    :cond_b8
    const-string v0, "tr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2897
    const/16 v0, 0x10

    goto/16 :goto_21

    .line 2898
    :cond_c4
    const-string v0, "sr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 2899
    const/16 v0, 0x11

    goto/16 :goto_21

    .line 2900
    :cond_d0
    const-string v0, "nl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 2901
    const/16 v0, 0x12

    goto/16 :goto_21

    .line 2902
    :cond_dc
    const-string v0, "hr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 2903
    const/16 v0, 0x13

    goto/16 :goto_21

    .line 2904
    :cond_e8
    const-string v0, "fi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 2905
    const/16 v0, 0x14

    goto/16 :goto_21

    .line 2906
    :cond_f4
    const-string v0, "da"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 2907
    const/16 v0, 0x15

    goto/16 :goto_21

    .line 2908
    :cond_100
    const-string v0, "is"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 2909
    const/16 v0, 0x16

    goto/16 :goto_21

    .line 2910
    :cond_10c
    const-string v0, "ga"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 2911
    const/16 v0, 0x17

    goto/16 :goto_21

    .line 2912
    :cond_118
    const-string v0, "kk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 2913
    const/16 v0, 0x18

    goto/16 :goto_21

    .line 2914
    :cond_124
    const-string v0, "lv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 2915
    const/16 v0, 0x19

    goto/16 :goto_21

    .line 2916
    :cond_130
    const-string v0, "mk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 2917
    const/16 v0, 0x1a

    goto/16 :goto_21

    .line 2918
    :cond_13c
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 2919
    const/16 v0, 0x1b

    goto/16 :goto_21

    .line 2920
    :cond_148
    const-string v0, "pl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 2921
    const/16 v0, 0x1c

    goto/16 :goto_21

    .line 2922
    :cond_154
    const-string v0, "sl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 2923
    const/16 v0, 0x1d

    goto/16 :goto_21

    .line 2924
    :cond_160
    const-string v0, "sv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 2925
    const/16 v0, 0x1e

    goto/16 :goto_21

    .line 2926
    :cond_16c
    const-string v0, "ko"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 2927
    const/16 v0, 0x1f

    goto/16 :goto_21

    .line 2928
    :cond_178
    const-string v0, "vi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 2929
    const/16 v0, 0x20

    goto/16 :goto_21

    .line 2930
    :cond_184
    const-string v0, "th"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 2931
    const/16 v0, 0x21

    goto/16 :goto_21

    .line 2932
    :cond_190
    const-string v0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 2933
    const/16 v0, 0x22

    goto/16 :goto_21

    .line 2934
    :cond_19c
    const-string v0, "id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 2935
    const/16 v0, 0x23

    goto/16 :goto_21

    .line 2936
    :cond_1a8
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 2937
    const/16 v0, 0x24

    goto/16 :goto_21

    .line 2939
    :cond_1b4
    const/4 v0, 0x0

    goto/16 :goto_21
.end method

.method public static canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .registers 5
    .parameter "contact"

    .prologue
    const/4 v2, 0x0

    .line 1907
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1908
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1909
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1910
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1924
    .end local v0           #c:C
    :cond_1d
    :goto_1d
    return v2

    .line 1914
    :cond_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1915
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1916
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1921
    .end local v0           #c:C
    :cond_2e
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1924
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1681
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1682
    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1683
    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1684
    const v1, 0x7f090069

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1685
    const v1, 0x7f09006a

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1686
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1687
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1688
    return-void
.end method

.method public static convertCharToSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    const v10, 0xdfff

    const v9, 0xd800

    const/4 v2, 0x0

    const/16 v4, 0x20

    .line 2377
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[convertCharaterforNTT] msgText.length() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    move v0, v4

    .line 2384
    :goto_2c
    if-eqz p0, :cond_ac

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_ac

    .line 2385
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2386
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_46

    .line 2387
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_46
    move v1, v2

    .line 2390
    :goto_47
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v7, v7

    if-ge v1, v7, :cond_cd

    .line 2391
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_87

    move v1, v4

    .line 2397
    :goto_59
    const/16 v5, 0xd

    if-eq v1, v5, :cond_61

    const/16 v5, 0xa

    if-ne v1, v5, :cond_62

    :cond_61
    move v1, v4

    .line 2402
    :cond_62
    if-gt v9, v1, :cond_c9

    if-lt v10, v1, :cond_c9

    if-gt v9, v0, :cond_c9

    if-lt v10, v0, :cond_c9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_c9

    .line 2406
    const v5, 0xdbba

    if-ne v5, v1, :cond_91

    .line 2407
    const v5, 0xdf1a

    if-ne v5, v0, :cond_8a

    .line 2408
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2409
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2410
    add-int/lit8 v1, v3, 0x1

    .line 2384
    :goto_84
    add-int/lit8 v3, v1, 0x1

    goto :goto_2c

    .line 2390
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 2415
    :cond_8a
    add-int/lit8 v1, v3, 0x1

    move v3, v4

    .line 2436
    :goto_8d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 2417
    :cond_91
    const v5, 0xdbb9

    if-ne v5, v1, :cond_a8

    .line 2418
    const v5, 0xdd23

    if-ne v5, v0, :cond_a4

    .line 2419
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2420
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2421
    add-int/lit8 v1, v3, 0x1

    .line 2422
    goto :goto_84

    .line 2426
    :cond_a4
    add-int/lit8 v1, v3, 0x1

    move v3, v4

    goto :goto_8d

    .line 2431
    :cond_a8
    add-int/lit8 v1, v3, 0x1

    move v3, v4

    goto :goto_8d

    .line 2438
    :cond_ac
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2439
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[convertCharaterforNTT] stringBuilder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    return-object v0

    :cond_c9
    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_8d

    :cond_cd
    move v1, v5

    goto :goto_59
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2951
    const/4 v0, 0x0

    .line 2952
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2954
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_6
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2955
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_1a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_13

    move-result-object v0

    .line 2976
    :try_start_f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_1f

    .line 2981
    :goto_12
    return-object v0

    .line 2972
    :catch_13
    move-exception v2

    .line 2976
    :try_start_14
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_12

    .line 2977
    :catch_18
    move-exception v2

    goto :goto_12

    .line 2975
    :catchall_1a
    move-exception v2

    .line 2976
    :try_start_1b
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1e} :catch_21

    .line 2979
    :goto_1e
    throw v2

    .line 2977
    :catch_1f
    move-exception v2

    goto :goto_12

    :catch_21
    move-exception v3

    goto :goto_1e
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1705
    if-eqz p1, :cond_7

    .line 1706
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1708
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .registers 7
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 1692
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1695
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1696
    const-string v1, ""

    .line 1700
    .end local v1           #rawBytes:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v1

    .line 1697
    .restart local v1       #rawBytes:Ljava/lang/String;
    :cond_11
    if-eqz v0, :cond_10

    .line 1700
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method public static extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2149
    const-string v0, ""

    .line 2152
    if-nez p0, :cond_5

    .line 2169
    :cond_4
    :goto_4
    return-object v0

    .line 2154
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2157
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2158
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2160
    if-gez v2, :cond_25

    const/4 v2, 0x0

    .line 2161
    :goto_1a
    if-gez v1, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2163
    :cond_20
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_23} :catch_28

    move-result-object v0

    goto :goto_4

    .line 2160
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2165
    :catch_28
    move-exception v1

    .line 2166
    const-string v2, "Mms/MessageUtils"

    const-string v3, "Illegal name and number format!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_4
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .registers 5
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1713
    array-length v2, p0

    .line 1714
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_15

    .line 1717
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1719
    :cond_15
    return-object v0
.end method

.method private static formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 23
    .parameter "context"
    .parameter "when"
    .parameter "formatFlags"

    .prologue
    .line 926
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v7

    .line 928
    .local v7, order:[C
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v7}, Lcom/android/mms/ui/MessageUtils$CachedDate;->equals(JI[C)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 929
    invoke-static {}, Lcom/android/mms/ui/MessageUtils$CachedDate;->getDateTime()Ljava/lang/String;

    move-result-object v4

    .line 1006
    :goto_12
    return-object v4

    .line 932
    :cond_13
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 933
    .local v8, result:Ljava/lang/StringBuffer;
    and-int/lit8 v15, p3, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_54

    const/4 v10, 0x1

    .line 934
    .local v10, showTime:Z
    :goto_21
    and-int/lit8 v15, p3, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_56

    const/4 v11, 0x1

    .line 935
    .local v11, showYear:Z
    :goto_2a
    and-int/lit8 v15, p3, 0x10

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_58

    const/4 v9, 0x1

    .line 936
    .local v9, showDate:Z
    :goto_33
    const/16 v3, 0xb00

    .line 939
    .local v3, baseFormatFlags:I
    if-eqz v10, :cond_44

    .line 940
    const/16 v15, 0xb01

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v15}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    :cond_44
    if-nez v11, :cond_5a

    if-nez v9, :cond_5a

    .line 946
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 947
    .local v4, dateTime:Ljava/lang/String;
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v7, v4}, Lcom/android/mms/ui/MessageUtils$CachedDate;->update(JI[CLjava/lang/String;)V

    goto :goto_12

    .line 933
    .end local v3           #baseFormatFlags:I
    .end local v4           #dateTime:Ljava/lang/String;
    .end local v9           #showDate:Z
    .end local v10           #showTime:Z
    .end local v11           #showYear:Z
    :cond_54
    const/4 v10, 0x0

    goto :goto_21

    .line 934
    .restart local v10       #showTime:Z
    :cond_56
    const/4 v11, 0x0

    goto :goto_2a

    .line 935
    .restart local v11       #showYear:Z
    :cond_58
    const/4 v9, 0x0

    goto :goto_33

    .line 952
    .restart local v3       #baseFormatFlags:I
    .restart local v9       #showDate:Z
    :cond_5a
    const/4 v15, 0x1

    if-ne v15, v10, :cond_62

    .line 953
    const-string v15, ", "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 956
    :cond_62
    const-string v14, ""

    .line 957
    .local v14, strY:Ljava/lang/String;
    const-string v13, ""

    .line 958
    .local v13, strM:Ljava/lang/String;
    const-string v12, ""

    .line 960
    .local v12, strD:Ljava/lang/String;
    sget-object v16, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    monitor-enter v16

    .line 961
    :try_start_6b
    sget-object v15, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 964
    if-eqz v11, :cond_82

    .line 965
    sget-object v15, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 967
    :cond_82
    if-eqz v9, :cond_c2

    .line 968
    sget-object v15, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/high16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v13

    .line 970
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090215

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 973
    :cond_c2
    monitor-exit v16
    :try_end_c3
    .catchall {:try_start_6b .. :try_end_c3} :catchall_d1

    .line 975
    const-string v5, ""

    .line 977
    .local v5, delimeter:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c6
    array-length v15, v7

    if-ge v6, v15, :cond_f5

    .line 978
    aget-char v15, v7, v6

    sparse-switch v15, :sswitch_data_102

    .line 977
    :cond_ce
    :goto_ce
    add-int/lit8 v6, v6, 0x1

    goto :goto_c6

    .line 973
    .end local v5           #delimeter:Ljava/lang/String;
    .end local v6           #i:I
    :catchall_d1
    move-exception v15

    :try_start_d2
    monitor-exit v16
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v15

    .line 980
    .restart local v5       #delimeter:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_d4
    if-eqz v11, :cond_ce

    .line 981
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 982
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    const-string v5, " "

    goto :goto_ce

    .line 987
    :sswitch_df
    if-eqz v9, :cond_ce

    .line 988
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 990
    const-string v5, " "

    goto :goto_ce

    .line 994
    :sswitch_ea
    if-eqz v9, :cond_ce

    .line 995
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 996
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    const-string v5, " "

    goto :goto_ce

    .line 1003
    :cond_f5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1004
    .restart local v4       #dateTime:Ljava/lang/String;
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v7, v4}, Lcom/android/mms/ui/MessageUtils$CachedDate;->update(JI[CLjava/lang/String;)V

    goto/16 :goto_12

    .line 978
    :sswitch_data_102
    .sparse-switch
        0x4d -> :sswitch_df
        0x64 -> :sswitch_ea
        0x79 -> :sswitch_d4
    .end sparse-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "when"

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 879
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 880
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 881
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 882
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 886
    const/16 v0, 0xb00

    .line 889
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_23

    .line 890
    or-int/lit8 v0, v0, 0x14

    .line 902
    :goto_1a
    if-eqz p3, :cond_1e

    .line 903
    or-int/lit8 v0, v0, 0x11

    .line 906
    :cond_1e
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 891
    :cond_23
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2c

    .line 893
    or-int/lit8 v0, v0, 0x10

    goto :goto_1a

    .line 896
    :cond_2c
    or-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .registers 7
    .parameter "model"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 840
    if-nez p0, :cond_6

    .line 871
    :cond_5
    :goto_5
    return v2

    .line 844
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 845
    .local v0, numberOfSlides:I
    if-le v0, v4, :cond_e

    move v2, v3

    .line 846
    goto :goto_5

    .line 847
    :cond_e
    if-ne v0, v4, :cond_5

    .line 849
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 850
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 851
    const/4 v2, 0x2

    goto :goto_5

    .line 854
    :cond_1c
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_2a

    move v2, v3

    .line 855
    goto :goto_5

    .line 858
    :cond_2a
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 859
    const/4 v2, 0x3

    goto :goto_5

    .line 862
    :cond_32
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_3a

    move v2, v4

    .line 863
    goto :goto_5

    .line 866
    :cond_3a
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5
.end method

.method public static getAvailableStorage()J
    .registers 7

    .prologue
    .line 2477
    const-string v0, "/data"

    .line 2478
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2479
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Storage Size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static getCertainityTextID(I)I
    .registers 2
    .parameter "msgCertainity"

    .prologue
    .line 743
    const v0, 0x7f0902e8

    .line 746
    .local v0, id:I
    packed-switch p0, :pswitch_data_10

    .line 757
    :goto_6
    return v0

    .line 750
    :pswitch_7
    const v0, 0x7f0902e6

    .line 751
    goto :goto_6

    .line 754
    :pswitch_b
    const v0, 0x7f0902e7

    goto :goto_6

    .line 746
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public static getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2693
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2694
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 2699
    :goto_f
    if-ge v1, v4, :cond_65

    .line 2700
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 2701
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 2702
    if-eqz v0, :cond_4c

    .line 2703
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 2705
    const-string v5, "cid:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 2706
    const-string v5, "cid:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2711
    :cond_31
    :goto_31
    :try_start_31
    const-string v5, "text_"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ".txt"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_44} :catch_62

    move-result v0

    .line 2715
    :goto_45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2707
    :cond_4f
    const-string v5, "Cid:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2708
    const-string v5, "Cid:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 2712
    :catch_62
    move-exception v0

    move v0, v1

    .line 2713
    goto :goto_45

    .line 2719
    :cond_65
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2721
    if-lez v4, :cond_8d

    move v1, v2

    .line 2722
    :goto_6c
    if-ge v2, v4, :cond_88

    .line 2723
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_8b

    .line 2724
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2722
    :goto_84
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_6c

    .line 2727
    :cond_88
    add-int/lit8 v0, v1, 0x1

    .line 2729
    :goto_8a
    return v0

    :cond_8b
    move v0, v1

    goto :goto_84

    :cond_8d
    move v0, v2

    goto :goto_8a
.end method

.method private static getCmaeCategoryTextID(I)I
    .registers 2
    .parameter "msgCategory"

    .prologue
    .line 761
    const v0, 0x7f0902e8

    .line 763
    .local v0, id:I
    packed-switch p0, :pswitch_data_38

    .line 822
    :goto_6
    return v0

    .line 766
    :pswitch_7
    const v0, 0x7f0902ce

    .line 767
    goto :goto_6

    .line 770
    :pswitch_b
    const v0, 0x7f0902cf

    .line 771
    goto :goto_6

    .line 775
    :pswitch_f
    const v0, 0x7f0902d0

    .line 776
    goto :goto_6

    .line 781
    :pswitch_13
    const v0, 0x7f0902d1

    .line 782
    goto :goto_6

    .line 785
    :pswitch_17
    const v0, 0x7f0902d2

    .line 786
    goto :goto_6

    .line 789
    :pswitch_1b
    const v0, 0x7f0902d3

    .line 790
    goto :goto_6

    .line 793
    :pswitch_1f
    const v0, 0x7f0902d4

    .line 794
    goto :goto_6

    .line 797
    :pswitch_23
    const v0, 0x7f0902d5

    .line 798
    goto :goto_6

    .line 802
    :pswitch_27
    const v0, 0x7f0902d6

    .line 803
    goto :goto_6

    .line 807
    :pswitch_2b
    const v0, 0x7f0902d7

    .line 808
    goto :goto_6

    .line 814
    :pswitch_2f
    const v0, 0x7f0902d8

    .line 815
    goto :goto_6

    .line 818
    :pswitch_33
    const v0, 0x7f0902d9

    goto :goto_6

    .line 763
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
    .end packed-switch
.end method

.method private static getDateFormatOrder(Landroid/content/Context;)[C
    .registers 4
    .parameter "context"

    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, newDateOrderValue:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1015
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 1016
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    .line 1018
    :cond_1a
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    return-object v1
.end method

.method public static getFirstAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .registers 6
    .parameter "model"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3006
    if-nez p0, :cond_5

    .line 3033
    :cond_4
    :goto_4
    return v2

    .line 3010
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 3011
    .local v0, numberOfSlides:I
    if-lt v0, v3, :cond_4

    .line 3012
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 3013
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3014
    const/4 v2, 0x2

    goto :goto_4

    .line 3017
    :cond_17
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3018
    const/4 v2, 0x4

    goto :goto_4

    .line 3021
    :cond_25
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3022
    const/4 v2, 0x3

    goto :goto_4

    .line 3025
    :cond_2d
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_35

    move v2, v3

    .line 3026
    goto :goto_4

    .line 3029
    :cond_35
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1407
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1408
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1411
    :cond_12
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "address"
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x0

    .line 212
    if-nez p1, :cond_5

    .line 213
    const/4 v0, 0x0

    .line 228
    :goto_4
    return-object v0

    .line 214
    :cond_5
    const-string v0, "mms"

    iget-object v1, p4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 215
    iget v6, p4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 216
    .local v6, type:I
    packed-switch v6, :pswitch_data_32

    .line 223
    :pswitch_14
    const-string v0, "Mms/MessageUtils"

    const-string v1, "No details could be retrieved."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, ""

    goto :goto_4

    .line 218
    :pswitch_1e
    invoke-static {p0, p1, v3, p3, p4}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_23
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 221
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 228
    .end local v6           #type:I
    :cond_2d
    invoke-static {p0, p1, v3, p3, p4}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 216
    :pswitch_data_32
    .packed-switch 0x80
        :pswitch_23
        :pswitch_14
        :pswitch_1e
        :pswitch_14
        :pswitch_23
    .end packed-switch
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .registers 35
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "isView"
    .parameter "address"
    .parameter "msgItem"

    .prologue
    .line 331
    const/16 v22, 0x0

    .line 332
    .local v22, type:I
    if-eqz p3, :cond_25

    .line 333
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 337
    :goto_e
    const/16 v25, 0x82

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v25

    .line 480
    :goto_24
    return-object v25

    .line 335
    :cond_25
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v22, v0

    goto :goto_e

    .line 341
    :cond_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v7, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 343
    .local v17, res:Landroid/content/res/Resources;
    const-wide/16 v11, 0x0

    .line 344
    .local v11, id:J
    if-eqz p3, :cond_11c

    .line 345
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 349
    :goto_43
    sget-object v25, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 353
    .local v23, uri:Landroid/net/Uri;
    :try_start_4b
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_59
    .catch Lcom/google/android/mms/MmsException; {:try_start_4b .. :try_end_59} :catch_122

    .line 360
    .local v14, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v25, 0x7f09009b

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    const v25, 0x7f09009d

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    instance-of v0, v14, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v25, v0

    if-eqz v25, :cond_c3

    move-object/from16 v25, v14

    .line 366
    check-cast v25, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, from:Ljava/lang/String;
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    const v25, 0x7f09009f

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_150

    invoke-static {v9}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    :goto_be
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .end local v9           #from:Ljava/lang/String;
    :cond_c3
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    const v25, 0x7f0900a0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    if-eqz p4, :cond_e9

    instance-of v0, v14, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v25, v0

    if-eqz v25, :cond_161

    .line 380
    :cond_e9
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    .line 381
    .local v21, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v18, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 384
    .local v6, count:I
    if-eqz v21, :cond_28e

    .line 385
    move-object/from16 v5, v21

    .local v5, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_f9
    if-ge v10, v13, :cond_15d

    aget-object v16, v5, v10

    .line 386
    .local v16, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v6, :cond_108

    .line 387
    const-string v25, ", "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_108
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v6, v6, 0x1

    .line 385
    add-int/lit8 v10, v10, 0x1

    goto :goto_f9

    .line 347
    .end local v5           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6           #count:I
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v14           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v16           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v21           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v23           #uri:Landroid/net/Uri;
    :cond_11c
    move-object/from16 v0, p5

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    goto/16 :goto_43

    .line 354
    .restart local v23       #uri:Landroid/net/Uri;
    :catch_122
    move-exception v8

    .line 355
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v25, "Mms/MessageUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failed to load the message: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090099

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_24

    .line 370
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .restart local v9       #from:Ljava/lang/String;
    .restart local v14       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_150
    const v25, 0x7f090068

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_be

    .line 392
    .end local v9           #from:Ljava/lang/String;
    .restart local v5       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v6       #count:I
    .restart local v10       #i$:I
    .restart local v13       #len$:I
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    .restart local v21       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 399
    .end local v5           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6           #count:I
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v21           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_161
    :goto_161
    if-eqz p4, :cond_29b

    .line 400
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :goto_168
    instance-of v0, v14, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v25, v0

    if-eqz v25, :cond_1a6

    move-object/from16 v25, v14

    .line 406
    check-cast v25, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 407
    .local v24, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_1a6

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_1a6

    .line 408
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    const v25, 0x7f0900a1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .end local v24           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1a6
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    const/4 v15, 0x0

    .line 418
    .local v15, msgBox:I
    if-eqz p3, :cond_2a4

    .line 419
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 423
    :goto_1ba
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v15, v0, :cond_2aa

    .line 424
    const v25, 0x7f0900a4

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :goto_1d0
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    mul-long v25, v25, v27

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    const v25, 0x7f0900a5

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 445
    .local v20, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_2d4

    .line 446
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v19

    .line 448
    .local v19, subStr:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v25

    add-int p2, p2, v25

    .line 449
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .end local v19           #subStr:Ljava/lang/String;
    :goto_223
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    const v25, 0x7f0900a7

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    const v25, 0x7f0900a6

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0x3ff

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v25, " KB"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_24

    .line 395
    .end local v15           #msgBox:I
    .end local v20           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v6       #count:I
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    .restart local v21       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_28e
    const v25, 0x7f090159

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_161

    .line 402
    .end local v6           #count:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v21           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_29b
    const-string v25, "Mms/MessageUtils"

    const-string v26, "recipient list is empty!"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_168

    .line 421
    .restart local v15       #msgBox:I
    :cond_2a4
    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v15

    goto/16 :goto_1ba

    .line 425
    :cond_2aa
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_2c2

    .line 430
    const v25, 0x7f0900a3

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d0

    .line 433
    :cond_2c2
    const v25, 0x7f0900a2

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d0

    .line 451
    .restart local v20       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2d4
    const v25, 0x7f090182

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_223
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .registers 21
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "from"
    .parameter "msgItem"

    .prologue
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v1, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 236
    .local v6, res:Landroid/content/res/Resources;
    const-wide/16 v3, 0x0

    .line 237
    .local v3, id:J
    if-eqz p2, :cond_e5

    .line 238
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 242
    :goto_14
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 246
    .local v8, uri:Landroid/net/Uri;
    :try_start_1a
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    check-cast v5, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_24
    .catch Lcom/google/android/mms/MmsException; {:try_start_1a .. :try_end_24} :catch_eb

    .line 253
    .local v5, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v9, 0x7f09009b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/16 v9, 0x20

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    const v9, 0x7f09009e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    if-nez p3, :cond_4c

    .line 259
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object p3

    .line 260
    invoke-static/range {p3 .. p3}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    :cond_4c
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    const v9, 0x7f09009f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const/16 v9, 0x20

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_110

    move-object/from16 v9, p3

    :goto_68
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const v9, 0x7f090016

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    const v9, 0x7f0900a5

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const/16 v9, 0x20

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 280
    .local v7, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_119

    .line 281
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :goto_af
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    const v9, 0x7f0900a6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const/16 v9, 0x20

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v9

    const-wide/16 v11, 0x3ff

    add-long/2addr v9, v11

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const v9, 0x7f090017

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v5           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v7           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_e4
    return-object v9

    .line 240
    .end local v8           #uri:Landroid/net/Uri;
    :cond_e5
    move-object/from16 v0, p4

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    goto/16 :goto_14

    .line 247
    .restart local v8       #uri:Landroid/net/Uri;
    :catch_eb
    move-exception v2

    .line 248
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v9, "Mms/MessageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load the message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090099

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_e4

    .line 266
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_110
    const v9, 0x7f090068

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_68

    .line 283
    .restart local v7       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_119
    const v9, 0x7f090182

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af
.end method

.method public static getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "address"

    .prologue
    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1948
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1950
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_37

    .line 1951
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1954
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_20

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_20

    .line 1955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1950
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1959
    :cond_20
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1960
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 1964
    :cond_2a
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1d

    goto :goto_1d

    .line 1968
    .end local v1           #c:C
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 828
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_20

    .line 835
    :pswitch_7
    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    .line 830
    :pswitch_f
    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 832
    :pswitch_17
    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 828
    nop

    :pswitch_data_20
    .packed-switch 0x80
        :pswitch_17
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public static getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 312
    :try_start_1
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_b
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_b} :catch_1f

    .line 318
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v4, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v4, :cond_1e

    .line 319
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 320
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_1e

    array-length v4, v2

    if-lez v4, :cond_1e

    .line 322
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1e
    :goto_1e
    return-object v3

    .line 313
    :catch_1f
    move-exception v0

    .line 314
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load the message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public static getReplyAllCount(Lcom/android/mms/data/Conversation;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/data/Conversation;",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1433
    const/4 v1, 0x0

    .line 1436
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1439
    :try_start_b
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_15
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_15} :catch_3a

    move-object v1, v0

    .line 1445
    :goto_16
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1446
    instance-of v0, v1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v0, :cond_9d

    move-object v0, v1

    .line 1448
    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 1450
    if-eqz v5, :cond_64

    .line 1451
    array-length v6, v5

    move v4, v2

    move v0, v2

    :goto_29
    if-ge v4, v6, :cond_65

    aget-object v7, v5, v4

    .line 1453
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 1451
    :cond_37
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 1440
    :catch_3a
    move-exception v0

    .line 1441
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load the message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 1456
    :cond_54
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    .line 1457
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    .line 1458
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_64
    move v0, v2

    .line 1464
    :cond_65
    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1465
    if-eqz v4, :cond_106

    .line 1466
    array-length v5, v4

    move v1, v0

    move v0, v2

    :goto_70
    if-ge v2, v5, :cond_e0

    aget-object v6, v4, v2

    .line 1468
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    move v9, v1

    move v1, v0

    move v0, v9

    .line 1466
    :goto_81
    add-int/lit8 v2, v2, 0x1

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_70

    .line 1471
    :cond_87
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1472
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_101

    .line 1473
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    if-nez v0, :cond_97

    move v0, v3

    .line 1477
    :cond_97
    add-int/lit8 v1, v1, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_81

    .line 1485
    :cond_9d
    if-eqz p0, :cond_bf

    .line 1487
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_af
    move v1, v2

    move v4, v2

    .line 1495
    :goto_b1
    array-length v5, v0

    if-ge v2, v5, :cond_df

    .line 1497
    aget-object v5, v0, v2

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 1495
    :cond_bc
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 1491
    :cond_bf
    invoke-static {v4, p1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    .line 1500
    :cond_ca
    aget-object v5, v0, v2

    .line 1501
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1502
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 1503
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    if-nez v4, :cond_dc

    move v4, v3

    .line 1507
    :cond_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    :cond_df
    move v0, v4

    .line 1513
    :cond_e0
    :goto_e0
    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 1515
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fb

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fb

    const-string v4, "me"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fb

    .line 1517
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    add-int/lit8 v1, v1, 0x1

    .line 1521
    :cond_fb
    if-le v1, v3, :cond_100

    if-nez v0, :cond_100

    move v0, v3

    .line 1525
    :cond_100
    return v0

    :cond_101
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_81

    :cond_106
    move v1, v0

    move v0, v2

    goto :goto_e0
.end method

.method private static getResponseTypeTextID(I)I
    .registers 2
    .parameter "msgResponseType"

    .prologue
    .line 698
    const v0, 0x7f0902e8

    .line 700
    .local v0, id:I
    packed-switch p0, :pswitch_data_28

    .line 739
    :goto_6
    return v0

    .line 703
    :pswitch_7
    const v0, 0x7f0902da

    .line 704
    goto :goto_6

    .line 707
    :pswitch_b
    const v0, 0x7f0902db

    .line 708
    goto :goto_6

    .line 711
    :pswitch_f
    const v0, 0x7f0902dc

    .line 712
    goto :goto_6

    .line 716
    :pswitch_13
    const v0, 0x7f0902dd

    .line 717
    goto :goto_6

    .line 721
    :pswitch_17
    const v0, 0x7f0902de

    .line 722
    goto :goto_6

    .line 725
    :pswitch_1b
    const v0, 0x7f0902df

    .line 726
    goto :goto_6

    .line 732
    :pswitch_1f
    const v0, 0x7f0902e0

    .line 733
    goto :goto_6

    .line 736
    :pswitch_23
    const v0, 0x7f0902e1

    goto :goto_6

    .line 700
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method

.method public static getScreenHeight()I
    .registers 2

    .prologue
    .line 2839
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2841
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenOrientation()I
    .registers 2

    .prologue
    .line 2845
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2846
    .local v0, orientation:I
    return v0
.end method

.method public static getScreenWidth()I
    .registers 2

    .prologue
    .line 2827
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2829
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private static getSeverityTextID(I)I
    .registers 2
    .parameter "msgSeverity"

    .prologue
    .line 665
    const v0, 0x7f0902e8

    .line 667
    .local v0, id:I
    packed-switch p0, :pswitch_data_10

    .line 678
    :goto_6
    return v0

    .line 670
    :pswitch_7
    const v0, 0x7f0902e2

    .line 671
    goto :goto_6

    .line 674
    :pswitch_b
    const v0, 0x7f0902e3

    goto :goto_6

    .line 667
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .registers 26
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "address"
    .parameter "msgItem"

    .prologue
    .line 486
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v7, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 489
    .local v17, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 490
    .local v9, isCmas:Z
    const-string v3, "#CMAS#"

    .line 491
    .local v3, cmas_addr:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 493
    const/4 v10, -0x1

    .line 494
    .local v10, msgCategory:I
    const/4 v14, -0x1

    .line 495
    .local v14, msgResponseType:I
    const/4 v15, -0x1

    .line 496
    .local v15, msgSeverity:I
    const/16 v16, -0x1

    .line 497
    .local v16, msgUrgency:I
    const/4 v11, -0x1

    .line 498
    .local v11, msgCertainity:I
    const-wide/16 v12, -0x1

    .line 502
    .local v12, msgExpiry:J
    const v19, 0x7f09009b

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    const v19, 0x7f09009c

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    const/16 v18, 0x0

    .line 509
    .local v18, smsType:I
    if-eqz p2, :cond_27e

    .line 510
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 514
    :goto_56
    invoke-static/range {v18 .. v18}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v19

    if-eqz v19, :cond_284

    .line 515
    const v19, 0x7f0900a0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :goto_6c
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    if-eqz v9, :cond_77

    .line 522
    const-string p3, "Emergency Alert"

    .line 524
    :cond_77
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2a3

    .line 525
    if-eqz p2, :cond_296

    .line 526
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :goto_8e
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2aa

    .line 537
    const v19, 0x7f0900a4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :goto_ad
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    const-wide/16 v4, 0x0

    .line 551
    .local v4, date:J
    if-eqz p2, :cond_2d6

    .line 552
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 556
    :goto_c2
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v4, v5, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static/range {v18 .. v18}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v19

    if-eqz v19, :cond_118

    .line 560
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v19

    if-eqz v19, :cond_2dc

    .line 561
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getGroupSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, deliveryStatus:Ljava/lang/String;
    :goto_eb
    if-eqz v6, :cond_ed

    .line 577
    :cond_ed
    const/4 v8, 0x0

    .line 578
    .local v8, errorCode:I
    if-eqz p2, :cond_302

    .line 579
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 583
    :goto_fa
    if-eqz v8, :cond_118

    .line 584
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0900ab

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .end local v6           #deliveryStatus:Ljava/lang/String;
    .end local v8           #errorCode:I
    :cond_118
    if-eqz v9, :cond_279

    .line 593
    if-eqz p2, :cond_308

    .line 594
    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 595
    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 596
    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 597
    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 598
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 599
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 612
    :goto_158
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_18d

    .line 615
    const v19, 0x7f0902c5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->getSeverityTextID(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    :cond_18d
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1bd

    .line 622
    const v19, 0x7f0902c6

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageUtils;->getUrgencyTextID(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 628
    :cond_1bd
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_1eb

    .line 629
    const v19, 0x7f0902c4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->getResponseTypeTextID(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    :cond_1eb
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_219

    .line 636
    const v19, 0x7f0902c7

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getCertainityTextID(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    :cond_219
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_247

    .line 643
    const v19, 0x7f0902c2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getCmaeCategoryTextID(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    :cond_247
    const-wide/16 v19, -0x1

    cmp-long v19, v12, v19

    if-eqz v19, :cond_279

    .line 649
    const-wide/16 v19, 0x0

    cmp-long v19, v12, v19

    if-eqz v19, :cond_376

    .line 650
    const v19, 0x7f0902f4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v12, v13, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_279
    :goto_279
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 512
    .end local v4           #date:J
    :cond_27e
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v18

    goto/16 :goto_56

    .line 517
    :cond_284
    const v19, 0x7f09009f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6c

    .line 528
    :cond_296
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8e

    .line 531
    :cond_2a3
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8e

    .line 538
    :cond_2aa
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2c4

    .line 543
    const v19, 0x7f0900a3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ad

    .line 546
    :cond_2c4
    const v19, 0x7f0900a2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ad

    .line 554
    .restart local v4       #date:J
    :cond_2d6
    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTime:J

    goto/16 :goto_c2

    .line 563
    :cond_2dc
    if-eqz p2, :cond_2f2

    .line 564
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #deliveryStatus:Ljava/lang/String;
    goto/16 :goto_eb

    .line 567
    .end local v6           #deliveryStatus:Ljava/lang/String;
    :cond_2f2
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #deliveryStatus:Ljava/lang/String;
    goto/16 :goto_eb

    .line 581
    .restart local v8       #errorCode:I
    :cond_302
    move-object/from16 v0, p4

    iget v8, v0, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    goto/16 :goto_fa

    .line 602
    .end local v6           #deliveryStatus:Ljava/lang/String;
    .end local v8           #errorCode:I
    :cond_308
    const-string v19, "severity"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 603
    const-string v19, "urgency"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 604
    const-string v19, "response_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 605
    const-string v19, "certainty"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 606
    const-string v19, "category"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 607
    const-string v19, "expires"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto/16 :goto_158

    .line 654
    :cond_376
    const v19, 0x7f0902f4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const v19, 0x7f0902f0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_279
.end method

.method private static getUrgencyTextID(I)I
    .registers 2
    .parameter "msgUrgency"

    .prologue
    .line 682
    const v0, 0x7f0902e8

    .line 684
    .local v0, id:I
    packed-switch p0, :pswitch_data_10

    .line 694
    :goto_6
    return v0

    .line 687
    :pswitch_7
    const v0, 0x7f0902e4

    .line 688
    goto :goto_6

    .line 691
    :pswitch_b
    const v0, 0x7f0902e5

    goto :goto_6

    .line 684
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public static getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2255
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_c

    .line 2256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2287
    :goto_b
    return-object v0

    .line 2258
    :cond_c
    const-string v0, ""

    .line 2259
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2263
    :try_start_14
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_1e
    .catch Lcom/google/android/mms/MmsException; {:try_start_14 .. :try_end_1e} :catch_36

    .line 2269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2270
    instance-of v2, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_55

    .line 2272
    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_34
    move-object v0, v1

    .line 2287
    goto :goto_b

    .line 2264
    :catch_36
    move-exception v0

    .line 2265
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b

    .line 2277
    :cond_55
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 2278
    if-eqz v2, :cond_6b

    .line 2279
    const/4 v0, 0x0

    :goto_5c
    array-length v3, v2

    if-ge v0, v3, :cond_34

    .line 2280
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2279
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 2283
    :cond_6b
    const-string v0, "Mms/MessageUtils"

    const-string v2, "getViewTitleString : recipient list is empty!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public static handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v3, 0x3d

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1532
    const-string v1, "m_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1536
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_56

    .line 1537
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1539
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1541
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "m_id"

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1546
    if-nez v1, :cond_74

    .line 1606
    :cond_73
    :goto_73
    return-void

    .line 1550
    :cond_74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1552
    :try_start_79
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_91

    .line 1556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1558
    if-eqz p4, :cond_87

    .line 1559
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_af

    .line 1569
    :cond_87
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_73

    .line 1570
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 1564
    :cond_91
    :goto_91
    :try_start_91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 1565
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1566
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catchall {:try_start_91 .. :try_end_ae} :catchall_af

    goto :goto_91

    .line 1569
    :catchall_af
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b9

    .line 1570
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b9
    throw v0

    .line 1569
    :cond_ba
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c3

    .line 1570
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1574
    :cond_c3
    new-instance v1, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v1, v0, p0, p3, p4}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 1587
    new-instance v0, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v0, p4}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 1596
    new-instance v2, Lcom/android/mms/ui/MessageUtils$6;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/lang/Runnable;)V

    .line 1605
    invoke-static {p0, v1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_73
.end method

.method public static handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x3d

    .line 1612
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_10

    .line 1613
    if-eqz p4, :cond_f

    .line 1614
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 1676
    :cond_f
    :goto_f
    return-void

    .line 1619
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1620
    const-string v1, "m_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1626
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "m_id"

    aput-object v0, v3, v6

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1631
    if-eqz v1, :cond_81

    :try_start_75
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_81

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1632
    :cond_81
    if-eqz p4, :cond_86

    .line 1633
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_86
    .catchall {:try_start_75 .. :try_end_86} :catchall_b7

    .line 1642
    :cond_86
    if-eqz v1, :cond_f

    .line 1643
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_f

    .line 1637
    :cond_8c
    :try_start_8c
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1638
    invoke-static {p0, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1639
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_8c .. :try_end_9a} :catchall_b7

    move-result-object v3

    .line 1642
    if-eqz v1, :cond_a0

    .line 1643
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1646
    :cond_a0
    new-instance v0, Lcom/android/mms/ui/MessageUtils$7;

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1657
    new-instance v1, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 1666
    new-instance v2, Lcom/android/mms/ui/MessageUtils$9;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Ljava/lang/Runnable;)V

    .line 1675
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_f

    .line 1642
    :catchall_b7
    move-exception v0

    if-eqz v1, :cond_bd

    .line 1643
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bd
    throw v0
.end method

.method public static hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2340
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[hasNonGSMCharater] msgText.length() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 2346
    :goto_23
    if-eqz p0, :cond_5f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5f

    .line 2347
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2352
    const/16 v4, 0x3130

    if-ge v4, v3, :cond_37

    const/16 v4, 0x318d

    if-lt v3, v4, :cond_41

    :cond_37
    const v4, 0xabff

    if-ge v4, v3, :cond_42

    const v4, 0xd7a4

    if-ge v3, v4, :cond_42

    .line 2372
    :cond_41
    :goto_41
    return v0

    .line 2357
    :cond_42
    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-static {v3}, Lcom/android/mms/ui/GreekInputHandler;->isGreekInput(C)Z

    move-result v4

    if-nez v4, :cond_41

    .line 2361
    :cond_4e
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v3

    .line 2362
    const v4, 0xfeff

    if-ne v4, v3, :cond_59

    .line 2365
    const/4 v0, 0x1

    goto :goto_41

    .line 2368
    :cond_59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2346
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2370
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2371
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hasNonGSMCharater] stringBuilder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .registers 4
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    .line 1836
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1862
    :cond_7
    :goto_7
    return v1

    .line 1840
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1848
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1852
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1858
    .local v0, len:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v2

    if-lt v0, v2, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v2

    if-gt v0, v2, :cond_7

    .line 1862
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .registers 5
    .parameter "s"

    .prologue
    .line 1885
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1886
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 1887
    aget-char v0, v1, v2

    .line 1889
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_15

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_15

    .line 1886
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1892
    :cond_15
    const/16 v3, 0x41

    if-lt v0, v3, :cond_1d

    const/16 v3, 0x5a

    if-le v0, v3, :cond_12

    .line 1895
    :cond_1d
    const/16 v3, 0x30

    if-lt v0, v3, :cond_25

    const/16 v3, 0x39

    if-le v0, v3, :cond_12

    .line 1899
    :cond_25
    const/4 v3, 0x0

    .line 1901
    .end local v0           #c:C
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x1

    goto :goto_26
.end method

.method public static isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 2768
    .line 2776
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_5} :catch_34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_5} :catch_4f

    move-result-object v4

    .line 2778
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_9} :catch_a9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_9} :catch_a4

    move-result v1

    .line 2784
    :goto_a
    :try_start_a
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {v4, v1}, Lcom/android/mms/ui/MessageUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_13} :catch_a9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_13} :catch_a4

    .line 2786
    :try_start_13
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_16} :catch_a7

    move-result-object v3

    .line 2794
    if-eqz v4, :cond_1c

    .line 2796
    :try_start_19
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_2a

    .line 2803
    :cond_1c
    :goto_1c
    if-eqz v2, :cond_21

    .line 2805
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2f

    .line 2814
    :cond_21
    :goto_21
    if-nez v3, :cond_97

    .line 2816
    :cond_23
    :goto_23
    return v0

    .line 2779
    :catch_24
    move-exception v1

    .line 2781
    :try_start_25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_28} :catch_a9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_28} :catch_a4

    move v1, v0

    goto :goto_a

    .line 2797
    :catch_2a
    move-exception v1

    .line 2799
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 2806
    :catch_2f
    move-exception v1

    .line 2808
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 2788
    :catch_34
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    .line 2790
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_a2

    .line 2794
    if-eqz v4, :cond_3f

    .line 2796
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4a

    .line 2803
    :cond_3f
    :goto_3f
    if-eqz v2, :cond_21

    .line 2805
    :try_start_41
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_21

    .line 2806
    :catch_45
    move-exception v1

    .line 2808
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 2797
    :catch_4a
    move-exception v1

    .line 2799
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 2791
    :catch_4f
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    .line 2792
    :goto_52
    :try_start_52
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_a2

    .line 2794
    if-eqz v4, :cond_6f

    .line 2796
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_7a

    .line 2803
    :cond_6f
    :goto_6f
    if-eqz v2, :cond_21

    .line 2805
    :try_start_71
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_21

    .line 2806
    :catch_75
    move-exception v1

    .line 2808
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 2797
    :catch_7a
    move-exception v1

    .line 2799
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    .line 2794
    :catchall_7f
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_82
    if-eqz v4, :cond_87

    .line 2796
    :try_start_84
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_8d

    .line 2803
    :cond_87
    :goto_87
    if-eqz v2, :cond_8c

    .line 2805
    :try_start_89
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_92

    .line 2809
    :cond_8c
    :goto_8c
    throw v0

    .line 2797
    :catch_8d
    move-exception v1

    .line 2799
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 2806
    :catch_92
    move-exception v1

    .line 2808
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    .line 2816
    :cond_97
    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    move-result v1

    if-lez v1, :cond_23

    const/4 v0, 0x1

    goto :goto_23

    .line 2794
    :catchall_9f
    move-exception v0

    move-object v2, v3

    goto :goto_82

    :catchall_a2
    move-exception v0

    goto :goto_82

    .line 2791
    :catch_a4
    move-exception v1

    move-object v2, v3

    goto :goto_52

    :catch_a7
    move-exception v1

    goto :goto_52

    .line 2788
    :catch_a9
    move-exception v1

    move-object v2, v3

    goto :goto_37

    :catch_ac
    move-exception v1

    goto :goto_37
.end method

.method public static isAnimationEnable()Z
    .registers 4

    .prologue
    .line 2944
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "window_animation_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2946
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static isCBMessageAddress(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 2010
    const-string v0, "CBmessages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2011
    const/4 v0, 0x1

    .line 2013
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isContainKoreanChar(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2522
    .line 2524
    if-eqz p0, :cond_25

    .line 2525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_7
    move v2, v1

    .line 2527
    :goto_8
    if-ge v2, v0, :cond_21

    .line 2528
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2533
    const/16 v4, 0x3130

    if-ge v4, v3, :cond_16

    const/16 v4, 0x318d

    if-lt v3, v4, :cond_20

    :cond_16
    const v4, 0xabff

    if-ge v4, v3, :cond_22

    const v4, 0xd7a4

    if-ge v3, v4, :cond_22

    .line 2535
    :cond_20
    const/4 v1, 0x1

    .line 2538
    :cond_21
    return v1

    .line 2527
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_25
    move v0, v1

    goto :goto_7
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 2061
    if-eqz p0, :cond_d

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 2062
    const/4 v0, 0x0

    .line 2065
    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method public static isEmptySMSCAddress(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 2508
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2511
    const-string v1, "pref_key_manage_smsc_address"

    const-string v2, "Not set"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2512
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "Not set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2513
    :cond_1a
    const/4 v0, 0x1

    .line 2517
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 1415
    if-nez p0, :cond_4

    .line 1427
    :cond_3
    :goto_3
    return v0

    .line 1423
    :cond_4
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 1427
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2176
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2177
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v1

    .line 2180
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 2181
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2183
    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2184
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2c

    move-result-wide v0

    .line 2186
    if-eqz v2, :cond_2b

    .line 2187
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2205
    :cond_2b
    :goto_2b
    return-wide v0

    .line 2186
    :catchall_2c
    move-exception v0

    if-eqz v2, :cond_32

    .line 2187
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    throw v0

    .line 2191
    :cond_33
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v1

    .line 2194
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 2195
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2197
    :try_start_46
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2198
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_54

    move-result-wide v0

    .line 2200
    if-eqz v2, :cond_2b

    .line 2201
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2b

    .line 2200
    :catchall_54
    move-exception v0

    if-eqz v2, :cond_5a

    .line 2201
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
.end method

.method public static isNameAndNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2128
    const-string v1, " <"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2129
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2130
    const/4 v3, -0x1

    .line 2132
    if-ne v1, v3, :cond_11

    .line 2137
    :cond_10
    :goto_10
    return v0

    .line 2134
    :cond_11
    if-eq v2, v3, :cond_15

    if-le v2, v1, :cond_10

    .line 2135
    :cond_15
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static isNumberCanAddToContact(Ljava/lang/String;)Z
    .registers 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 1928
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1939
    :cond_7
    :goto_7
    return v1

    .line 1931
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1932
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1936
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1939
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isSpecialChar(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 1943
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_c

    const/16 v0, 0x25

    if-eq p0, v0, :cond_c

    const/16 v0, 0x24

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 2005
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static isValidSmsAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 2073
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2075
    const/4 v0, 0x0

    .line 2083
    :goto_7
    return v0

    .line 2082
    :cond_8
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2083
    .local v1, retVal:Ljava/lang/String;
    if-eqz v1, :cond_11

    const/4 v2, 0x1

    :goto_f
    move v0, v2

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static isWapPushMessageAddress(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 2017
    const-string v0, "Push message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2018
    const/4 v0, 0x1

    .line 2020
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2987
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3002
    :goto_6
    return-void

    .line 2989
    :cond_7
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make a call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2991
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2992
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2995
    :try_start_32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_6

    .line 2996
    :catch_36
    move-exception v1

    .line 2997
    const-string v1, "Mms/MessageUtils"

    const-string v2, "Call privilige not permitted, use ACTION_CALL instead"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2999
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2030
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2055
    .end local p0
    .local v0, retVal:Ljava/lang/String;
    :cond_7
    :goto_7
    return-object p0

    .line 2034
    .end local v0           #retVal:Ljava/lang/String;
    .restart local p0
    :cond_8
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2035
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2039
    :cond_12
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    .restart local v0       #retVal:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object p0, v1

    .line 2042
    goto :goto_7

    .line 2045
    :cond_20
    if-eqz v0, :cond_24

    move-object p0, v0

    .line 2046
    goto :goto_7

    .line 2050
    :cond_24
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object p0, v1

    .line 2055
    goto :goto_7
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "address"

    .prologue
    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1978
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1980
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_38

    .line 1981
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1984
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_20

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_20

    .line 1985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1980
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1989
    :cond_20
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 1994
    :cond_2a
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 1995
    const/4 v4, 0x0

    .line 1998
    .end local v1           #c:C
    :goto_37
    return-object v4

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_37
.end method

.method public static parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2093
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2094
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2098
    :cond_b
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2100
    .local v0, retVal:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v0, v1

    .line 2114
    .end local v0           #retVal:Ljava/lang/String;
    :cond_18
    :goto_18
    return-object v0

    .line 2104
    .restart local v0       #retVal:Ljava/lang/String;
    :cond_19
    if-nez v0, :cond_18

    .line 2109
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object v0, p0

    .line 2110
    goto :goto_18

    :cond_23
    move-object v0, v1

    .line 2114
    goto :goto_18
.end method

.method public static replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2735
    const/16 v0, 0xb

    new-array v4, v0, [C

    fill-array-data v4, :array_52

    .line 2737
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v1

    move-object v0, p0

    .line 2739
    :goto_e
    if-ge v3, v5, :cond_2f

    .line 2740
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move-object v2, v0

    move v0, v1

    .line 2742
    :goto_16
    array-length v7, v4

    if-ge v0, v7, :cond_2a

    .line 2743
    aget-char v7, v4, v0

    if-ne v6, v7, :cond_27

    .line 2744
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5f

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 2742
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 2739
    :cond_2a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v2

    goto :goto_e

    .line 2749
    :cond_2f
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceInvalidFilename(),from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    return-object v0

    .line 2735
    :array_52
    .array-data 0x2
        0x5ct 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x2at 0x0t
        0x3ft 0x0t
        0x22t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7ct 0x0t
        0x3bt 0x0t
        0xat 0x0t
    .end array-data
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1380
    return-object v0
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1280
    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090069

    invoke-virtual {v1, v2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1287
    invoke-virtual {v0, p5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1289
    return-object v0
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1249
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1251
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1252
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1253
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1254
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1262
    return-void
.end method

.method public static showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090163

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1402
    return-void
.end method

.method public static showSip(Landroid/view/View;I)V
    .registers 7
    .parameter "view"
    .parameter "delaytime"

    .prologue
    .line 3042
    move-object v0, p0

    .line 3044
    .local v0, curView:Landroid/view/View;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/MessageUtils$10;

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MessageUtils$10;-><init>(Landroid/view/View;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3053
    return-void
.end method

.method static streamToBytes(Ljava/io/InputStream;I)[B
    .registers 5
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 2758
    new-array v0, p1, [B

    .line 2760
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 2764
    :goto_6
    return-object v0

    .line 2761
    :catch_7
    move-exception v1

    .line 2762
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static textScaleX(Landroid/widget/TextView;)V
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x2

    const v3, 0x3f4ccccd

    const v2, 0x3f333333

    .line 2447
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_52

    .line 2471
    :cond_e
    :goto_e
    return-void

    .line 2449
    :sswitch_f
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2450
    if-le v0, v4, :cond_23

    .line 2451
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_e

    .line 2453
    :cond_23
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    .line 2455
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_3d

    .line 2456
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_e

    .line 2458
    :cond_3d
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_e

    .line 2463
    :sswitch_41
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_e

    .line 2466
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_e

    .line 2447
    nop

    :sswitch_data_52
    .sparse-switch
        0x7f08004b -> :sswitch_f
        0x7f0800ed -> :sswitch_41
    .end sparse-switch
.end method

.method public static viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x7f09018a

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 2638
    invoke-virtual {p1, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 2639
    const/4 v0, 0x0

    .line 2640
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-ne p3, v3, :cond_1a

    .line 2641
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    move-object v1, v0

    .line 2647
    :goto_17
    if-nez v1, :cond_38

    .line 2689
    :goto_19
    return-void

    .line 2642
    :cond_1a
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x6

    if-ne p3, v1, :cond_29

    .line 2643
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    move-object v1, v0

    goto :goto_17

    .line 2644
    :cond_29
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_bf

    const/4 v1, 0x7

    if-ne p3, v1, :cond_bf

    .line 2645
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    move-object v1, v0

    goto :goto_17

    .line 2650
    :cond_38
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_84

    if-ne p3, v3, :cond_84

    .line 2652
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2653
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2657
    :goto_4e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2659
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2660
    const-string v0, "android.intent.extra.showActionIcons"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2661
    const-string v0, "single_mode"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2664
    :try_start_6a
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_19

    .line 2665
    :catch_6e
    move-exception v0

    .line 2666
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 2655
    :cond_7f
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 2671
    :cond_84
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2672
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2674
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2675
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2679
    :goto_9c
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    :try_start_a3
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a3 .. :try_end_a6} :catch_a8

    goto/16 :goto_19

    .line 2683
    :catch_a8
    move-exception v0

    .line 2684
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 2677
    :cond_ba
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_9c

    :cond_bf
    move-object v1, v0

    goto/16 :goto_17
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1737
    if-nez p2, :cond_b

    const/4 v0, 0x0

    .line 1738
    :goto_3
    if-eqz v0, :cond_15

    if-nez p3, :cond_15

    .line 1741
    :try_start_7
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    .line 1765
    :goto_a
    return-void

    .line 1737
    :cond_b
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_3

    .line 1742
    :catch_10
    move-exception v0

    .line 1744
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1748
    :cond_15
    if-eqz p2, :cond_25

    .line 1749
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1751
    :try_start_1b
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1752
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1753
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_25
    .catch Lcom/google/android/mms/MmsException; {:try_start_1b .. :try_end_25} :catch_3a

    .line 1760
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1761
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1762
    const-string v1, "preview"

    const-string v2, "previewLaunch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 1754
    :catch_3a
    move-exception v0

    .line 1755
    const-string v0, "Mms/MessageUtils"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZJJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1769
    if-nez p2, :cond_b

    const/4 v0, 0x0

    .line 1770
    :goto_3
    if-eqz v0, :cond_15

    if-nez p3, :cond_15

    .line 1773
    :try_start_7
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    .line 1799
    :goto_a
    return-void

    .line 1769
    :cond_b
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_3

    .line 1774
    :catch_10
    move-exception v0

    .line 1776
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1780
    :cond_15
    if-eqz p2, :cond_25

    .line 1781
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1783
    :try_start_1b
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1784
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1785
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_25
    .catch Lcom/google/android/mms/MmsException; {:try_start_1b .. :try_end_25} :catch_44

    .line 1792
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1793
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1794
    const-string v1, "msgId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1795
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1796
    const-string v1, "preview"

    const-string v2, "previewLaunch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 1786
    :catch_44
    move-exception v0

    .line 1787
    const-string v0, "Mms/MessageUtils"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x7f09018a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1191
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_13
    invoke-virtual {p1, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1196
    const/4 v0, 0x0

    .line 1197
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1198
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    move-object v1, v0

    .line 1204
    :goto_23
    if-nez v1, :cond_3e

    .line 1246
    :goto_25
    return-void

    .line 1199
    :cond_26
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1200
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    move-object v1, v0

    goto :goto_23

    .line 1201
    :cond_32
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1202
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    move-object v1, v0

    goto :goto_23

    .line 1207
    :cond_3e
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1209
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1210
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1214
    :goto_52
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1216
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-string v0, "android.intent.extra.showActionIcons"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1218
    const-string v0, "single_mode"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1221
    :try_start_6d
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_70
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_25

    .line 1222
    :catch_71
    move-exception v0

    .line 1223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_25

    .line 1212
    :cond_82
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 1228
    :cond_87
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1231
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1232
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1236
    :goto_9f
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    :try_start_a6
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a6 .. :try_end_a9} :catch_ab

    goto/16 :goto_25

    .line 1240
    :catch_ab
    move-exception v0

    .line 1241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_25

    .line 1234
    :cond_bd
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_9f

    :cond_c2
    move-object v1, v0

    goto/16 :goto_23
.end method

.method public static writeHprofDataToFile()V
    .registers 4

    .prologue
    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mms_oom_hprof_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1828
    :try_start_17
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 1829
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### written hprof data to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_32} :catch_33

    .line 1833
    :goto_32
    return-void

    .line 1830
    :catch_33
    move-exception v0

    .line 1831
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHprofDataToFile: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method
