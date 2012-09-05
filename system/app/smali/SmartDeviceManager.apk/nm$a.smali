.class public final Lnm$a;
.super Lgk;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# instance fields
.field protected d:Lfh;

.field protected e:Lnm$b;

.field protected f:I

.field protected g:Lgl;

.field protected h:Z

.field protected transient i:Lnf;

.field protected j:Lfa;


# direct methods
.method public constructor <init>(Lnm$b;Lfh;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 738
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgk;-><init>(I)V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lnm$a;->j:Lfa;

    .line 739
    iput-object p1, p0, Lnm$a;->e:Lnm$b;

    .line 740
    iput v1, p0, Lnm$a;->f:I

    .line 741
    iput-object p2, p0, Lnm$a;->d:Lfh;

    .line 742
    invoke-static {v1, v1}, Lgl;->a(II)Lgl;

    move-result-object v0

    iput-object v0, p0, Lnm$a;->g:Lgl;

    .line 743
    return-void
.end method

.method private a(Lev;CILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfc;
        }
    .end annotation

    .prologue
    .line 1126
    const/16 v0, 0x20

    if-gt p2, v0, :cond_4b

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1136
    :goto_2d
    if-eqz p4, :cond_46

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    :cond_46
    invoke-virtual {p0, v0}, Lnm$a;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 1128
    :cond_4b
    invoke-virtual {p1, p2}, Lev;->a(C)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p1, Lev;->d:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1130
    :cond_79
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1132
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1134
    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d
.end method

.method private a(Ljava/lang/String;Lnf;Lev;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 1032
    .line 1033
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v8

    .line 1036
    :goto_9
    if-ge v1, v0, :cond_bf

    .line 1040
    :goto_b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1041
    if-ge v2, v0, :cond_bf

    .line 1042
    const/16 v3, 0x20

    if-le v1, v3, :cond_c0

    .line 1045
    invoke-virtual {p3, v1}, Lev;->b(C)I

    move-result v3

    .line 1046
    if-gez v3, :cond_20

    .line 1047
    invoke-direct {p0, p3, v1, v8, v6}, Lnm$a;->a(Lev;CILjava/lang/String;)V

    .line 1051
    :cond_20
    if-lt v2, v0, :cond_29

    .line 1052
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lnm$a;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 1054
    :cond_29
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1055
    invoke-virtual {p3, v2}, Lev;->b(C)I

    move-result v4

    .line 1056
    if-gez v4, :cond_39

    .line 1057
    const/4 v5, 0x1

    invoke-direct {p0, p3, v2, v5, v6}, Lnm$a;->a(Lev;CILjava/lang/String;)V

    .line 1059
    :cond_39
    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v4

    .line 1061
    if-lt v1, v0, :cond_45

    .line 1062
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lnm$a;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 1064
    :cond_45
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1065
    invoke-virtual {p3, v1}, Lev;->b(C)I

    move-result v4

    .line 1068
    if-gez v4, :cond_91

    .line 1069
    if-eq v4, v7, :cond_57

    .line 1070
    const/4 v4, 0x2

    invoke-direct {p0, p3, v1, v4, v6}, Lnm$a;->a(Lev;CILjava/lang/String;)V

    .line 1073
    :cond_57
    if-lt v3, v0, :cond_60

    .line 1074
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lnm$a;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 1076
    :cond_60
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1077
    invoke-virtual {p3, v3}, Lev;->a(C)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected padding character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-char v5, p3, Lev;->d:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, v3, v9, v4}, Lnm$a;->a(Lev;CILjava/lang/String;)V

    .line 1081
    :cond_8a
    shr-int/lit8 v2, v2, 0x4

    .line 1082
    invoke-virtual {p2, v2}, Lnf;->a(I)V

    goto/16 :goto_9

    .line 1086
    :cond_91
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    .line 1088
    if-lt v3, v0, :cond_9d

    .line 1089
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lnm$a;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 1091
    :cond_9d
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1092
    invoke-virtual {p3, v3}, Lev;->b(C)I

    move-result v4

    .line 1093
    if-gez v4, :cond_b6

    .line 1094
    if-eq v4, v7, :cond_ae

    .line 1095
    invoke-direct {p0, p3, v3, v9, v6}, Lnm$a;->a(Lev;CILjava/lang/String;)V

    .line 1097
    :cond_ae
    shr-int/lit8 v1, v1, 0x2

    .line 1098
    invoke-virtual {p2, v1}, Lnf;->b(I)V

    move v1, v2

    goto/16 :goto_9

    .line 1101
    :cond_b6
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 1102
    invoke-virtual {p2, v1}, Lnf;->c(I)V

    move v1, v2

    .line 1104
    goto/16 :goto_9

    .line 1105
    :cond_bf
    return-void

    :cond_c0
    move v1, v2

    goto/16 :goto_b
.end method

.method private x()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1108
    iget-object v0, p0, Lnm$a;->e:Lnm$b;

    iget v1, p0, Lnm$a;->f:I

    invoke-virtual {v0, v1}, Lnm$b;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final C()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfc;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-static {}, Lnm$a;->F()V

    .line 1149
    return-void
.end method

.method public final a()Lfh;
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Lnm$a;->d:Lfh;

    return-object v0
.end method

.method public final a(Lfa;)V
    .registers 2
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lnm$a;->j:Lfa;

    .line 747
    return-void
.end method

.method public final a(Lev;)[B
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v1, p0, Lnm$a;->b:Lfg;

    sget-object v2, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    if-ne v1, v2, :cond_14

    .line 1002
    invoke-direct {p0}, Lnm$a;->x()Ljava/lang/Object;

    move-result-object v1

    .line 1003
    instance-of v2, v1, [B

    if-eqz v2, :cond_14

    .line 1004
    move-object v0, v1

    check-cast v0, [B

    move-object p0, v0

    move-object v1, p0

    .line 1020
    :goto_13
    return-object v1

    .line 1008
    :cond_14
    iget-object v1, p0, Lnm$a;->b:Lfg;

    sget-object v2, Lfg;->VALUE_STRING:Lfg;

    if-eq v1, v2, :cond_3a

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnm$a;->b:Lfg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnm$a;->a(Ljava/lang/String;)Lfc;

    move-result-object v1

    throw v1

    .line 1011
    :cond_3a
    invoke-virtual {p0}, Lnm$a;->i()Ljava/lang/String;

    move-result-object v1

    .line 1012
    if-nez v1, :cond_42

    .line 1013
    const/4 v1, 0x0

    goto :goto_13

    .line 1015
    :cond_42
    iget-object v2, p0, Lnm$a;->i:Lnf;

    .line 1016
    if-nez v2, :cond_4d

    .line 1017
    new-instance v2, Lnf;

    invoke-direct {v2}, Lnf;-><init>()V

    iput-object v2, p0, Lnm$a;->i:Lnf;

    .line 1019
    :cond_4d
    invoke-direct {p0, v1, v2, p1}, Lnm$a;->a(Ljava/lang/String;Lnf;Lev;)V

    .line 1020
    invoke-virtual {v2}, Lnf;->b()[B

    move-result-object v1

    goto :goto_13
.end method

.method public final b()Lfg;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 798
    iget-boolean v0, p0, Lnm$a;->h:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lnm$a;->e:Lnm$b;

    if-nez v0, :cond_c

    :cond_a
    move-object v0, v3

    .line 825
    :goto_b
    return-object v0

    .line 801
    :cond_c
    iget v0, p0, Lnm$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnm$a;->f:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lnm$a;->f:I

    .line 803
    iget-object v0, p0, Lnm$a;->e:Lnm$b;

    invoke-virtual {v0}, Lnm$b;->a()Lnm$b;

    move-result-object v0

    iput-object v0, p0, Lnm$a;->e:Lnm$b;

    .line 804
    iget-object v0, p0, Lnm$a;->e:Lnm$b;

    if-nez v0, :cond_27

    move-object v0, v3

    .line 805
    goto :goto_b

    .line 808
    :cond_27
    iget-object v0, p0, Lnm$a;->e:Lnm$b;

    iget v1, p0, Lnm$a;->f:I

    invoke-virtual {v0, v1}, Lnm$b;->a(I)Lfg;

    move-result-object v0

    iput-object v0, p0, Lnm$a;->b:Lfg;

    .line 810
    iget-object v0, p0, Lnm$a;->b:Lfg;

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-ne v0, v1, :cond_45

    .line 811
    iget-object v1, p0, Lnm$a;->g:Lgl;

    invoke-direct {p0}, Lnm$a;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgl;->a(Ljava/lang/String;)V

    .line 825
    :cond_42
    :goto_42
    iget-object v0, p0, Lnm$a;->b:Lfg;

    goto :goto_b

    .line 812
    :cond_45
    iget-object v0, p0, Lnm$a;->b:Lfg;

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_54

    .line 813
    iget-object v0, p0, Lnm$a;->g:Lgl;

    invoke-virtual {v0, v2, v2}, Lgl;->c(II)Lgl;

    move-result-object v0

    iput-object v0, p0, Lnm$a;->g:Lgl;

    goto :goto_42

    .line 814
    :cond_54
    iget-object v0, p0, Lnm$a;->b:Lfg;

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-ne v0, v1, :cond_63

    .line 815
    iget-object v0, p0, Lnm$a;->g:Lgl;

    invoke-virtual {v0, v2, v2}, Lgl;->b(II)Lgl;

    move-result-object v0

    iput-object v0, p0, Lnm$a;->g:Lgl;

    goto :goto_42

    .line 816
    :cond_63
    iget-object v0, p0, Lnm$a;->b:Lfg;

    sget-object v1, Lfg;->END_OBJECT:Lfg;

    if-eq v0, v1, :cond_6f

    iget-object v0, p0, Lnm$a;->b:Lfg;

    sget-object v1, Lfg;->END_ARRAY:Lfg;

    if-ne v0, v1, :cond_42

    .line 819
    :cond_6f
    iget-object v0, p0, Lnm$a;->g:Lgl;

    invoke-virtual {v0}, Lgl;->h()Lgl;

    move-result-object v0

    iput-object v0, p0, Lnm$a;->g:Lgl;

    .line 821
    iget-object v0, p0, Lnm$a;->g:Lgl;

    if-nez v0, :cond_42

    .line 822
    invoke-static {v2, v2}, Lgl;->a(II)Lgl;

    move-result-object v0

    iput-object v0, p0, Lnm$a;->g:Lgl;

    goto :goto_42
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    iget-boolean v0, p0, Lnm$a;->h:Z

    if-nez v0, :cond_7

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnm$a;->h:Z

    .line 786
    :cond_7
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 849
    iget-object v0, p0, Lnm$a;->g:Lgl;

    invoke-virtual {v0}, Lgl;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lfa;
    .registers 2

    .prologue
    .line 841
    invoke-virtual {p0}, Lnm$a;->h()Lfa;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lfa;
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lnm$a;->j:Lfa;

    if-nez v0, :cond_7

    sget-object v0, Lfa;->a:Lfa;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lnm$a;->j:Lfa;

    goto :goto_6
.end method

.method public final i()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lnm$a;->b:Lfg;

    if-eqz v0, :cond_2e

    .line 861
    sget-object v0, Lnm$1;->a:[I

    iget-object v1, p0, Lnm$a;->b:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 871
    iget-object v0, p0, Lnm$a;->b:Lfg;

    invoke-virtual {v0}, Lfg;->asString()Ljava/lang/String;

    move-result-object v0

    .line 874
    :goto_18
    return-object v0

    .line 864
    :pswitch_19
    invoke-direct {p0}, Lnm$a;->x()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_18

    .line 868
    :pswitch_21
    invoke-direct {p0}, Lnm$a;->x()Ljava/lang/Object;

    move-result-object v0

    .line 869
    if-nez v0, :cond_29

    move-object v0, v2

    goto :goto_18

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2e
    move-object v0, v2

    .line 874
    goto :goto_18

    .line 861
    :pswitch_data_30
    .packed-switch 0x5
        :pswitch_19
        :pswitch_19
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public final j()[C
    .registers 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lnm$a;->i()Ljava/lang/String;

    move-result-object v0

    .line 880
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_7
.end method

.method public final k()I
    .registers 2

    .prologue
    .line 885
    invoke-virtual {p0}, Lnm$a;->i()Ljava/lang/String;

    move-result-object v0

    .line 886
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_7
.end method

.method public final l()I
    .registers 2

    .prologue
    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lnm$a;->b:Lfg;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnm$a;->b:Lfg;

    invoke-virtual {v0}, Lfg;->isNumeric()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnm$a;->b:Lfg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnm$a;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0

    .line 978
    :cond_2c
    invoke-direct {p0}, Lnm$a;->x()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public final n()Lfd$b;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 965
    invoke-virtual {p0}, Lnm$a;->m()Ljava/lang/Number;

    move-result-object v0

    .line 966
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    sget-object v0, Lfd$b;->INT:Lfd$b;

    .line 972
    :goto_a
    return-object v0

    .line 967
    :cond_b
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_12

    sget-object v0, Lfd$b;->LONG:Lfd$b;

    goto :goto_a

    .line 968
    :cond_12
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_19

    sget-object v0, Lfd$b;->DOUBLE:Lfd$b;

    goto :goto_a

    .line 969
    :cond_19
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_20

    sget-object v0, Lfd$b;->BIG_DECIMAL:Lfd$b;

    goto :goto_a

    .line 970
    :cond_20
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_27

    sget-object v0, Lfd$b;->FLOAT:Lfd$b;

    goto :goto_a

    .line 971
    :cond_27
    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_2e

    sget-object v0, Lfd$b;->BIG_INTEGER:Lfd$b;

    goto :goto_a

    .line 972
    :cond_2e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final q()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lnm$a;->b:Lfg;

    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_11

    .line 952
    invoke-direct {p0}, Lnm$a;->x()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 954
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lnm$a;->m()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_10
.end method

.method public final r()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p0}, Lnm$a;->m()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()Ljava/math/BigInteger;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p0}, Lnm$a;->m()Ljava/lang/Number;

    move-result-object v1

    .line 908
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_e

    .line 909
    move-object v0, v1

    check-cast v0, Ljava/math/BigInteger;

    move-object p0, v0

    move-object v1, p0

    .line 916
    :goto_d
    return-object v1

    .line 911
    :cond_e
    sget-object v2, Lnm$1;->b:[I

    invoke-virtual {p0}, Lnm$a;->n()Lfd$b;

    move-result-object v3

    invoke-virtual {v3}, Lfd$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2e

    .line 916
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_d

    .line 913
    :pswitch_26
    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_d

    .line 911
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_26
    .end packed-switch
.end method

.method public final t()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 944
    invoke-virtual {p0}, Lnm$a;->m()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final u()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 939
    invoke-virtual {p0}, Lnm$a;->m()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final v()Ljava/math/BigDecimal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 922
    invoke-virtual {p0}, Lnm$a;->m()Ljava/lang/Number;

    move-result-object v1

    .line 923
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_e

    .line 924
    move-object v0, v1

    check-cast v0, Ljava/math/BigDecimal;

    move-object p0, v0

    move-object v1, p0

    .line 934
    :goto_d
    return-object v1

    .line 926
    :cond_e
    sget-object v2, Lnm$1;->b:[I

    invoke-virtual {p0}, Lnm$a;->n()Lfd$b;

    move-result-object v3

    invoke-virtual {v3}, Lfd$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    .line 934
    :pswitch_1d
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_d

    .line 929
    :pswitch_26
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_d

    .line 931
    :pswitch_2f
    new-instance v2, Ljava/math/BigDecimal;

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v1, v2

    goto :goto_d

    .line 926
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2f
        :pswitch_1d
        :pswitch_1d
        :pswitch_26
    .end packed-switch
.end method

.method public final w()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 990
    iget-object v0, p0, Lnm$a;->b:Lfg;

    sget-object v1, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    if-ne v0, v1, :cond_b

    .line 991
    invoke-direct {p0}, Lnm$a;->x()Ljava/lang/Object;

    move-result-object v0

    .line 993
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
