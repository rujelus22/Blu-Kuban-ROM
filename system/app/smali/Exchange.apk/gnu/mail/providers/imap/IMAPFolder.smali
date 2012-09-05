.class public Lgnu/mail/providers/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;


# static fields
.field private static searchdf:Ljava/text/DateFormat;


# instance fields
.field protected delimiter:C

.field protected messageCount:I

.field protected newMessageCount:I

.field protected path:Ljava/lang/String;

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected type:I

.field protected uidValidity:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d-MMM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/imap/IMAPFolder;->searchdf:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;IC)V

    .line 126
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;IC)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 141
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 106
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 110
    iput v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    .line 112
    iput v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->newMessageCount:I

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->uidValidity:J

    .line 142
    iput-object p2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    .line 143
    iput p3, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    .line 144
    iput-char p4, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    .line 145
    return-void
.end method

.method private addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x22

    const/4 v1, 0x0

    const/16 v6, 0x20

    .line 903
    instance-of v0, p1, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_20

    .line 905
    check-cast p1, Ljavax/mail/search/AndTerm;

    invoke-virtual {p1}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v2

    move v0, v1

    .line 906
    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_53

    .line 908
    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1139
    :cond_1c
    :goto_1c
    return v1

    .line 906
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 912
    :cond_20
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_3e

    .line 914
    const-string v0, "OR"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    check-cast p1, Ljavax/mail/search/OrTerm;

    invoke-virtual {p1}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v2

    move v0, v1

    .line 916
    :goto_30
    array-length v3, v2

    if-ge v0, v3, :cond_53

    .line 918
    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 922
    :cond_3e
    instance-of v0, p1, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_55

    .line 924
    const-string v0, "NOT"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    check-cast p1, Ljavax/mail/search/NotTerm;

    invoke-virtual {p1}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1139
    :cond_53
    :goto_53
    const/4 v1, 0x1

    goto :goto_1c

    .line 928
    :cond_55
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_f4

    .line 930
    check-cast p1, Ljavax/mail/search/FlagTerm;

    .line 931
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    .line 932
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v4

    .line 934
    invoke-virtual {v3}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v5

    move v0, v1

    .line 935
    :goto_68
    array-length v2, v5

    if-ge v0, v2, :cond_c9

    .line 937
    aget-object v2, v5, v0

    .line 938
    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_7e

    .line 940
    if-eqz v4, :cond_7b

    const-string v2, "ANSWERED"

    :goto_75
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_78
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 940
    :cond_7b
    const-string v2, "UNANSWERED"

    goto :goto_75

    .line 943
    :cond_7e
    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_8d

    .line 945
    if-eqz v4, :cond_8a

    const-string v2, "DELETED"

    :goto_86
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_8a
    const-string v2, "UNDELETED"

    goto :goto_86

    .line 948
    :cond_8d
    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_9c

    .line 950
    if-eqz v4, :cond_99

    const-string v2, "DRAFT"

    :goto_95
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_99
    const-string v2, "UNDRAFT"

    goto :goto_95

    .line 953
    :cond_9c
    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_ab

    .line 955
    if-eqz v4, :cond_a8

    const-string v2, "FLAGGED"

    :goto_a4
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_a8
    const-string v2, "UNFLAGGED"

    goto :goto_a4

    .line 958
    :cond_ab
    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_ba

    .line 960
    if-eqz v4, :cond_b7

    const-string v2, "RECENT"

    :goto_b3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_b7
    const-string v2, "OLD"

    goto :goto_b3

    .line 963
    :cond_ba
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v2, v6, :cond_78

    .line 965
    if-eqz v4, :cond_c6

    const-string v2, "SEEN"

    :goto_c2
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_c6
    const-string v2, "UNSEEN"

    goto :goto_c2

    .line 970
    :cond_c9
    invoke-virtual {v3}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v2

    .line 971
    :goto_cd
    array-length v0, v2

    if-ge v1, v0, :cond_53

    .line 973
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 974
    if-eqz v4, :cond_f1

    const-string v0, "KEYWORD"

    :goto_d9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 977
    aget-object v0, v2, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 978
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 979
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    .line 974
    :cond_f1
    const-string v0, "UNKEYWORD"

    goto :goto_d9

    .line 982
    :cond_f4
    instance-of v0, p1, Ljavax/mail/search/AddressTerm;

    if-eqz v0, :cond_154

    move-object v0, p1

    .line 984
    check-cast v0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {v0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v3

    .line 985
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 986
    instance-of v4, p1, Ljavax/mail/search/FromTerm;

    if-eqz v4, :cond_128

    .line 987
    const-string v2, "FROM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    :goto_10d
    if-eqz v0, :cond_1c

    .line 1005
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1006
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1007
    invoke-virtual {v3}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    .line 988
    :cond_128
    instance-of v4, p1, Ljavax/mail/search/RecipientTerm;

    if-eqz v4, :cond_152

    .line 990
    check-cast p1, Ljavax/mail/search/RecipientTerm;

    invoke-virtual {p1}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v4

    .line 992
    sget-object v5, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_13c

    .line 993
    const-string v2, "TO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10d

    .line 994
    :cond_13c
    sget-object v5, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_146

    .line 995
    const-string v2, "CC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10d

    .line 996
    :cond_146
    sget-object v5, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne v4, v5, :cond_150

    .line 997
    const-string v2, "BCC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10d

    :cond_150
    move-object v0, v2

    .line 999
    goto :goto_10d

    :cond_152
    move-object v0, v2

    .line 1002
    goto :goto_10d

    .line 1014
    :cond_154
    instance-of v0, p1, Ljavax/mail/search/ComparisonTerm;

    if-eqz v0, :cond_215

    .line 1016
    instance-of v0, p1, Ljavax/mail/search/DateTerm;

    if-eqz v0, :cond_1ab

    move-object v0, p1

    .line 1018
    check-cast v0, Ljavax/mail/search/DateTerm;

    .line 1019
    invoke-virtual {v0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 1020
    invoke-virtual {v0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v0

    .line 1021
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1022
    packed-switch v0, :pswitch_data_27c

    .line 1030
    :goto_16f
    :pswitch_16f
    instance-of v3, p1, Ljavax/mail/search/SentDateTerm;

    if-eqz v3, :cond_178

    .line 1031
    const-string v3, "SENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    :cond_178
    packed-switch v0, :pswitch_data_28c

    .line 1047
    :goto_17b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1048
    sget-object v0, Lgnu/mail/providers/imap/IMAPFolder;->searchdf:Ljava/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    .line 1027
    :pswitch_190
    const-string v3, "NOT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_16f

    .line 1036
    :pswitch_199
    const-string v0, "ON"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17b

    .line 1040
    :pswitch_19f
    const-string v0, "BEFORE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17b

    .line 1044
    :pswitch_1a5
    const-string v0, "SINCE"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17b

    .line 1051
    :cond_1ab
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    if-eqz v0, :cond_53

    move-object v0, p1

    .line 1053
    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    .line 1054
    invoke-virtual {v0}, Ljavax/mail/search/IntegerComparisonTerm;->getNumber()I

    move-result v2

    .line 1055
    invoke-virtual {v0}, Ljavax/mail/search/IntegerComparisonTerm;->getComparison()I

    move-result v0

    .line 1056
    instance-of v3, p1, Ljavax/mail/search/SizeTerm;

    if-eqz v3, :cond_1c

    .line 1058
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1059
    packed-switch v0, :pswitch_data_29c

    .line 1067
    :goto_1c6
    :pswitch_1c6
    packed-switch v0, :pswitch_data_2ac

    .line 1094
    :goto_1c9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    .line 1064
    :pswitch_1d2
    const-string v3, "NOT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1c6

    .line 1071
    :pswitch_1db
    const-string v0, "OR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1073
    const-string v0, "SMALLER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1075
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1076
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1077
    const-string v0, "LARGER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1079
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1c9

    .line 1083
    :pswitch_1fd
    const-string v0, "SMALLER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1084
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1085
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1c9

    .line 1089
    :pswitch_209
    const-string v0, "LARGER"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1090
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1c9

    .line 1100
    :cond_215
    instance-of v0, p1, Ljavax/mail/search/StringTerm;

    if-eqz v0, :cond_1c

    move-object v0, p1

    .line 1102
    check-cast v0, Ljavax/mail/search/StringTerm;

    invoke-virtual {v0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 1103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1104
    instance-of v4, p1, Ljavax/mail/search/BodyTerm;

    if-eqz v4, :cond_246

    .line 1106
    const-string v2, "BODY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    .line 1126
    :cond_22f
    :goto_22f
    if-eqz v2, :cond_1c

    .line 1128
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1129
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1131
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    .line 1108
    :cond_246
    instance-of v4, p1, Ljavax/mail/search/HeaderTerm;

    if-eqz v4, :cond_25d

    .line 1110
    const-string v2, "HEADER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1111
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1112
    check-cast p1, Ljavax/mail/search/HeaderTerm;

    invoke-virtual {p1}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_22f

    .line 1114
    :cond_25d
    instance-of v4, p1, Ljavax/mail/search/SubjectTerm;

    if-eqz v4, :cond_268

    .line 1116
    const-string v2, "SUBJECT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_22f

    .line 1118
    :cond_268
    instance-of v4, p1, Ljavax/mail/search/MessageIDTerm;

    if-eqz v4, :cond_22f

    .line 1120
    const-string v2, "HEADER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1122
    const-string v2, "Message-ID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v0

    goto :goto_22f

    .line 1022
    nop

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_190
        :pswitch_16f
        :pswitch_16f
        :pswitch_190
        :pswitch_16f
        :pswitch_190
    .end packed-switch

    .line 1032
    :pswitch_data_28c
    .packed-switch 0x1
        :pswitch_1a5
        :pswitch_19f
        :pswitch_199
        :pswitch_199
        :pswitch_1a5
        :pswitch_19f
    .end packed-switch

    .line 1059
    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_1d2
        :pswitch_1c6
        :pswitch_1d2
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1d2
    .end packed-switch

    .line 1067
    :pswitch_data_2ac
    .packed-switch 0x1
        :pswitch_209
        :pswitch_1fd
        :pswitch_1db
        :pswitch_1db
        :pswitch_209
        :pswitch_1fd
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1334
    instance-of v0, p1, Lgnu/mail/providers/imap/IMAPFolder;

    if-eqz v0, :cond_f

    .line 1336
    check-cast p1, Lgnu/mail/providers/imap/IMAPFolder;

    iget-object v0, p1, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1338
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public exists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getType()I
    :try_end_3
    .catch Ljavax/mail/FolderNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    .line 305
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 301
    :catch_5
    move-exception v0

    .line 303
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 740
    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_d

    .line 742
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    .line 745
    :cond_d
    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v2

    .line 746
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 747
    sget-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 749
    const-string v0, "BODY.PEEK[]"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_23
    :goto_23
    sget-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 773
    const-string v0, "FLAGS"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_30
    const-string v0, "INTERNALDATE"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 777
    if-nez v0, :cond_79

    .line 829
    :cond_3b
    :goto_3b
    return-void

    .line 751
    :cond_3c
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 753
    const-string v0, "BODY.PEEK[HEADER]"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 755
    :cond_4a
    array-length v0, v2

    if-lez v0, :cond_23

    .line 758
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "BODY.PEEK[HEADER.FIELDS("

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 759
    :goto_55
    array-length v5, v2

    if-ge v0, v5, :cond_67

    .line 761
    if-lez v0, :cond_5f

    .line 763
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 765
    :cond_5f
    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 767
    :cond_67
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 768
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 769
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 781
    :cond_79
    new-array v4, v0, [Ljava/lang/String;

    .line 782
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 785
    array-length v0, p1

    new-array v5, v0, [Lgnu/mail/providers/imap/IMAPMessage;

    .line 786
    array-length v0, p1

    new-array v6, v0, [I

    move v2, v1

    .line 789
    :goto_85
    :try_start_85
    array-length v0, p1

    if-ge v2, v0, :cond_a3

    .line 791
    aget-object v0, p1, v2

    check-cast v0, Lgnu/mail/providers/imap/IMAPMessage;

    aput-object v0, v5, v2

    .line 792
    aget-object v0, v5, v2

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMessage;->getMessageNumber()I

    move-result v0

    aput v0, v6, v2
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_85 .. :try_end_96} :catch_9a

    .line 789
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_85

    .line 795
    :catch_9a
    move-exception v0

    .line 797
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Only IMAPMessages can be fetched"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_a3
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 801
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v7

    .line 804
    :try_start_ab
    monitor-enter v7
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ac} :catch_dc

    .line 806
    :try_start_ac
    invoke-virtual {v7, v6, v4}, Lgnu/inet/imap/IMAPConnection;->fetch([I[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;

    move-result-object v4

    move v3, v1

    .line 807
    :goto_b1
    array-length v2, v4

    if-ge v3, v2, :cond_d0

    .line 809
    aget-object v2, v4, v3

    invoke-virtual {v2}, Lgnu/inet/imap/MessageStatus;->getMessageNumber()I

    move-result v8

    move v2, v1

    .line 810
    :goto_bb
    array-length v9, v6

    if-ge v2, v9, :cond_c9

    .line 812
    aget v9, v6, v2

    if-ne v9, v8, :cond_cd

    .line 814
    aget-object v2, v5, v2

    aget-object v8, v4, v3

    invoke-virtual {v2, v8}, Lgnu/mail/providers/imap/IMAPMessage;->update(Lgnu/inet/imap/MessageStatus;)V

    .line 807
    :cond_c9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b1

    .line 810
    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 819
    :cond_d0
    monitor-exit v7
    :try_end_d1
    .catchall {:try_start_ac .. :try_end_d1} :catchall_e7

    .line 820
    :try_start_d1
    invoke-virtual {v7}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 822
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_da} :catch_dc

    goto/16 :goto_3b

    .line 825
    :catch_dc
    move-exception v0

    .line 827
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 819
    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit v7
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    :try_start_e9
    throw v0
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ea} :catch_dc
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1284
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1285
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 1287
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1288
    iget-char v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1290
    :cond_1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    new-instance v1, Lgnu/mail/providers/imap/IMAPFolder;

    iget-object v2, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getSeparator()C

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;IC)V

    return-object v1
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 678
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 680
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    .line 682
    :cond_b
    new-instance v0, Lgnu/mail/providers/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lgnu/mail/providers/imap/IMAPMessage;-><init>(Lgnu/mail/providers/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public getMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 584
    .line 585
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 586
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v1

    .line 589
    :try_start_8
    iget v2, p0, Ljavax/mail/Folder;->mode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    iget v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-gez v2, :cond_3f

    .line 591
    :cond_11
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 592
    const/4 v3, 0x0

    const-string v4, "MESSAGES"

    aput-object v4, v2, v3

    .line 593
    monitor-enter v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1a} :catch_34

    .line 595
    :try_start_1a
    iget-object v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lgnu/inet/imap/IMAPConnection;->status(Ljava/lang/String;[Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v2

    .line 596
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_31

    .line 597
    const/4 v3, 0x1

    :try_start_22
    invoke-virtual {p0, v2, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_34

    .line 615
    :cond_25
    :goto_25
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 617
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 619
    :cond_2e
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    return v0

    .line 596
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_34

    .line 611
    :catch_34
    move-exception v0

    .line 613
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 601
    :cond_3f
    :try_start_3f
    monitor-enter v1
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_40} :catch_34

    .line 603
    :try_start_40
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->noop()Lgnu/inet/imap/MailboxStatus;

    move-result-object v2

    .line 604
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_4c

    .line 605
    if-eqz v2, :cond_25

    .line 607
    const/4 v3, 0x1

    :try_start_48
    invoke-virtual {p0, v2, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_34

    goto :goto_25

    .line 604
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_34
.end method

.method public getSeparator()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1300
    iget-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    if-nez v0, :cond_2a

    .line 1302
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 1303
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v1

    .line 1307
    :try_start_c
    monitor-enter v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_d} :catch_30

    .line 1309
    :try_start_d
    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/inet/imap/IMAPConnection;->list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v2

    .line 1310
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_2d

    .line 1311
    :try_start_15
    invoke-virtual {v1}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1313
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 1315
    :cond_1e
    array-length v0, v2

    if-lez v0, :cond_3b

    .line 1317
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lgnu/inet/imap/ListEntry;->getDelimiter()C

    move-result v0

    iput-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2a} :catch_30

    .line 1329
    :cond_2a
    iget-char v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->delimiter:C

    return v0

    .line 1310
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_30

    .line 1324
    :catch_30
    move-exception v0

    .line 1326
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1321
    :cond_3b
    :try_start_3b
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_30
.end method

.method public getType()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 252
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    if-ne v0, v3, :cond_54

    .line 254
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 255
    if-ne v1, v3, :cond_57

    const-string v0, ""

    move-object v2, v0

    .line 256
    :goto_15
    if-ne v1, v3, :cond_5f

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    move-object v1, v0

    .line 257
    :goto_1a
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v3

    .line 261
    :try_start_22
    monitor-enter v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_23} :catch_6c

    .line 263
    :try_start_23
    invoke-virtual {v3, v2, v1}, Lgnu/inet/imap/IMAPConnection;->list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v1

    .line 264
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_69

    .line 265
    :try_start_28
    invoke-virtual {v3}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 267
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 269
    :cond_35
    const/4 v0, 0x2

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    .line 270
    array-length v0, v1

    if-lez v0, :cond_77

    .line 272
    const-string v0, ""

    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lgnu/inet/imap/ListEntry;->isNoinferiors()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 274
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_54} :catch_6c

    .line 287
    :cond_54
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->type:I

    return v0

    .line 255
    :cond_57
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_15

    .line 256
    :cond_5f
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1a

    .line 264
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6c} :catch_6c

    .line 282
    :catch_6c
    move-exception v0

    .line 284
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 279
    :cond_77
    :try_start_77
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7d} :catch_6c
.end method

.method public isOpen()Z
    .registers 3

    .prologue
    .line 566
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public open(I)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 326
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    .line 330
    :try_start_8
    monitor-enter v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_9} :catch_28

    .line 332
    packed-switch p1, :pswitch_data_56

    .line 341
    :try_start_c
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_28} :catch_28

    .line 352
    :catch_28
    move-exception v0

    .line 354
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 335
    :pswitch_33
    :try_start_33
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lgnu/inet/imap/IMAPConnection;->select(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v1

    .line 343
    :goto_39
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V

    .line 344
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_25

    .line 345
    :try_start_3e
    invoke-virtual {v0, p0}, Lgnu/mail/providers/imap/IMAPStore;->setSelected(Lgnu/mail/providers/imap/IMAPFolder;)V

    .line 346
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 347
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 349
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4e} :catch_28

    .line 356
    :cond_4e
    return-void

    .line 338
    :pswitch_4f
    :try_start_4f
    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lgnu/inet/imap/IMAPConnection;->examine(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_25

    move-result-object v1

    goto :goto_39

    .line 332
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_33
    .end packed-switch
.end method

.method readFlags(Ljava/util/List;)Ljavax/mail/Flags;
    .registers 7
    .parameter

    .prologue
    .line 194
    new-instance v2, Ljavax/mail/Flags;

    invoke-direct {v2}, Ljavax/mail/Flags;-><init>()V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_52

    .line 198
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    const-string v4, "\\Answered"

    if-ne v0, v4, :cond_20

    .line 201
    sget-object v0, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    .line 196
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 203
    :cond_20
    const-string v4, "\\Deleted"

    if-ne v0, v4, :cond_2a

    .line 205
    sget-object v0, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1c

    .line 207
    :cond_2a
    const-string v4, "\\Draft"

    if-ne v0, v4, :cond_34

    .line 209
    sget-object v0, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1c

    .line 211
    :cond_34
    const-string v4, "\\Flagged"

    if-ne v0, v4, :cond_3e

    .line 213
    sget-object v0, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1c

    .line 215
    :cond_3e
    const-string v4, "\\Recent"

    if-ne v0, v4, :cond_48

    .line 217
    sget-object v0, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1c

    .line 219
    :cond_48
    const-string v4, "\\Seen"

    if-ne v0, v4, :cond_1c

    .line 221
    sget-object v0, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1c

    .line 225
    :cond_52
    return-object v2
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 837
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/mail/providers/imap/IMAPFolder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 846
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 847
    if-eqz p2, :cond_2b

    .line 850
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 851
    :goto_e
    array-length v4, p2

    if-ge v0, v4, :cond_24

    .line 853
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v4

    .line 854
    if-lez v0, :cond_1e

    .line 856
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 858
    :cond_1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 860
    :cond_24
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_2b
    invoke-direct {p0, p1, v2}, Lgnu/mail/providers/imap/IMAPFolder;->addTerm(Ljavax/mail/search/SearchTerm;Ljava/util/List;)Z

    move-result v3

    .line 863
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 864
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 865
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    .line 866
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    .line 870
    if-eqz v3, :cond_7a

    :try_start_42
    array-length v3, v4

    if-lez v3, :cond_7a

    .line 873
    monitor-enter v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_61

    .line 875
    const/4 v3, 0x0

    :try_start_47
    invoke-virtual {v2, v3, v4}, Lgnu/inet/imap/IMAPConnection;->search(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v3

    .line 876
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_5e

    .line 877
    :try_start_4c
    array-length v4, v3

    new-array p2, v4, [Ljavax/mail/Message;

    .line 878
    :goto_4f
    array-length v4, v3

    if-ge v1, v4, :cond_6c

    .line 879
    new-instance v4, Lgnu/mail/providers/imap/IMAPMessage;

    aget v5, v3, v1

    invoke-direct {v4, p0, v5}, Lgnu/mail/providers/imap/IMAPMessage;-><init>(Lgnu/mail/providers/imap/IMAPFolder;I)V

    aput-object v4, p2, v1
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5b} :catch_61

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 876
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_61} :catch_61

    .line 888
    :catch_61
    move-exception v0

    .line 890
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 880
    :cond_6c
    :try_start_6c
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPConnection;->alertsPending()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 881
    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->processAlerts()V

    .line 886
    :cond_75
    :goto_75
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0

    .line 884
    :cond_7a
    if-nez p2, :cond_75

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessages()[Ljavax/mail/Message;
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_7f} :catch_61

    move-result-object p2

    goto :goto_75
.end method

.method update(Lgnu/inet/imap/MailboxStatus;Z)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p1, :cond_8

    .line 155
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    .line 157
    :cond_8
    iget-boolean v0, p1, Lgnu/inet/imap/MailboxStatus;->readWrite:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x2

    :goto_d
    iput v0, p0, Ljavax/mail/Folder;->mode:I

    .line 158
    iget-object v0, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 160
    iget-object v0, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->readFlags(Ljava/util/List;)Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 163
    :cond_1b
    iget v1, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    .line 164
    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->messageCount:I

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    .line 165
    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I

    iput v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->newMessageCount:I

    .line 167
    iget v0, p1, Lgnu/inet/imap/MailboxStatus;->uidValidity:I

    int-to-long v2, v0

    iput-wide v2, p0, Lgnu/mail/providers/imap/IMAPFolder;->uidValidity:J

    .line 169
    if-eqz p2, :cond_4a

    .line 171
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-le v0, v1, :cond_4b

    .line 173
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int/2addr v0, v1

    new-array v2, v0, [Ljavax/mail/Message;

    move v0, v1

    .line 174
    :goto_36
    iget v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-ge v0, v3, :cond_47

    .line 176
    sub-int v3, v0, v1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v3

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 157
    :cond_45
    const/4 v0, 0x1

    goto :goto_d

    .line 178
    :cond_47
    invoke-virtual {p0, v2}, Lgnu/mail/providers/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    .line 190
    :cond_4a
    :goto_4a
    return-void

    .line 180
    :cond_4b
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    if-ge v0, v1, :cond_4a

    .line 182
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int v0, v1, v0

    new-array v2, v0, [Ljavax/mail/Message;

    .line 183
    iget v0, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    :goto_57
    if-ge v0, v1, :cond_66

    .line 185
    iget v3, p0, Lgnu/mail/providers/imap/IMAPFolder;->messageCount:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v3

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 187
    :cond_66
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lgnu/mail/providers/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto :goto_4a
.end method
