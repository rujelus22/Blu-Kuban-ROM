.class public Lcom/android/task/TaskLinkify;
.super Ljava/lang/Object;
.source "TaskLinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskLinkify$InternalURLSpan;
    }
.end annotation


# static fields
.field public static final ENGLISH_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

.field static arrDayOfWeek:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDateTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 829
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sunday"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "monday"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tuesday"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wednesday"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thursday"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "friday"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "saturday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    .line 960
    const-string v0, "(((18|19|20|21)\\d{2}\\/([1][0-2]|[1-9]|[0][1-9])\\/([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9]))|(([1][0-2]|[1-9]|[0][1-9])\\/([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\\/(18|19|20|21)\\d{2})|(([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\\/([1][0-2]|[1-9]|[0][1-9])\\/(18|19|20|21)\\d{2}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->STANDARD_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 983
    const-string v0, "(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->STANDARD_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 988
    const-string v0, "(((18|19|20|21)\\d{2}\\/([1][0-2]|[1-9]|[0][1-9])\\/([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])[ \\,][ ]?(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))|(([1][0-2]|[1-9]|[0][1-9])\\/([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\\/(18|19|20|21)\\d{2}[ \\,][ ]?(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))|(([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\\/([1][0-2]|[1-9]|[0][1-9])\\/(18|19|20|21)\\d{2}[ \\,][ ]?(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->STANDARD_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 1016
    const-string v0, "(((((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?(18|19|20|21)\\d{2}\\/([1][0-2]|[1-9]|[0][1-9])\\/([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9]))|((((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?([1][0-2]|[1-9]|[0][1-9])\\/([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\\/(18|19|20|21)\\d{2})|((((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\\/([1][0-2]|[1-9]|[0][1-9])\\/(18|19|20|21)\\d{2}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->STANDARD_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 1048
    const-string v0, "(((((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|(J(an|ul)|Ma(r|y)|Aug|(Oct|Dec)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?))|((April|June|(Sept|Nov)ember)|(Apr|Jun|(Sep|Nov)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?)|(February|Feb[\\.\\,]?) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?))|(February|Feb[\\.\\,]?)29(th)? ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))|((0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?)) ((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|(J(an|ul)|Ma(r|y)|Aug|(Oct|Dec)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?) ((April|June|(Sept|Nov)ember)|(Apr|Jun|(Sep|Nov)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?)) (February|Feb[\\.\\,]?)|29(th)? (February|Feb[\\.\\,]?) ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))) (18|19|20|21)\\d{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->ENGLISH_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 1062
    const-string v0, "(((((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|(J(an|ul)|Ma(r|y)|Aug|(Oct|Dec)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?))|((April|June|(Sept|Nov)ember)|(Apr|Jun|(Sep|Nov)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?)|(February|Feb[\\.\\,]?) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?))|(February|Feb[\\.\\,]?)29(th)? ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))|((0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?)) ((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|(J(an|ul)|Ma(r|y)|Aug|(Oct|Dec)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?) ((April|June|(Sept|Nov)ember)|(Apr|Jun|(Sep|Nov)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?)) (February|Feb[\\.\\,]?)|29(th)? (February|Feb[\\.\\,]?) ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))) (18|19|20|21)\\d{2}[ \\,][ ]?(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->ENGLISH_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 1077
    const-string v0, "((((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?((((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|(J(an|ul)|Ma(r|y)|Aug|(Oct|Dec)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?))|((April|June|(Sept|Nov)ember)|(Apr|Jun|(Sep|Nov)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?)|(February|Feb[\\.\\,]?) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?))|(February|Feb[\\.\\,]?)29(th)? ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))|((0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?)) ((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|(J(an|ul)|Ma(r|y)|Aug|(Oct|Dec)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?) ((April|June|(Sept|Nov)ember)|(Apr|Jun|(Sep|Nov)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?)) (February|Feb[\\.\\,]?)|29(th)? (February|Feb[\\.\\,]?) ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))) (18|19|20|21)\\d{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->ENGLISH_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 1093
    const-string v0, "(([tT](onight|oday|omorrow))([ \\,][ ]?(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->ENGLISH_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    .line 1102
    const-string v0, "((([sS](unday|aterday))|([mM]onday)|([tT](uesday|hursday))|([wW]ednesday)|([fF]riday))[ \\,][ ]?((((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))|((([mM]orning) ([0][6-9]|[1][0-1]|[6-9])(\\:)([0-5][0-9]|[1-9]))|(([aA]fternoon) ([0][1-5]|[1][2]|[1-5])(\\:)([0-5][0-9]|[1-9]))|(([eE]vening) ([0][6-9]|[1][0]|[6-9])(\\:)([0-5][0-9]|[1-9]))|(([nN]ight) ([0][8-9]|[1][0-2]|[8-9])(\\:)([0-5][0-9]|[1-9])))))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->ENGLISH_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    .line 1115
    const-string v0, "((18|19|20|21)\\d{2}\ufffd\ufffd ([1][0-2]|[1-9]|[0][1-9])\ufffd\ufffd ([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\ufffd\ufffd)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->KOREAN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 1122
    const-string v0, "((18|19|20|21)\\d{2}\ufffd\ufffd ([1][0-2]|[1-9]|[0][1-9])\ufffd\ufffd ([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\ufffd\ufffd[ \\,][ ]?(((([0-1][0-9]|[1-9])\ufffd\ufffd)[ ]?(([0-5][0-9]|[1-9])\ufffd\ufffd)?)|(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->KOREAN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 1131
    const-string v0, "((((([0-1][0-9]|[1-9])\ufffd\ufffd)[ ]?(([0-5][0-9]|[1-9])\ufffd\ufffd)?)|(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))[ \\,][ ]?(18|19|20|21)\\d{2}\ufffd\ufffd ([1][0-2]|[1-9]|[0][1-9])\ufffd\ufffd ([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\ufffd\ufffd)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->KOREAN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 1140
    const-string v0, "(((\ufffd\ufffd\ufffd\ufffd|\ufffd\ufffd\ufffd\ufffd)[ \\,][ ]?(((([0-1][0-9]|[1-9])\ufffd\ufffd)[ ]?(([0-5][0-9]|[1-9])\ufffd\ufffd)?)|(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))))([ \\,][ ]?(((([0-1][0-9]|[1-9])\ufffd\ufffd)[ ]?(([0-5][0-9]|[1-9])\ufffd\ufffd)?)|(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))))?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->KOREAN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    .line 1149
    const-string v0, "(((([\ufffd\u03ff\ufffd\u022d\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd]\ufffd\ufffd\ufffd\ufffd))[ \\,][ ]?(((([1][3-9])|([2][1-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))|(((([\ufffd\u03ff\ufffd\u022d\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd]\ufffd\ufffd\ufffd\ufffd))[ \\,][ ]?)?(((\ufffd\ufffd\ufffd\ufffd) (([0][1-5]|[1-5])\ufffd\ufffd([ ]([0-5][0-9]|[1-9])\ufffd\ufffd)?|([0][1-5]|[1-5])(\\:)([0-5][0-9]|[1-9])))|((\ufffd\ufffd\u0127) (([0][6-9]|[1][0-1]|[6-9])\ufffd\ufffd([ ]([0-5][0-9]|[1-9])\ufffd\ufffd)?|([0][6-9]|[1][0-1]|[6-9])(\\:)([0-5][0-9]|[1-9])))|((\ufffd\ufffd\ufffd\ufffd) (([0][6-9]|[1][0-1]|[6-9])\ufffd\ufffd([ ]([0-5][0-9]|[1-9])\ufffd\ufffd)?|([0][6-9]|[1][0-1]|[6-9])(\\:)([0-5][0-9]|[1-9])))|((\ufffd\ufffd\ufffd\ufffd) (([0][1-5]|[1][2]|[1-5])\ufffd\ufffd([ ]([0-5][0-9]|[1-9])\ufffd\ufffd)?|([0][1-5]|[1][2]|[1-5])(\\:)([0-5][0-9]|[1-9])))|((\ufffd\ufffd\ufffd) (([0][6-9]|[1][0]|[6-9])\ufffd\ufffd([ ]([0-5][0-9]|[1-9])\ufffd\ufffd)?|([0][6-9]|[1][0]|[6-9])(\\:)([0-5][0-9]|[1-9])))|((\ufffd\ufffd) (([0][8-9]|[1][0-2]|[8-9])\ufffd\ufffd([ ]([0-5][0-9]|[1-9])\ufffd\ufffd)?|([0][8-9]|[1][0-2]|[8-9])(\\:)([0-5][0-9]|[1-9])))))|((([\ufffd\u03ff\ufffd\u022d\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd]\ufffd\ufffd\ufffd\ufffd))[ \\,][ ]?((([0-1][0-9]|[1-9])\ufffd\ufffd)[ ]?(([0-5][0-9]|[1-9])\ufffd\ufffd)?)))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->KOREAN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    .line 1174
    const-string v0, "(((([0-1][0-9]|[1-9])\ufffd\ufffd)[ ]?(([0-5][0-9]|[1-9])\ufffd\ufffd)?))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskLinkify;->KOREAN_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/task/TaskLinkify;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final addLinks(Landroid/text/Spannable;ILandroid/content/Context;J)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    sput-object p2, Lcom/android/task/TaskLinkify;->mContext:Landroid/content/Context;

    .line 87
    sput-wide p3, Lcom/android/task/TaskLinkify;->mDateTime:J

    .line 89
    if-nez p1, :cond_a

    move v0, v1

    .line 145
    :goto_9
    return v0

    .line 93
    :cond_a
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_c4

    .line 98
    sget-object v4, Lcom/android/task/TaskLinkify;->STANDARD_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "standard_date_time_1://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 99
    sget-object v4, Lcom/android/task/TaskLinkify;->STANDARD_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "standard_data_time_2://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 100
    sget-object v4, Lcom/android/task/TaskLinkify;->STANDARD_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "standard_date_time_3://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 101
    sget-object v4, Lcom/android/task/TaskLinkify;->STANDARD_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "standard_date_time_4://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 103
    sget-object v4, Lcom/android/task/TaskLinkify;->ENGLISH_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "english_date_time_1://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 104
    sget-object v4, Lcom/android/task/TaskLinkify;->ENGLISH_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "english_date_time_2://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 105
    sget-object v4, Lcom/android/task/TaskLinkify;->ENGLISH_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "english_date_time_3://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 106
    sget-object v4, Lcom/android/task/TaskLinkify;->ENGLISH_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "english_date_time_4://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 107
    sget-object v4, Lcom/android/task/TaskLinkify;->ENGLISH_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "english_date_time_5://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 109
    sget-object v4, Lcom/android/task/TaskLinkify;->KOREAN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "korean_date_time_1://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 110
    sget-object v4, Lcom/android/task/TaskLinkify;->KOREAN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "korean_date_time_2://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 111
    sget-object v4, Lcom/android/task/TaskLinkify;->KOREAN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "korean_date_time_3://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 112
    sget-object v4, Lcom/android/task/TaskLinkify;->KOREAN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "korean_date_time_4://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 113
    sget-object v4, Lcom/android/task/TaskLinkify;->KOREAN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "korean_date_time_5://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 114
    sget-object v4, Lcom/android/task/TaskLinkify;->KOREAN_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "korean_date_time_6://"

    aput-object v6, v5, v1

    invoke-static {v3, p0, v4, v5}, Lcom/android/task/TaskLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V

    .line 118
    :cond_c4
    invoke-static {v3}, Lcom/android/task/TaskLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 120
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d0

    move v0, v1

    .line 121
    goto/16 :goto_9

    .line 125
    :cond_d0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/LinkSpec;

    .line 126
    iget-object v4, v1, Lcom/android/task/LinkSpec;->url:Ljava/lang/String;

    iget v5, v1, Lcom/android/task/LinkSpec;->start:I

    iget v6, v1, Lcom/android/task/LinkSpec;->end:I

    invoke-static {v4, v5, v6, p0}, Lcom/android/task/TaskLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 130
    iget-object v1, v1, Lcom/android/task/LinkSpec;->url:Ljava/lang/String;

    const-string v4, "standard_date_time_3://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_100
    if-ltz v1, :cond_d4

    .line 135
    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 136
    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_125

    .line 137
    const-string v6, "tel:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_125

    .line 139
    aget-object v5, v0, v1

    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 134
    :cond_125
    add-int/lit8 v1, v1, -0x1

    goto :goto_100

    :cond_128
    move v0, v2

    .line 145
    goto/16 :goto_9
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 29
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 224
    move-object/from16 v15, p0

    .line 225
    .local v15, sTime:Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy/MM/dd"

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    .local v5, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v21, "EEE"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 227
    .local v7, dayFormat:Ljava/text/SimpleDateFormat;
    new-instance v11, Lcom/android/task/TaskLinkify$InternalURLSpan;

    sget-object v21, Lcom/android/task/TaskLinkify;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Lcom/android/task/TaskLinkify$InternalURLSpan;-><init>(Landroid/content/Context;)V

    .line 228
    .local v11, mInternalURLSpan:Lcom/android/task/TaskLinkify$InternalURLSpan;
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 230
    .local v10, isAllDay:Ljava/lang/Boolean;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/task/TaskLinkify$InternalURLSpan;->setDescription(Ljava/lang/String;)V

    .line 232
    const-string v21, "standard_date_time_1://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_75

    .line 234
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 235
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "standard_date_time_1://"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " 00:00"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 541
    :cond_5b
    :goto_5b
    invoke-virtual {v11, v15}, Lcom/android/task/TaskLinkify$InternalURLSpan;->setTimeString(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/task/TaskLinkify$InternalURLSpan;->setAllDay(Z)V

    .line 544
    const/16 v21, 0x21

    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-interface {v0, v11, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 546
    return-void

    .line 237
    :cond_75
    const-string v21, "standard_data_time_2://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b1

    .line 239
    const-string v21, "standard_data_time_2://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 240
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v22, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5b

    .line 242
    :cond_b1
    const-string v21, "standard_date_time_3://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c8

    .line 244
    const-string v21, "standard_date_time_3://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_5b

    .line 246
    :cond_c8
    const-string v21, "standard_date_time_4://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13b

    .line 248
    const-string v21, "standard_date_time_4://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 249
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 250
    const-string v21, " am"

    const-string v22, "am"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 251
    const-string v21, " pm"

    const-string v22, "pm"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 252
    const-string v21, ","

    const-string v22, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 253
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\\s+"

    const-string v23, " "

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 254
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 255
    .local v18, temp:[Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x1

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 257
    goto/16 :goto_5b

    .end local v18           #temp:[Ljava/lang/String;
    :cond_13b
    const-string v21, "english_date_time_1://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1ea

    .line 259
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 261
    const-string v12, ""

    .line 262
    .local v12, month:Ljava/lang/String;
    const-string v6, ""

    .line 263
    .local v6, day:Ljava/lang/String;
    const-string v20, ""

    .line 265
    .local v20, year:Ljava/lang/String;
    const-string v21, "english_date_time_1://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 266
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 267
    .restart local v18       #temp:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_166
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ge v9, v0, :cond_1b1

    .line 268
    aget-object v21, v18, v9

    invoke-static/range {v21 .. v21}, Lcom/android/task/TaskLinkify;->getMonth(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_1e6

    .line 270
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v18, v9

    invoke-static/range {v22 .. v22}, Lcom/android/task/TaskLinkify;->getMonth(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 271
    add-int/lit8 v21, v9, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    aget-object v6, v18, v21

    .line 272
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1b1

    .line 273
    const/16 v21, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 278
    :cond_1b1
    const/16 v21, 0x2

    aget-object v20, v18, v21

    .line 280
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " 00:00"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 282
    goto/16 :goto_5b

    .line 267
    :cond_1e6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_166

    .line 282
    .end local v6           #day:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #month:Ljava/lang/String;
    .end local v18           #temp:[Ljava/lang/String;
    .end local v20           #year:Ljava/lang/String;
    :cond_1ea
    const-string v21, "english_date_time_2://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2b3

    .line 284
    const-string v12, ""

    .line 285
    .restart local v12       #month:Ljava/lang/String;
    const-string v6, ""

    .line 286
    .restart local v6       #day:Ljava/lang/String;
    const-string v20, ""

    .line 287
    .restart local v20       #year:Ljava/lang/String;
    const-string v21, "english_date_time_2://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 288
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 289
    .restart local v18       #temp:[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_20f
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ge v9, v0, :cond_25a

    .line 290
    aget-object v21, v18, v9

    invoke-static/range {v21 .. v21}, Lcom/android/task/TaskLinkify;->getMonth(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_2af

    .line 292
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v18, v9

    invoke-static/range {v22 .. v22}, Lcom/android/task/TaskLinkify;->getMonth(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 293
    add-int/lit8 v21, v9, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    aget-object v6, v18, v21

    .line 294
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_25a

    .line 295
    const/16 v21, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 300
    :cond_25a
    const/16 v21, 0x2

    aget-object v20, v18, v21

    .line 302
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 304
    const/4 v9, 0x3

    :goto_288
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_5b

    .line 306
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 304
    add-int/lit8 v9, v9, 0x1

    goto :goto_288

    .line 289
    :cond_2af
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_20f

    .line 309
    .end local v6           #day:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #month:Ljava/lang/String;
    .end local v18           #temp:[Ljava/lang/String;
    .end local v20           #year:Ljava/lang/String;
    :cond_2b3
    const-string v21, "english_date_time_3://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_38a

    .line 311
    const-string v12, ""

    .line 312
    .restart local v12       #month:Ljava/lang/String;
    const-string v6, ""

    .line 313
    .restart local v6       #day:Ljava/lang/String;
    const-string v20, ""

    .line 315
    .restart local v20       #year:Ljava/lang/String;
    const-string v21, "english_date_time_3://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 316
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 317
    .restart local v18       #temp:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v9, v21, -0x2

    .restart local v9       #i:I
    :goto_2de
    if-lez v9, :cond_32a

    .line 318
    aget-object v21, v18, v9

    invoke-static/range {v21 .. v21}, Lcom/android/task/TaskLinkify;->getMonth(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_386

    .line 320
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v22, v18, v9

    invoke-static/range {v22 .. v22}, Lcom/android/task/TaskLinkify;->getMonth(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 321
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v9, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    aget-object v6, v18, v21

    .line 322
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_32a

    .line 323
    const/16 v21, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 328
    :cond_32a
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v18, v21

    .line 330
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 332
    const/4 v9, 0x0

    :goto_35d
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x3

    move/from16 v0, v21

    if-ge v9, v0, :cond_5b

    .line 334
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 332
    add-int/lit8 v9, v9, 0x1

    goto :goto_35d

    .line 317
    :cond_386
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2de

    .line 337
    .end local v6           #day:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #month:Ljava/lang/String;
    .end local v18           #temp:[Ljava/lang/String;
    .end local v20           #year:Ljava/lang/String;
    :cond_38a
    const-string v21, "english_date_time_4://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_452

    .line 340
    const-string v21, "english_date_time_4://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 341
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 343
    .restart local v18       #temp:[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "tomorrow"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3bd

    .line 344
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    const-wide/32 v23, 0x5265c00

    add-long v21, v21, v23

    sput-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    .line 347
    :cond_3bd
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_41e

    .line 348
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "tonight"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3f7

    .line 349
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v22, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " 8pm"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5b

    .line 351
    :cond_3f7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v22, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " 00:00"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 352
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto/16 :goto_5b

    .line 356
    :cond_41e
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 357
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_42b
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_5b

    .line 358
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 357
    add-int/lit8 v9, v9, 0x1

    goto :goto_42b

    .line 363
    .end local v9           #i:I
    .end local v18           #temp:[Ljava/lang/String;
    :cond_452
    const-string v21, "english_date_time_5://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_580

    .line 364
    const/4 v4, -0x1

    .line 365
    .local v4, curDayIndex:I
    const/4 v13, -0x1

    .line 367
    .local v13, newDayIndex:I
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 369
    .local v14, sCurDay:Ljava/lang/String;
    const-string v21, "english_date_time_5://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 370
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 373
    .restart local v18       #temp:[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_47f
    sget-object v21, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_4af

    .line 374
    const/16 v21, 0x0

    aget-object v21, v18, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_49d

    .line 375
    move v13, v9

    .line 378
    :cond_49d
    sget-object v21, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    aget-object v21, v21, v9

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4ac

    .line 379
    move v4, v9

    .line 373
    :cond_4ac
    add-int/lit8 v9, v9, 0x1

    goto :goto_47f

    .line 383
    :cond_4af
    sub-int v8, v13, v4

    .line 384
    .local v8, delta:I
    if-lez v8, :cond_4fa

    .line 385
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    const v23, 0x5265c00

    mul-int v23, v23, v8

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sput-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    .line 392
    :cond_4c3
    :goto_4c3
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 398
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "morning"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_50f

    .line 399
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5b

    .line 387
    :cond_4fa
    if-gez v8, :cond_4c3

    .line 388
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    const v23, 0x5265c00

    add-int/lit8 v24, v8, 0x7

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sput-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    goto :goto_4c3

    .line 401
    :cond_50f
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "afternoon"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_533

    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "evening"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_533

    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "night"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_558

    .line 402
    :cond_533
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "pm"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5b

    .line 404
    :cond_558
    const/4 v9, 0x1

    :goto_559
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_5b

    .line 405
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 404
    add-int/lit8 v9, v9, 0x1

    goto :goto_559

    .line 409
    .end local v4           #curDayIndex:I
    .end local v8           #delta:I
    .end local v9           #i:I
    .end local v13           #newDayIndex:I
    .end local v14           #sCurDay:Ljava/lang/String;
    .end local v18           #temp:[Ljava/lang/String;
    :cond_580
    const-string v21, "korean_date_time_1://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5d7

    .line 411
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 413
    const-string v21, "korean_date_time_1://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 415
    const-string v21, "\ufffd\ufffd "

    const-string v22, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 416
    const-string v21, "\ufffd\ufffd "

    const-string v22, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 417
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 418
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " 00:00"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5b

    .line 420
    :cond_5d7
    const-string v21, "korean_date_time_2://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_62b

    .line 422
    const-string v21, "korean_date_time_2://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 423
    const-string v21, "\ufffd\ufffd "

    const-string v22, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 424
    const-string v21, "\ufffd\ufffd "

    const-string v22, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 425
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 426
    const-string v21, "\ufffd\ufffd "

    const-string v22, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 427
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5b

    .line 429
    :cond_62b
    const-string v21, "korean_date_time_3://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6b8

    .line 431
    const-string v21, "korean_date_time_3://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 432
    const-string v21, "\ufffd\ufffd "

    const-string v22, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 433
    const-string v21, "\ufffd\ufffd "

    const-string v22, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 434
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 435
    const-string v21, "\ufffd\ufffd "

    const-string v22, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 436
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 437
    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    add-int/lit8 v17, v21, -0x4

    .line 438
    .local v17, sepIndex:I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 440
    goto/16 :goto_5b

    .end local v17           #sepIndex:I
    :cond_6b8
    const-string v21, "korean_date_time_4://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_775

    .line 442
    const-string v21, "korean_date_time_4://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 443
    const-string v21, "\ufffd\ufffd "

    const-string v22, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 444
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 445
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 447
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 449
    .restart local v18       #temp:[Ljava/lang/String;
    const-string v21, "\ufffd\ufffd\ufffd\ufffd"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_70d

    .line 450
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    const-wide/32 v23, 0x5265c00

    add-long v21, v21, v23

    sput-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    .line 453
    :cond_70d
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_741

    .line 455
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v22, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " 00:00"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 456
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto/16 :goto_5b

    .line 460
    :cond_741
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 461
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_74e
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_5b

    .line 462
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 461
    add-int/lit8 v9, v9, 0x1

    goto :goto_74e

    .line 466
    .end local v9           #i:I
    .end local v18           #temp:[Ljava/lang/String;
    :cond_775
    const-string v21, "korean_date_time_5://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8fb

    .line 468
    const/4 v4, -0x1

    .line 469
    .restart local v4       #curDayIndex:I
    const/4 v13, -0x1

    .line 471
    .restart local v13       #newDayIndex:I
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 473
    .restart local v14       #sCurDay:Ljava/lang/String;
    const-string v21, "korean_date_time_5://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 475
    const-string v21, "\ufffd\ufffd "

    const-string v22, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 476
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 477
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 479
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 481
    .restart local v18       #temp:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Lcom/android/task/TaskLinkify;->getEnglishWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 483
    .local v19, weekday:Ljava/lang/String;
    const/16 v21, 0x0

    aput-object v19, v18, v21

    .line 485
    const-string v16, ""

    .line 486
    .local v16, sTimeKeyword:Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_893

    .line 489
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_7de
    sget-object v21, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_80e

    .line 490
    const/16 v21, 0x0

    aget-object v21, v18, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    aget-object v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7fc

    .line 491
    move v13, v9

    .line 494
    :cond_7fc
    sget-object v21, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    aget-object v21, v21, v9

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_80b

    .line 495
    move v4, v9

    .line 489
    :cond_80b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7de

    .line 499
    :cond_80e
    sub-int v8, v13, v4

    .line 500
    .restart local v8       #delta:I
    if-lez v8, :cond_87e

    .line 501
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    const v23, 0x5265c00

    mul-int v23, v23, v8

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sput-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    .line 506
    :cond_822
    :goto_822
    const/16 v21, 0x1

    aget-object v16, v18, v21

    .line 513
    .end local v8           #delta:I
    .end local v9           #i:I
    :goto_826
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 519
    const-string v21, "\ufffd\ufffd\u0127"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_856

    const-string v21, "\ufffd\ufffd\ufffd\ufffd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_856

    const-string v21, "\ufffd\ufffd\ufffd\ufffd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_898

    .line 520
    :cond_856
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_857
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_5b

    .line 521
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 520
    add-int/lit8 v9, v9, 0x1

    goto :goto_857

    .line 503
    .restart local v8       #delta:I
    :cond_87e
    if-gez v8, :cond_822

    .line 504
    sget-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    const v23, 0x5265c00

    add-int/lit8 v24, v8, 0x7

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sput-wide v21, Lcom/android/task/TaskLinkify;->mDateTime:J

    goto :goto_822

    .line 509
    .end local v8           #delta:I
    .end local v9           #i:I
    :cond_893
    const/16 v21, 0x0

    aget-object v16, v18, v21

    goto :goto_826

    .line 524
    :cond_898
    const-string v21, "\ufffd\ufffd\ufffd\ufffd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8bc

    const-string v21, "\ufffd\ufffd\ufffd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8bc

    const-string v21, "\ufffd\ufffd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5b

    .line 525
    :cond_8bc
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_8bd
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_8e4

    .line 526
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 525
    add-int/lit8 v9, v9, 0x1

    goto :goto_8bd

    .line 529
    :cond_8e4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " pm"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5b

    .line 532
    .end local v4           #curDayIndex:I
    .end local v9           #i:I
    .end local v13           #newDayIndex:I
    .end local v14           #sCurDay:Ljava/lang/String;
    .end local v16           #sTimeKeyword:Ljava/lang/String;
    .end local v18           #temp:[Ljava/lang/String;
    .end local v19           #weekday:Ljava/lang/String;
    :cond_8fb
    const-string v21, "korean_date_time_6://"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5b

    .line 534
    const-string v21, "korean_date_time_6://"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 535
    const-string v21, "\ufffd\ufffd "

    const-string v22, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 536
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 537
    const-string v21, "\ufffd\ufffd"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 538
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v22, Lcom/android/task/TaskLinkify;->mDateTime:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5b
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/task/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 699
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/task/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 701
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 702
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 703
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 705
    .local v0, end:I
    new-instance v2, Lcom/android/task/LinkSpec;

    invoke-direct {v2}, Lcom/android/task/LinkSpec;-><init>()V

    .line 706
    .local v2, spec:Lcom/android/task/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1}, Lcom/android/task/TaskLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Lcom/android/task/LinkSpec;->url:Ljava/lang/String;

    .line 709
    iput v3, v2, Lcom/android/task/LinkSpec;->start:I

    .line 710
    iput v0, v2, Lcom/android/task/LinkSpec;->end:I

    .line 712
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 714
    .end local v0           #end:I
    .end local v2           #spec:Lcom/android/task/LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method private static getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 2
    .parameter "pattern"

    .prologue
    .line 550
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getEnglishWeekDay(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "weekday"

    .prologue
    .line 809
    const-string v0, "\ufffd\u03ff\ufffd\ufffd\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 810
    sget-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p0, v0, v1

    .line 826
    .end local p0
    :cond_d
    :goto_d
    return-object p0

    .line 811
    .restart local p0
    :cond_e
    const-string v0, "\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 812
    sget-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p0, v0, v1

    goto :goto_d

    .line 813
    :cond_1c
    const-string v0, "\u022d\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 814
    sget-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p0, v0, v1

    goto :goto_d

    .line 815
    :cond_2a
    const-string v0, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 816
    sget-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object p0, v0, v1

    goto :goto_d

    .line 817
    :cond_38
    const-string v0, "\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 818
    sget-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object p0, v0, v1

    goto :goto_d

    .line 819
    :cond_46
    const-string v0, "\ufffd\u077f\ufffd\ufffd\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 820
    sget-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object p0, v0, v1

    goto :goto_d

    .line 821
    :cond_54
    const-string v0, "\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 822
    sget-object v0, Lcom/android/task/TaskLinkify;->arrDayOfWeek:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object p0, v0, v1

    goto :goto_d
.end method

.method static getMonth(Ljava/lang/String;)I
    .registers 3
    .parameter "sMonth"

    .prologue
    .line 776
    const/4 v0, -0x1

    .line 778
    .local v0, month:I
    const-string v1, "January"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "Jan"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "Jan."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "Jan,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 779
    :cond_21
    const/4 v0, 0x1

    .line 804
    :cond_22
    :goto_22
    return v0

    .line 780
    :cond_23
    const-string v1, "February"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "Feb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "Feb."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "Feb,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 781
    :cond_43
    const/4 v0, 0x2

    goto :goto_22

    .line 782
    :cond_45
    const-string v1, "March"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "Mar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "Mar."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "Mar,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 783
    :cond_65
    const/4 v0, 0x3

    goto :goto_22

    .line 784
    :cond_67
    const-string v1, "April"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    const-string v1, "Apr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    const-string v1, "Apr."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    const-string v1, "Apr,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 785
    :cond_87
    const/4 v0, 0x4

    goto :goto_22

    .line 786
    :cond_89
    const-string v1, "May"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 787
    const/4 v0, 0x5

    goto :goto_22

    .line 788
    :cond_93
    const-string v1, "June"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    const-string v1, "Jun"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    const-string v1, "Jun."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    const-string v1, "Jun,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 789
    :cond_b3
    const/4 v0, 0x6

    goto/16 :goto_22

    .line 790
    :cond_b6
    const-string v1, "July"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "Jul"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "Jul."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "Jul,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 791
    :cond_d6
    const/4 v0, 0x7

    goto/16 :goto_22

    .line 792
    :cond_d9
    const-string v1, "August"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    const-string v1, "Aug"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    const-string v1, "Aug."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    const-string v1, "Aug,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 793
    :cond_f9
    const/16 v0, 0x8

    goto/16 :goto_22

    .line 794
    :cond_fd
    const-string v1, "September"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "Sep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "Sep."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    const-string v1, "Sep,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 795
    :cond_11d
    const/16 v0, 0x9

    goto/16 :goto_22

    .line 796
    :cond_121
    const-string v1, "October"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_141

    const-string v1, "Oct"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_141

    const-string v1, "Oct."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_141

    const-string v1, "Oct,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 797
    :cond_141
    const/16 v0, 0xa

    goto/16 :goto_22

    .line 798
    :cond_145
    const-string v1, "November"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, "Nov"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, "Nov."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, "Nov,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 799
    :cond_165
    const/16 v0, 0xb

    goto/16 :goto_22

    .line 800
    :cond_169
    const-string v1, "December"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_189

    const-string v1, "Dec"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_189

    const-string v1, "Dec."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_189

    const-string v1, "Dec,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 801
    :cond_189
    const/16 v0, 0xc

    goto/16 :goto_22
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;)Ljava/lang/String;
    .registers 12
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 674
    const/4 v7, 0x0

    .line 676
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v0, p1

    if-ge v8, v0, :cond_46

    .line 677
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 678
    const/4 v7, 0x1

    .line 681
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_46

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 690
    :cond_46
    if-nez v7, :cond_5b

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 694
    :cond_5b
    return-object p0

    .line 676
    :cond_5c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/task/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/task/LinkSpec;>;"
    new-instance v2, Lcom/android/task/TaskLinkify$4;

    invoke-direct {v2}, Lcom/android/task/TaskLinkify$4;-><init>()V

    .line 743
    .local v2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/task/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 745
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 746
    .local v4, len:I
    const/4 v3, 0x0

    .line 748
    .local v3, i:I
    :goto_d
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_5d

    .line 749
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/LinkSpec;

    .line 750
    .local v0, a:Lcom/android/task/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/LinkSpec;

    .line 751
    .local v1, b:Lcom/android/task/LinkSpec;
    const/4 v5, -0x1

    .line 753
    .local v5, remove:I
    iget v6, v0, Lcom/android/task/LinkSpec;->start:I

    iget v7, v1, Lcom/android/task/LinkSpec;->start:I

    if-gt v6, v7, :cond_5a

    iget v6, v0, Lcom/android/task/LinkSpec;->end:I

    iget v7, v1, Lcom/android/task/LinkSpec;->start:I

    if-le v6, v7, :cond_5a

    .line 754
    iget v6, v1, Lcom/android/task/LinkSpec;->end:I

    iget v7, v0, Lcom/android/task/LinkSpec;->end:I

    if-gt v6, v7, :cond_3d

    .line 755
    add-int/lit8 v5, v3, 0x1

    .line 762
    :cond_34
    :goto_34
    const/4 v6, -0x1

    if-eq v5, v6, :cond_5a

    .line 763
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 764
    add-int/lit8 v4, v4, -0x1

    .line 765
    goto :goto_d

    .line 756
    :cond_3d
    iget v6, v0, Lcom/android/task/LinkSpec;->end:I

    iget v7, v0, Lcom/android/task/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/android/task/LinkSpec;->end:I

    iget v8, v1, Lcom/android/task/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_4c

    .line 757
    add-int/lit8 v5, v3, 0x1

    goto :goto_34

    .line 758
    :cond_4c
    iget v6, v0, Lcom/android/task/LinkSpec;->end:I

    iget v7, v0, Lcom/android/task/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/android/task/LinkSpec;->end:I

    iget v8, v1, Lcom/android/task/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_34

    .line 759
    move v5, v3

    goto :goto_34

    .line 770
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    .line 771
    goto :goto_d

    .line 772
    .end local v0           #a:Lcom/android/task/LinkSpec;
    .end local v1           #b:Lcom/android/task/LinkSpec;
    .end local v5           #remove:I
    :cond_5d
    return-void
.end method

.method protected static showPopup(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 10
    .parameter "mTime"
    .parameter "mIsAllDay"
    .parameter "mDesc"

    .prologue
    .line 183
    sget-object v4, Lcom/android/task/TaskLinkify;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0033

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, title:Ljava/lang/String;
    sget-object v4, Lcom/android/task/TaskLinkify;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/task/TaskLinkify;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    const v4, 0x7f020005

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 189
    new-instance v4, Lcom/android/task/TaskLinkify$1;

    invoke-direct {v4}, Lcom/android/task/TaskLinkify$1;-><init>()V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    const v4, 0x7f0a000c

    new-instance v5, Lcom/android/task/TaskLinkify$3;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/task/TaskLinkify$3;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0011

    new-instance v6, Lcom/android/task/TaskLinkify$2;

    invoke-direct {v6}, Lcom/android/task/TaskLinkify$2;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 219
    .local v0, addToCalendarConfirmDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 15
    .parameter "dateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x5

    .line 574
    .local v0, DATA_ELEMENT_COUNT:I
    const/4 v9, 0x0

    .line 576
    .local v9, isPM:Z
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 578
    .local v5, defalutDate:Ljava/util/Date;
    if-nez p0, :cond_b

    move-object v2, v5

    .line 668
    :cond_a
    :goto_a
    return-object v2

    .line 582
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 583
    const-string v11, "pm"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 584
    const/4 v9, 0x1

    .line 585
    const-string v11, "pm"

    const-string v12, ""

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 590
    :cond_20
    :goto_20
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 594
    const/16 v11, 0x2f

    const/16 v12, 0x20

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 595
    const-string v11, ":"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a0

    .line 596
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 600
    :cond_47
    :goto_47
    const/16 v11, 0x3a

    const/16 v12, 0x20

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 601
    const/16 v11, 0x2c

    const/16 v12, 0x20

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 602
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\s+"

    const-string v13, " "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 604
    const-string v11, "misooki.kim"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dateStr = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v11, " "

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, dateStrArr:[Ljava/lang/String;
    const/4 v11, 0x5

    new-array v10, v11, [Ljava/lang/String;

    .line 610
    .local v10, newDateStrArr:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_85
    array-length v11, v4

    if-ge v8, v11, :cond_bc

    .line 612
    aget-object v11, v4, v8

    aput-object v11, v10, v8

    .line 610
    add-int/lit8 v8, v8, 0x1

    goto :goto_85

    .line 586
    .end local v4           #dateStrArr:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v10           #newDateStrArr:[Ljava/lang/String;
    :cond_8f
    const-string v11, "am"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 587
    const-string v11, "am"

    const-string v12, ""

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    .line 597
    :cond_a0
    const-string v11, ":"

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 598
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    .line 615
    .restart local v4       #dateStrArr:[Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v10       #newDateStrArr:[Ljava/lang/String;
    :cond_bc
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-ge v11, v12, :cond_e3

    .line 616
    const/4 v11, 0x0

    const/4 v12, 0x2

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    .line 617
    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0xc

    if-le v11, v12, :cond_10a

    .line 618
    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    .line 619
    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    .line 637
    :cond_e3
    :goto_e3
    const/4 v8, 0x1

    :goto_e4
    array-length v11, v10

    if-ge v8, v11, :cond_14f

    .line 638
    aget-object v11, v10, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_107

    .line 639
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 637
    :cond_107
    add-int/lit8 v8, v8, 0x1

    goto :goto_e4

    .line 620
    :cond_10a
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0xc

    if-le v11, v12, :cond_122

    .line 621
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    .line 622
    const/4 v11, 0x2

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    goto :goto_e3

    .line 625
    :cond_122
    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    .line 626
    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    .line 629
    sget-object v11, Lcom/android/task/TaskLinkify;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "date_format"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, curDateFormat:Ljava/lang/String;
    const-string v11, "dd-MM-yyyy"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e3

    .line 631
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    .line 632
    const/4 v11, 0x2

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aput-object v12, v10, v11

    goto :goto_e3

    .line 643
    .end local v1           #curDateFormat:Ljava/lang/String;
    :cond_14f
    if-eqz v9, :cond_170

    .line 644
    const/4 v11, 0x3

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v7, v11, 0xc

    .line 645
    .local v7, hour:I
    const/4 v11, 0x3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 648
    .end local v7           #hour:I
    :cond_170
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 654
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 655
    const/4 v2, 0x0

    .line 656
    .local v2, date:Ljava/util/Date;
    const-string v11, "yyyy/MM/dd HH:mm"

    invoke-static {v11}, Lcom/android/task/TaskLinkify;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v3

    .line 658
    .local v3, dateFormat:Ljava/text/DateFormat;
    :try_start_1bf
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 659
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1ca
    .catch Ljava/text/ParseException; {:try_start_1bf .. :try_end_1ca} :catch_1d0

    move-result v11

    if-nez v11, :cond_a

    .line 662
    move-object v2, v5

    goto/16 :goto_a

    .line 664
    :catch_1d0
    move-exception v6

    .line 665
    .local v6, e:Ljava/text/ParseException;
    move-object v2, v5

    goto/16 :goto_a
.end method
