.class public final Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/regex/Pattern;

.field private final c:Ljava/util/regex/Pattern;

.field private final d:Ljava/util/regex/Pattern;

.field private final e:Ljava/util/regex/Pattern;

.field private f:Lcom/google/android/marvin/utils/c;

.field private final g:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "<(.)+?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->b:Ljava/util/regex/Pattern;

    const-string v0, "&(.)+?;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->c:Ljava/util/regex/Pattern;

    const-string v0, "</?(div|span).*?>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->d:Ljava/util/regex/Pattern;

    const-string v0, "(<(img|input|br).+?)>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->e:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->f:Lcom/google/android/marvin/utils/c;

    new-instance v0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;-><init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->g:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    return-void
.end method

.method private static a(Landroid/content/Context;II)Ljava/util/Map;
    .registers 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v1

    array-length v3, v2

    if-eq v0, v3, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_1e
    array-length v4, v1

    if-lt v0, v4, :cond_22

    return-object v3

    :cond_22
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 11

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_d
    return v0

    :cond_e
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->g:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->g:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    invoke-static {v2}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->a(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I

    move-result v2

    if-ne v2, v5, :cond_87

    invoke-static {v3}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->b(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I

    move-result v2

    sget-object v3, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->a:[Ljava/lang/String;

    if-nez v3, :cond_7a

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f0700a4

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const v0, 0x7f0700a5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const v4, 0x7f0700a6

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const v0, 0x7f0700a7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x4

    const v4, 0x7f0700a8

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const v4, 0x7f0700a9

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const v4, 0x7f0700aa

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const v4, 0x7f0700ab

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    sput-object v3, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->a:[Ljava/lang/String;

    :cond_7a
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_d

    :cond_87
    invoke-static {p1}, Lcom/google/android/marvin/talkback/ae;->b(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v4, "$1/>"

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><div>%s</div>"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->f:Lcom/google/android/marvin/utils/c;

    if-nez v2, :cond_f2

    const v2, 0x7f060004

    const v4, 0x7f060005

    invoke-static {p2, v2, v4}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->a(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v2

    const v4, 0x7f060006

    const v5, 0x7f060007

    invoke-static {p2, v4, v5}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->a(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v4

    const v5, 0x7f060008

    const v6, 0x7f060009

    invoke-static {p2, v5, v6}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->a(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/google/android/marvin/utils/c;

    invoke-direct {v6, v2, v4, v5}, Lcom/google/android/marvin/utils/c;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v6, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->f:Lcom/google/android/marvin/utils/c;

    :cond_f2
    :try_start_f2
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->f:Lcom/google/android/marvin/utils/c;

    invoke-static {v0, v2}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->f:Lcom/google/android/marvin/utils/c;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_104
    .catch Lorg/xml/sax/SAXException; {:try_start_f2 .. :try_end_104} :catch_107

    :goto_104
    move v0, v1

    goto/16 :goto_d

    :catch_107
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_104
.end method
