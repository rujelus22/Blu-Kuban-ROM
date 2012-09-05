.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:[Ljava/lang/Object;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\s)*<=(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\s)*>=(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\s)*<(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->c:Ljava/util/regex/Pattern;

    const-string v0, "(\\s)*>(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->d:Ljava/util/regex/Pattern;

    const-string v0, "(.)+\\|\\|(.)+(\\|\\|(.)+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->e:Ljava/util/regex/Pattern;

    const-string v0, "(\\s)*\\|\\|(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->g:Ljava/lang/String;

    if-nez p3, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_18
    sget-object v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_41

    iput v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    const-string v1, "<="

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v1

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    goto :goto_b

    :cond_41
    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    :cond_4d
    sget-object v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    const-string v1, ">="

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v1

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    goto :goto_b

    :cond_77
    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_83

    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    :cond_83
    sget-object v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_ae

    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    const-string v1, "<"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v1

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    goto/16 :goto_b

    :cond_ae
    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ba

    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e5

    :cond_ba
    sget-object v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_e5

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    const-string v1, ">"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v1

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    goto/16 :goto_b

    :cond_e5
    sget-object v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10f

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    sget-object v1, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    array-length v2, v1

    :goto_100
    if-ge v0, v2, :cond_b

    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v4, v1, v0

    invoke-static {p2, v4}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    :cond_10f
    iput v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    goto/16 :goto_b
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 14

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    if-nez v0, :cond_8

    move v0, v3

    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_c

    move v0, v4

    goto :goto_7

    :cond_c
    const-string v0, "className"

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    check-cast p1, Ljava/lang/String;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    array-length v7, v6

    move v5, v4

    :goto_24
    if-lt v5, v7, :cond_28

    move v0, v4

    goto :goto_7

    :cond_28
    aget-object v2, v6, v5

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    move v0, v3

    goto :goto_7

    :cond_34
    invoke-static {}, Lcom/google/android/marvin/utils/i;->a()Lcom/google/android/marvin/utils/i;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->j:Landroid/content/Context;

    invoke-virtual {v8, v9, v2, v1}, Lcom/google/android/marvin/utils/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lcom/google/android/marvin/utils/i;->a()Lcom/google/android/marvin/utils/i;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->j:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Lcom/google/android/marvin/utils/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v2, :cond_55

    if-eqz v8, :cond_55

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_7

    :cond_55
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_24

    :cond_59
    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    if-ne v0, v3, :cond_95

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_79

    move v0, v3

    goto :goto_7

    :cond_79
    move v0, v4

    goto :goto_7

    :cond_7b
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_92

    move v0, v3

    goto/16 :goto_7

    :cond_92
    move v0, v4

    goto/16 :goto_7

    :cond_95
    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d4

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_b7

    move v0, v3

    goto/16 :goto_7

    :cond_b7
    move v0, v4

    goto/16 :goto_7

    :cond_ba
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_d1

    move v0, v3

    goto/16 :goto_7

    :cond_d1
    move v0, v4

    goto/16 :goto_7

    :cond_d4
    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_113

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_f6

    move v0, v3

    goto/16 :goto_7

    :cond_f6
    move v0, v4

    goto/16 :goto_7

    :cond_f9
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_110

    move v0, v3

    goto/16 :goto_7

    :cond_110
    move v0, v4

    goto/16 :goto_7

    :cond_113
    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_152

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_135

    move v0, v3

    goto/16 :goto_7

    :cond_135
    move v0, v4

    goto/16 :goto_7

    :cond_138
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_14f

    move v0, v3

    goto/16 :goto_7

    :cond_14f
    move v0, v4

    goto/16 :goto_7

    :cond_152
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    array-length v2, v1

    move v0, v4

    :goto_156
    if-lt v0, v2, :cond_15b

    move v0, v4

    goto/16 :goto_7

    :cond_15b
    aget-object v5, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_166

    move v0, v3

    goto/16 :goto_7

    :cond_166
    add-int/lit8 v0, v0, 0x1

    goto :goto_156
.end method

.method public final a()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->i:[Ljava/lang/Object;

    return-object v0
.end method
