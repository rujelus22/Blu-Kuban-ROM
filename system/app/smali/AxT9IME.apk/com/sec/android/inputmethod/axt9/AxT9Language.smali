.class public Lcom/sec/android/inputmethod/axt9/AxT9Language;
.super Ljava/lang/Object;
.source "AxT9Language.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field public static final LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field private final mDefaultLangInfo:Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

.field private mLanguageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v8, 0x9

    const/4 v7, 0x0

    .line 54
    const/16 v0, 0x9e

    new-array v0, v0, [Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const-string v2, "none"

    const-string v3, ""

    invoke-direct {v1, v7, v7, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const-string v2, "Arabic"

    const-string v3, "ar"

    invoke-direct {v1, v4, v7, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const v2, 0x7f0a00fb

    const-string v3, "Bulgarian"

    const-string v4, "bg"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const-string v2, "Catalan"

    const-string v3, "ca"

    invoke-direct {v1, v6, v7, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/4 v3, 0x4

    const-string v4, "Chinese"

    const-string v5, "zh"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/4 v3, 0x5

    const v4, 0x7f0a0045

    const-string v5, "Czech"

    const-string v6, "cs"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/4 v3, 0x6

    const v4, 0x7f0a0046

    const-string v5, "Danish"

    const-string v6, "da"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/4 v3, 0x7

    const v4, 0x7f0a0047

    const-string v5, "German"

    const-string v6, "de"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x8

    const v4, 0x7f0a005b

    const-string v5, "Greek"

    const-string v6, "el"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const v2, 0x7f0a0049

    const-string v3, "English(UK)"

    const-string v4, "en(UK)"

    invoke-direct {v1, v8, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/16 v1, 0xa

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const v3, 0x7f0a004a

    const-string v4, "English(US)"

    const-string v5, "en(US)"

    invoke-direct {v2, v8, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xa

    const v4, 0x7f0a004b

    const-string v5, "Spanish"

    const-string v6, "es"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xb

    const v4, 0x7f0a004c

    const-string v5, "Finnish"

    const-string v6, "fi"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xc

    const v4, 0x7f0a004d

    const-string v5, "French"

    const-string v6, "fr"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xd

    const-string v4, "Hebrew"

    const-string v5, "he"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xe

    const v4, 0x7f0a005e

    const-string v5, "Hungarian"

    const-string v6, "hu"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xf

    const v4, 0x7f0a00fd

    const-string v5, "Icelandic"

    const-string v6, "is"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x10

    const v4, 0x7f0a004e

    const-string v5, "Italian"

    const-string v6, "it"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x11

    const-string v4, "Japanese"

    const-string v5, "ja"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x12

    const v4, 0x7f0a008e

    const-string v5, "Korean"

    const-string v6, "ko"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x13

    const v4, 0x7f0a004f

    const-string v5, "Dutch"

    const-string v6, "nl"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x14

    const v4, 0x7f0a0050

    const-string v5, "Norwegian"

    const-string v6, "no"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x15

    const v4, 0x7f0a0051

    const-string v5, "Polish"

    const-string v6, "pl"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x16

    const v4, 0x7f0a0052

    const-string v5, "Portuguese"

    const-string v6, "pt"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x17

    const-string v4, "RhaetoRomance"

    const-string v5, "rm"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x18

    const v4, 0x7f0a0053

    const-string v5, "Romanian"

    const-string v6, "ro"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x19

    const v4, 0x7f0a005c

    const-string v5, "Russian"

    const-string v6, "ru"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x1a

    const-string v4, "SerboCroatian"

    const-string v5, "sh"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x1b

    const v4, 0x7f0a0057

    const-string v5, "Slovak"

    const-string v6, "sk"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x1c

    const-string v4, "Albanian"

    const-string v5, "sq"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x1d

    const v4, 0x7f0a0054

    const-string v5, "Swedish"

    const-string v6, "sv"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x1e

    const-string v4, "Thai"

    const-string v5, "th"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x1f

    const v4, 0x7f0a0056

    const-string v5, "Turkish"

    const-string v6, "tr"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x20

    const-string v4, "Urdu"

    const-string v5, "ur"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x21

    const-string v4, "Indonesian"

    const-string v5, "id"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x22

    const v4, 0x7f0a005d

    const-string v5, "Ukrainian"

    const-string v6, "uk"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x23

    const-string v4, "Byelorussian"

    const-string v5, "be"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x24

    const v4, 0x7f0a0058

    const-string v5, "Slovenian"

    const-string v6, "sl"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x25

    const v4, 0x7f0a00fc

    const-string v5, "Estonian"

    const-string v6, "et"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x26

    const v4, 0x7f0a0100

    const-string v5, "Latvian"

    const-string v6, "lv"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x27

    const v4, 0x7f0a0101

    const-string v5, "Lithuanian"

    const-string v6, "lt"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x28

    const-string v4, "Maori"

    const-string v5, "mi"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x29

    const-string v4, "Farsi"

    const-string v5, "fa"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x2a

    const-string v4, "Vietnamese"

    const-string v5, "vi"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x2b

    const-string v4, "Lao"

    const-string v5, "lo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x2c

    const-string v4, "Khmer"

    const-string v5, "km"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x2d

    const-string v4, "Basque"

    const-string v5, "eu"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x2e

    const-string v4, "Sorbian"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x2f

    const v4, 0x7f0a0059

    const-string v5, "Macedonian"

    const-string v6, "mk"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x30

    const-string v4, "Sutu"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x31

    const-string v4, "Tsonga"

    const-string v5, "ts"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x32

    const-string v4, "Tswana"

    const-string v5, "tn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x33

    const-string v4, "Venda"

    const-string v5, "ve"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x34

    const-string v4, "Xhosa"

    const-string v5, "xh"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x35

    const-string v4, "Zulu "

    const-string v5, "zu"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x36

    const-string v4, "Afrikaans"

    const-string v5, "af"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const-string v3, "none"

    const-string v4, ""

    invoke-direct {v2, v7, v7, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x38

    const-string v4, "Faeroese"

    const-string v5, "fo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x39

    const-string v4, "Hindi"

    const-string v5, "hi"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x3a

    const-string v4, "Maltese"

    const-string v5, "mt"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x3b

    const-string v4, "Sami"

    const-string v5, "se"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x3c

    const-string v4, "ScotsGaelic"

    const-string v5, "gd"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const-string v3, "none"

    const-string v4, ""

    invoke-direct {v2, v7, v7, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x3e

    const v4, 0x7f0a005a

    const-string v5, "Malay"

    const-string v6, "ms"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const-string v3, "none"

    const-string v4, ""

    invoke-direct {v2, v7, v7, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const-string v3, "none"

    const-string v4, ""

    invoke-direct {v2, v7, v7, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x41

    const-string v4, "Swahili"

    const-string v5, "sw"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x42

    const-string v4, "Afar"

    const-string v5, "aa"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x43

    const-string v4, "Abkhazian"

    const-string v5, "ab"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x44

    const-string v4, "Amharic"

    const-string v5, "am"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x45

    const-string v4, "Assamese"

    const-string v5, "as"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x46

    const-string v4, "Aymara"

    const-string v5, "ay"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x47

    const-string v4, "Azerbaijani"

    const-string v5, "az"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x48

    const-string v4, "Bashkir"

    const-string v5, "ba"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x49

    const-string v4, "Bihari"

    const-string v5, "h "

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x4a

    const-string v4, "Bislama"

    const-string v5, "bi"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x4b

    const-string v4, "Bengali"

    const-string v5, "bn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x4c

    const-string v4, "Tibetan"

    const-string v5, "bo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x4d

    const-string v4, "Breton"

    const-string v5, "br"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x4e

    const-string v4, "Corsican"

    const-string v5, "co"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x4f

    const-string v4, "Welsh"

    const-string v5, "cy"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x50

    const-string v4, "Bhutani"

    const-string v5, "dz"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x51

    const-string v4, "Esperanto"

    const-string v5, "eo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x52

    const-string v4, "Fiji"

    const-string v5, "fj"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x53

    const-string v4, "Frisian"

    const-string v5, "fy"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x54

    const v4, 0x7f0a00fe

    const-string v5, "Irish"

    const-string v6, "ga"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x55

    const-string v4, "Galician"

    const-string v5, "gl"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x56

    const-string v4, "Guarani"

    const-string v5, "gn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x57

    const-string v4, "Gujarati"

    const-string v5, "gu"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x58

    const-string v4, "Hausa"

    const-string v5, "ha"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x59

    const v4, 0x7f0a0055

    const-string v5, "Croatian"

    const-string v6, "hr"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x5a

    const-string v4, "Armenian"

    const-string v5, "hy"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x5b

    const-string v4, "Interlingua"

    const-string v5, "ia"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x5c

    const-string v4, "Interlingue"

    const-string v5, "ie"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x5d

    const-string v4, "Inupiak"

    const-string v5, "ik"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x5e

    const-string v4, "Inuktitut"

    const-string v5, "iu"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x5f

    const-string v4, "Javanese"

    const-string v5, "jv"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x60

    const-string v4, "Georgian"

    const-string v5, "ka"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x61

    const v4, 0x7f0a00ff

    const-string v5, "Kazakh"

    const-string v6, "kk"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x62

    const-string v4, "Greenlandic"

    const-string v5, "kl"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x63

    const-string v4, "Kannada"

    const-string v5, "kn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x64

    const-string v4, "Kashmiri"

    const-string v5, "ks"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x65

    const-string v4, "Kurdish"

    const-string v5, "ku"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x66

    const-string v4, "Kirghiz"

    const-string v5, "ky"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x67

    const-string v4, "Latin"

    const-string v5, "la"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x68

    const-string v4, "Lingala"

    const-string v5, "ln"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x69

    const-string v4, "Malagasy"

    const-string v5, "mg"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x6a

    const-string v4, "Malayalam"

    const-string v5, "ml"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x6b

    const-string v4, "Mongolian"

    const-string v5, "mn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x6c

    const-string v4, "Moldavian"

    const-string v5, "mo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x6d

    const-string v4, "Marathi"

    const-string v5, "mr"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x6e

    const-string v4, "Burmese"

    const-string v5, "my"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x6f

    const-string v4, "Nauru"

    const-string v5, "na"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x70

    const-string v4, "Nepali"

    const-string v5, "ne"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x71

    const-string v4, "Occitan"

    const-string v5, "oc"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x72

    const-string v4, "Oromo"

    const-string v5, "om"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x73

    const-string v4, "Oriya"

    const-string v5, "or"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x74

    const-string v4, "Punjabi"

    const-string v5, "pa"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x75

    const-string v4, "Pashto"

    const-string v5, "ps"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x76

    const-string v4, "Quechua"

    const-string v5, "qu"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x77

    const-string v4, "Kirundi"

    const-string v5, "rn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x78

    const-string v4, "Kiyarwanda"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x79

    const-string v4, "Sanskrit"

    const-string v5, "sa"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x7a

    const-string v4, "Sindhi"

    const-string v5, "sd"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x7b

    const-string v4, "Sangho"

    const-string v5, "sg"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x7c

    const-string v4, "Sinhala"

    const-string v5, "si"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x7d

    const-string v4, "Samoan"

    const-string v5, "sm"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x7e

    const-string v4, "Shona"

    const-string v5, "sn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x7f

    const-string v4, "Somali"

    const-string v5, "so"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x80

    const v4, 0x7f0a005f

    const-string v5, "Serbian"

    const-string v6, "sr"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x81

    const-string v4, "Siswati"

    const-string v5, "ss"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x82

    const-string v4, "Sesotho"

    const-string v5, "st"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x83

    const-string v4, "Sudanese"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x84

    const-string v4, "Tamil"

    const-string v5, "ta"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x85

    const-string v4, "Telugu"

    const-string v5, "te"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x86

    const-string v4, "Tajik"

    const-string v5, "tg"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x87

    const-string v4, "Tigrinya"

    const-string v5, "ti"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x88

    const-string v4, "Turkmen"

    const-string v5, "tk"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x89

    const-string v4, "Tagalog"

    const-string v5, "tl"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x8a

    const-string v4, "Setswana"

    const-string v5, "tn"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x8b

    const-string v4, "Tonga"

    const-string v5, "to"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x8c

    const-string v4, "Tatar"

    const-string v5, "tt"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x8d

    const-string v4, "Twi"

    const-string v5, "tw"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x8e

    const-string v4, "Uyghur"

    const-string v5, "ug"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x8f

    const-string v4, "Uzbek"

    const-string v5, "uz"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x90

    const-string v4, "Volapuk"

    const-string v5, "vo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x91

    const-string v4, "Wolof"

    const-string v5, "wo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x92

    const-string v4, "Yiddish"

    const-string v5, "yi"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x93

    const-string v4, "Yoruba"

    const-string v5, "yo"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x94

    const-string v4, "Zhuang"

    const-string v5, "za"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x95

    const-string v4, "Igbo"

    const-string v5, "ig"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0x96

    const-string v4, "Tamazight"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xd0

    const-string v4, "Hinglish"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xd1

    const-string v4, "Spanglish"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xe0

    const-string v4, "ChineseTraditional"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xe1

    const-string v4, "ChineseSimplified"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xe2

    const-string v4, "ChineseHongkong"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v3, 0xe3

    const-string v4, "ChineseSingapore"

    const-string v5, ""

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;-><init>(SILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    .line 215
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->DEBUG:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->ERROR:Z

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mLanguageInfoList:Ljava/util/List;

    .line 217
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mDefaultLangInfo:Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    .line 220
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->makeLanguageInfoList()I

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->LANG_LIST:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 222
    :cond_27
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mLanguageInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mDefaultLangInfo:Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_2e
    return-void
.end method

.method public static getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;
    .registers 1

    .prologue
    .line 239
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->INSTANCE:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    return-object v0
.end method

.method private makeLanguageInfoList()I
    .registers 8

    .prologue
    .line 243
    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9Config;->LANG_LIST:Ljava/lang/String;

    .line 244
    .local v2, list:Ljava/lang/String;
    const-string v0, ";"

    .line 245
    .local v0, delimiter:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 247
    .local v4, st:Ljava/util/StringTokenizer;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 249
    :cond_e
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 250
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, locale:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    array-length v5, v5

    if-ge v1, v5, :cond_e

    .line 252
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 253
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mLanguageInfoList:Ljava/util/List;

    sget-object v6, Lcom/sec/android/inputmethod/axt9/AxT9Language;->LANGUAGE_INFO_LIST:[Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    aget-object v6, v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 258
    .end local v1           #i:I
    .end local v3           #locale:Ljava/lang/String;
    :cond_3a
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    return v5
.end method


# virtual methods
.method public getLanguageInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mLanguageInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getLanguageInfoListSize()I
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
