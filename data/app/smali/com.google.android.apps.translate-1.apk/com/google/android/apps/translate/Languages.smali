.class public final Lcom/google/android/apps/translate/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# static fields
.field private static final DEFAULT_ALPHA_LANGUAGES:[Ljava/lang/String; = null

.field private static final DEFAULT_FROM:Ljava/lang/String; = "en"

.field private static final DEFAULT_FROM_LANGUAGES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FROM_LANGUAGES_SPEC:[[Ljava/lang/String; = null

.field private static final DEFAULT_TO:Ljava/lang/String; = "es"

.field private static final DEFAULT_TO_LANGUAGES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String; = null

.field private static final DUMP_LANGUAGE_SEPARATOR:Ljava/lang/String; = "\t"

.field private static sAlphaLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFromLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mFromLanguagesInShort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mFromLanguagesLongToShort:Ljava/util/Map;
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

.field private mToLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mToLanguagesInShort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation
.end field

.field private mToLanguagesLongToShort:Ljava/util/Map;
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
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 33
    const/16 v4, 0x41

    new-array v4, v4, [[Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "auto"

    aput-object v6, v5, v8

    const-string v6, "Detect language"

    aput-object v6, v5, v9

    aput-object v5, v4, v8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "af"

    aput-object v6, v5, v8

    const-string v6, "Afrikaans"

    aput-object v6, v5, v9

    aput-object v5, v4, v9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "sq"

    aput-object v6, v5, v8

    const-string v6, "Albanian"

    aput-object v6, v5, v9

    aput-object v5, v4, v10

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "ar"

    aput-object v6, v5, v8

    const-string v6, "Arabic"

    aput-object v6, v5, v9

    aput-object v5, v4, v11

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "hy"

    aput-object v6, v5, v8

    const-string v6, "Armenian"

    aput-object v6, v5, v9

    aput-object v5, v4, v12

    const/4 v5, 0x5

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "az"

    aput-object v7, v6, v8

    const-string v7, "Azerbaijani"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "eu"

    aput-object v7, v6, v8

    const-string v7, "Basque"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "be"

    aput-object v7, v6, v8

    const-string v7, "Belarusian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "bn"

    aput-object v7, v6, v8

    const-string v7, "Bengali"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "bg"

    aput-object v7, v6, v8

    const-string v7, "Bulgarian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ca"

    aput-object v7, v6, v8

    const-string v7, "Catalan"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "zh-CN"

    aput-object v7, v6, v8

    const-string v7, "Chinese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hr"

    aput-object v7, v6, v8

    const-string v7, "Croatian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "cs"

    aput-object v7, v6, v8

    const-string v7, "Czech"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "da"

    aput-object v7, v6, v8

    const-string v7, "Danish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xf

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "nl"

    aput-object v7, v6, v8

    const-string v7, "Dutch"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x10

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "en"

    aput-object v7, v6, v8

    const-string v7, "English"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x11

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "eo"

    aput-object v7, v6, v8

    const-string v7, "Esperanto"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x12

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "et"

    aput-object v7, v6, v8

    const-string v7, "Estonian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x13

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "tl"

    aput-object v7, v6, v8

    const-string v7, "Filipino"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x14

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fi"

    aput-object v7, v6, v8

    const-string v7, "Finnish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x15

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fr"

    aput-object v7, v6, v8

    const-string v7, "French"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x16

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "gl"

    aput-object v7, v6, v8

    const-string v7, "Galician"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x17

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ka"

    aput-object v7, v6, v8

    const-string v7, "Georgian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "de"

    aput-object v7, v6, v8

    const-string v7, "German"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x19

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "el"

    aput-object v7, v6, v8

    const-string v7, "Greek"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "gu"

    aput-object v7, v6, v8

    const-string v7, "Gujarati"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ht"

    aput-object v7, v6, v8

    const-string v7, "Haitian Creole"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "iw"

    aput-object v7, v6, v8

    const-string v7, "Hebrew"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hi"

    aput-object v7, v6, v8

    const-string v7, "Hindi"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hu"

    aput-object v7, v6, v8

    const-string v7, "Hungarian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "is"

    aput-object v7, v6, v8

    const-string v7, "Icelandic"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x20

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "id"

    aput-object v7, v6, v8

    const-string v7, "Indonesian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x21

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ga"

    aput-object v7, v6, v8

    const-string v7, "Irish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x22

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "it"

    aput-object v7, v6, v8

    const-string v7, "Italian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x23

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ja"

    aput-object v7, v6, v8

    const-string v7, "Japanese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x24

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "kn"

    aput-object v7, v6, v8

    const-string v7, "Kannada"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x25

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ko"

    aput-object v7, v6, v8

    const-string v7, "Korean"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x26

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "la"

    aput-object v7, v6, v8

    const-string v7, "Latin"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x27

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "lv"

    aput-object v7, v6, v8

    const-string v7, "Latvian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x28

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "lt"

    aput-object v7, v6, v8

    const-string v7, "Lithuanian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x29

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "mk"

    aput-object v7, v6, v8

    const-string v7, "Macedonian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ms"

    aput-object v7, v6, v8

    const-string v7, "Malay"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "mt"

    aput-object v7, v6, v8

    const-string v7, "Maltese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "no"

    aput-object v7, v6, v8

    const-string v7, "Norwegian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fa"

    aput-object v7, v6, v8

    const-string v7, "Persian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "pl"

    aput-object v7, v6, v8

    const-string v7, "Polish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "pt"

    aput-object v7, v6, v8

    const-string v7, "Portuguese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x30

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ro"

    aput-object v7, v6, v8

    const-string v7, "Romanian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x31

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ru"

    aput-object v7, v6, v8

    const-string v7, "Russian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x32

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sr"

    aput-object v7, v6, v8

    const-string v7, "Serbian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x33

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sk"

    aput-object v7, v6, v8

    const-string v7, "Slovak"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x34

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sl"

    aput-object v7, v6, v8

    const-string v7, "Slovenian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x35

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "es"

    aput-object v7, v6, v8

    const-string v7, "Spanish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x36

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sw"

    aput-object v7, v6, v8

    const-string v7, "Swahili"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x37

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sv"

    aput-object v7, v6, v8

    const-string v7, "Swedish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x38

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ta"

    aput-object v7, v6, v8

    const-string v7, "Tamil"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x39

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "te"

    aput-object v7, v6, v8

    const-string v7, "Telugu"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "th"

    aput-object v7, v6, v8

    const-string v7, "Thai"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "tr"

    aput-object v7, v6, v8

    const-string v7, "Turkish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "uk"

    aput-object v7, v6, v8

    const-string v7, "Ukrainian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ur"

    aput-object v7, v6, v8

    const-string v7, "Urdu"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "vi"

    aput-object v7, v6, v8

    const-string v7, "Vietnamese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "cy"

    aput-object v7, v6, v8

    const-string v7, "Welsh"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x40

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "yi"

    aput-object v7, v6, v8

    const-string v7, "Yiddish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/android/apps/translate/Languages;->DEFAULT_FROM_LANGUAGES_SPEC:[[Ljava/lang/String;

    .line 106
    const/16 v4, 0x41

    new-array v4, v4, [[Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "af"

    aput-object v6, v5, v8

    const-string v6, "Afrikaans"

    aput-object v6, v5, v9

    aput-object v5, v4, v8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "sq"

    aput-object v6, v5, v8

    const-string v6, "Albanian"

    aput-object v6, v5, v9

    aput-object v5, v4, v9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "ar"

    aput-object v6, v5, v8

    const-string v6, "Arabic"

    aput-object v6, v5, v9

    aput-object v5, v4, v10

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "hy"

    aput-object v6, v5, v8

    const-string v6, "Armenian"

    aput-object v6, v5, v9

    aput-object v5, v4, v11

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "az"

    aput-object v6, v5, v8

    const-string v6, "Azerbaijani"

    aput-object v6, v5, v9

    aput-object v5, v4, v12

    const/4 v5, 0x5

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "eu"

    aput-object v7, v6, v8

    const-string v7, "Basque"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "be"

    aput-object v7, v6, v8

    const-string v7, "Belarusian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "bn"

    aput-object v7, v6, v8

    const-string v7, "Bengali"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "bg"

    aput-object v7, v6, v8

    const-string v7, "Bulgarian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ca"

    aput-object v7, v6, v8

    const-string v7, "Catalan"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "zh-CN"

    aput-object v7, v6, v8

    const-string v7, "Chinese (Simplified)"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "zh-TW"

    aput-object v7, v6, v8

    const-string v7, "Chinese (Traditional)"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hr"

    aput-object v7, v6, v8

    const-string v7, "Croatian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "cs"

    aput-object v7, v6, v8

    const-string v7, "Czech"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "da"

    aput-object v7, v6, v8

    const-string v7, "Danish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xf

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "nl"

    aput-object v7, v6, v8

    const-string v7, "Dutch"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x10

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "en"

    aput-object v7, v6, v8

    const-string v7, "English"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x11

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "eo"

    aput-object v7, v6, v8

    const-string v7, "Esperanto"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x12

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "et"

    aput-object v7, v6, v8

    const-string v7, "Estonian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x13

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "tl"

    aput-object v7, v6, v8

    const-string v7, "Filipino"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x14

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fi"

    aput-object v7, v6, v8

    const-string v7, "Finnish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x15

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fr"

    aput-object v7, v6, v8

    const-string v7, "French"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x16

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "gl"

    aput-object v7, v6, v8

    const-string v7, "Galician"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x17

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ka"

    aput-object v7, v6, v8

    const-string v7, "Georgian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "de"

    aput-object v7, v6, v8

    const-string v7, "German"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x19

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "el"

    aput-object v7, v6, v8

    const-string v7, "Greek"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "gu"

    aput-object v7, v6, v8

    const-string v7, "Gujarati"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ht"

    aput-object v7, v6, v8

    const-string v7, "Haitian Creole"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "iw"

    aput-object v7, v6, v8

    const-string v7, "Hebrew"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hi"

    aput-object v7, v6, v8

    const-string v7, "Hindi"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hu"

    aput-object v7, v6, v8

    const-string v7, "Hungarian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "is"

    aput-object v7, v6, v8

    const-string v7, "Icelandic"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x20

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "id"

    aput-object v7, v6, v8

    const-string v7, "Indonesian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x21

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ga"

    aput-object v7, v6, v8

    const-string v7, "Irish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x22

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "it"

    aput-object v7, v6, v8

    const-string v7, "Italian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x23

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ja"

    aput-object v7, v6, v8

    const-string v7, "Japanese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x24

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "kn"

    aput-object v7, v6, v8

    const-string v7, "Kannada"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x25

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ko"

    aput-object v7, v6, v8

    const-string v7, "Korean"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x26

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "la"

    aput-object v7, v6, v8

    const-string v7, "Latin"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x27

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "lv"

    aput-object v7, v6, v8

    const-string v7, "Latvian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x28

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "lt"

    aput-object v7, v6, v8

    const-string v7, "Lithuanian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x29

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "mk"

    aput-object v7, v6, v8

    const-string v7, "Macedonian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ms"

    aput-object v7, v6, v8

    const-string v7, "Malay"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "mt"

    aput-object v7, v6, v8

    const-string v7, "Maltese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "no"

    aput-object v7, v6, v8

    const-string v7, "Norwegian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fa"

    aput-object v7, v6, v8

    const-string v7, "Persian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "pl"

    aput-object v7, v6, v8

    const-string v7, "Polish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "pt"

    aput-object v7, v6, v8

    const-string v7, "Portuguese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x30

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ro"

    aput-object v7, v6, v8

    const-string v7, "Romanian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x31

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ru"

    aput-object v7, v6, v8

    const-string v7, "Russian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x32

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sr"

    aput-object v7, v6, v8

    const-string v7, "Serbian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x33

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sk"

    aput-object v7, v6, v8

    const-string v7, "Slovak"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x34

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sl"

    aput-object v7, v6, v8

    const-string v7, "Slovenian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x35

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "es"

    aput-object v7, v6, v8

    const-string v7, "Spanish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x36

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sw"

    aput-object v7, v6, v8

    const-string v7, "Swahili"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x37

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sv"

    aput-object v7, v6, v8

    const-string v7, "Swedish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x38

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ta"

    aput-object v7, v6, v8

    const-string v7, "Tamil"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x39

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "te"

    aput-object v7, v6, v8

    const-string v7, "Telugu"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "th"

    aput-object v7, v6, v8

    const-string v7, "Thai"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "tr"

    aput-object v7, v6, v8

    const-string v7, "Turkish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "uk"

    aput-object v7, v6, v8

    const-string v7, "Ukrainian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ur"

    aput-object v7, v6, v8

    const-string v7, "Urdu"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "vi"

    aput-object v7, v6, v8

    const-string v7, "Vietnamese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "cy"

    aput-object v7, v6, v8

    const-string v7, "Welsh"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x40

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "yi"

    aput-object v7, v6, v8

    const-string v7, "Yiddish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/android/apps/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    .line 179
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "hy"

    aput-object v5, v4, v8

    const-string v5, "az"

    aput-object v5, v4, v9

    const-string v5, "eu"

    aput-object v5, v4, v10

    const-string v5, "ka"

    aput-object v5, v4, v11

    const-string v5, "la"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    const-string v6, "ur"

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/android/apps/translate/Languages;->DEFAULT_ALPHA_LANGUAGES:[Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/translate/Languages;->DEFAULT_FROM_LANGUAGES:Ljava/util/List;

    .line 189
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/translate/Languages;->DEFAULT_TO_LANGUAGES:Ljava/util/List;

    .line 190
    invoke-static {}, Lcom/google/android/apps/translate/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/translate/Languages;->sAlphaLanguages:Ljava/util/Set;

    .line 193
    sget-object v0, Lcom/google/android/apps/translate/Languages;->DEFAULT_FROM_LANGUAGES_SPEC:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_747
    if-ge v1, v3, :cond_75c

    aget-object v2, v0, v1

    .line 194
    .local v2, l:[Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/translate/Languages;->DEFAULT_FROM_LANGUAGES:Ljava/util/List;

    new-instance v5, Lcom/google/android/apps/translate/Language;

    aget-object v6, v2, v8

    aget-object v7, v2, v9

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/translate/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_747

    .line 197
    .end local v2           #l:[Ljava/lang/String;
    :cond_75c
    sget-object v0, Lcom/google/android/apps/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_760
    if-ge v1, v3, :cond_775

    aget-object v2, v0, v1

    .line 198
    .restart local v2       #l:[Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/translate/Languages;->DEFAULT_TO_LANGUAGES:Ljava/util/List;

    new-instance v5, Lcom/google/android/apps/translate/Language;

    aget-object v6, v2, v8

    aget-object v7, v2, v9

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/translate/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_760

    .line 202
    .end local v2           #l:[Ljava/lang/String;
    :cond_775
    sget-object v0, Lcom/google/android/apps/translate/Languages;->DEFAULT_ALPHA_LANGUAGES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    const/4 v1, 0x0

    :goto_779
    if-ge v1, v3, :cond_785

    aget-object v2, v0, v1

    .line 203
    .local v2, l:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/translate/Languages;->sAlphaLanguages:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_779

    .line 205
    .end local v2           #l:Ljava/lang/String;
    :cond_785
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "dump"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguages:Ljava/util/List;

    .line 211
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mToLanguages:Ljava/util/List;

    .line 212
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesLongToShort:Ljava/util/Map;

    .line 213
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesInShort:Ljava/util/Map;

    .line 214
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesLongToShort:Ljava/util/Map;

    .line 215
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesInShort:Ljava/util/Map;

    .line 230
    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, languageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->generateFromLanguagesFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguages:Ljava/util/List;

    .line 232
    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->generateToLanguagesFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/translate/Languages;->mToLanguages:Ljava/util/List;

    .line 233
    invoke-direct {p0}, Lcom/google/android/apps/translate/Languages;->setLanguageMaps()V

    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, fromLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    .local p2, toLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguages:Ljava/util/List;

    .line 211
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/Languages;->mToLanguages:Ljava/util/List;

    .line 212
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesLongToShort:Ljava/util/Map;

    .line 213
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesInShort:Ljava/util/Map;

    .line 214
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesLongToShort:Ljava/util/Map;

    .line 215
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesInShort:Ljava/util/Map;

    .line 221
    iput-object p1, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguages:Ljava/util/List;

    .line 222
    iput-object p2, p0, Lcom/google/android/apps/translate/Languages;->mToLanguages:Ljava/util/List;

    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/translate/Languages;->setLanguageMaps()V

    .line 224
    return-void
.end method

.method public static getBestChineseToLanguage(Ljava/util/List;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 3
    .parameter
    .parameter "languageList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Lcom/google/android/apps/translate/Language;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, recentLanguageTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Languages;->guessChinese(Ljava/util/List;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 422
    .local v0, l:Lcom/google/android/apps/translate/Language;
    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/google/android/apps/translate/Languages;->getDefaultChineseToLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .end local v0           #l:Lcom/google/android/apps/translate/Language;
    :cond_a
    return-object v0
.end method

.method public static getDefaultChineseFromLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "languageList"

    .prologue
    .line 429
    const-string v0, "zh-CN"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultChineseToLanguage(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "languageList"

    .prologue
    .line 436
    const-string v0, "zh-CN"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultFromLanguages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/google/android/apps/translate/Languages;->DEFAULT_FROM_LANGUAGES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultToLanguages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/google/android/apps/translate/Languages;->DEFAULT_TO_LANGUAGES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static guessChinese(Ljava/util/List;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 3
    .parameter
    .parameter "languageList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Lcom/google/android/apps/translate/Language;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, recentLanguageTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Languages;->guessChineseFromRecentTargets(Ljava/util/List;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 444
    .local v0, zhLanguage:Lcom/google/android/apps/translate/Language;
    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/google/android/apps/translate/Languages;->guessChineseFromPhoneLocale(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .end local v0           #zhLanguage:Lcom/google/android/apps/translate/Language;
    :cond_a
    return-object v0
.end method

.method private static guessChineseFromPhoneLocale(Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 3
    .parameter "languageList"

    .prologue
    .line 461
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 463
    .local v0, defaultLocaleLanguage:Lcom/google/android/apps/translate/Language;
    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/google/android/apps/translate/Languages;->isChinese(Lcom/google/android/apps/translate/Language;)Z

    move-result v1

    if-eqz v1, :cond_11

    .end local v0           #defaultLocaleLanguage:Lcom/google/android/apps/translate/Language;
    :goto_10
    return-object v0

    .restart local v0       #defaultLocaleLanguage:Lcom/google/android/apps/translate/Language;
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static guessChineseFromRecentTargets(Ljava/util/List;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/Language;
    .registers 5
    .parameter
    .parameter "languageList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Lcom/google/android/apps/translate/Languages;",
            ")",
            "Lcom/google/android/apps/translate/Language;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, recentLanguageTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    if-eqz p0, :cond_19

    .line 451
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 452
    .local v1, target:Lcom/google/android/apps/translate/Language;
    invoke-static {v1}, Lcom/google/android/apps/translate/Languages;->isChinese(Lcom/google/android/apps/translate/Language;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 457
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #target:Lcom/google/android/apps/translate/Language;
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static isAlphaLanguage(Lcom/google/android/apps/translate/Language;)Z
    .registers 3
    .parameter "language"

    .prologue
    .line 391
    sget-object v0, Lcom/google/android/apps/translate/Languages;->sAlphaLanguages:Ljava/util/Set;

    .line 392
    .local v0, setRef:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isChinese(Lcom/google/android/apps/translate/Language;)Z
    .registers 5
    .parameter "language"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, shortName:Ljava/lang/String;
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 413
    .local v0, pos:I
    const-string v2, "zh"

    if-lez v0, :cond_13

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1           #shortName:Ljava/lang/String;
    :cond_13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static setAlphaLanguages(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, languageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->generateAlphaLanguagesFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 400
    .local v1, alphaLangs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {}, Lcom/google/android/apps/translate/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 401
    .local v0, alphaLangSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translate/Language;

    .line 402
    .local v3, l:Lcom/google/android/apps/translate/Language;
    invoke-virtual {v3}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 404
    .end local v3           #l:Lcom/google/android/apps/translate/Language;
    :cond_20
    sput-object v0, Lcom/google/android/apps/translate/Languages;->sAlphaLanguages:Ljava/util/Set;

    .line 405
    return-void
.end method

.method private setLanguageMaps()V
    .registers 6

    .prologue
    .line 238
    iget-object v2, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 239
    .local v1, language:Lcom/google/android/apps/translate/Language;
    iget-object v2, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesLongToShort:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesInShort:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 242
    .end local v1           #language:Lcom/google/android/apps/translate/Language;
    :cond_29
    iget-object v2, p0, Lcom/google/android/apps/translate/Languages;->mToLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/Language;

    .line 243
    .restart local v1       #language:Lcom/google/android/apps/translate/Language;
    iget-object v2, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesLongToShort:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesInShort:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 246
    .end local v1           #language:Lcom/google/android/apps/translate/Language;
    :cond_52
    return-void
.end method


# virtual methods
.method public dumpLanguages()Ljava/lang/String;
    .registers 7

    .prologue
    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v2, out:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    .line 374
    .local v0, each:Lcom/google/android/apps/translate/Language;
    const-string v3, "sl"

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/translate/Translate;->generateLanguageTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 378
    .end local v0           #each:Lcom/google/android/apps/translate/Language;
    :cond_2f
    iget-object v3, p0, Lcom/google/android/apps/translate/Languages;->mToLanguages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    .line 379
    .restart local v0       #each:Lcom/google/android/apps/translate/Language;
    const-string v3, "tl"

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/translate/Translate;->generateLanguageTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 384
    .end local v0           #each:Lcom/google/android/apps/translate/Language;
    :cond_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDefaultFrom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    const-string v0, "en"

    return-object v0
.end method

.method public getDefaultFromLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Languages;->getDefaultFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesInShort:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "es"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 267
    const-string v0, "es"

    .line 269
    :goto_10
    return-object v0

    :cond_11
    const-string v0, "en"

    goto :goto_10
.end method

.method public getDefaultToLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Languages;->getDefaultTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    return-object v0
.end method

.method public getFromLanguageByLongName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;
    .registers 4
    .parameter "longName"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesLongToShort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, shortName:Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    goto :goto_b
.end method

.method public getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;
    .registers 3
    .parameter "shortName"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesInShort:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getFromLanguageLongName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "shortName"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 335
    .local v0, language:Lcom/google/android/apps/translate/Language;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFromLanguageShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "longName"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguagesLongToShort:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFromLanguages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/apps/translate/Languages;->mFromLanguages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedToLanguages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/translate/Languages;->mToLanguages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToLanguageByLongName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;
    .registers 4
    .parameter "longName"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesLongToShort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, shortName:Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    goto :goto_b
.end method

.method public getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;
    .registers 3
    .parameter "shortName"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesInShort:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getToLanguageLongName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "shortName"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 365
    .local v0, language:Lcom/google/android/apps/translate/Language;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getToLanguageShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "longName"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/apps/translate/Languages;->mToLanguagesLongToShort:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
