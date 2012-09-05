.class public final Lgp;
.super Lgo;
.source "a"


# instance fields
.field protected J:Lfh;

.field protected final K:Lnb;


# direct methods
.method public constructor <init>(Lgt;ILjava/io/Reader;Lfh;Lnb;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lgo;-><init>(Lgt;ILjava/io/Reader;)V

    .line 38
    iput-object p4, p0, Lgp;->J:Lfh;

    .line 39
    iput-object p5, p0, Lgp;->K:Lnb;

    .line 40
    return-void
.end method

.method private G()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 722
    :cond_c
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 723
    iget v0, p0, Lgp;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->t:I

    .line 726
    :cond_1c
    iget v0, p0, Lgp;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->w:I

    .line 727
    iget v0, p0, Lgp;->t:I

    iput v0, p0, Lgp;->x:I

    .line 728
    return-void
.end method

.method private H()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    iget v0, p0, Lgp;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->w:I

    .line 733
    iget v0, p0, Lgp;->t:I

    iput v0, p0, Lgp;->x:I

    .line 734
    return-void
.end method

.method private final I()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 739
    :cond_2
    :goto_2
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 740
    :cond_e
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->t:I

    aget-char v0, v0, v1

    .line 741
    if-le v0, v3, :cond_23

    .line 742
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    .line 743
    return v0

    .line 745
    :cond_1f
    invoke-direct {p0}, Lgp;->J()V

    goto :goto_2

    .line 746
    :cond_23
    if-eq v0, v3, :cond_2

    .line 747
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    .line 748
    invoke-direct {p0}, Lgp;->H()V

    goto :goto_2

    .line 749
    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    .line 750
    invoke-direct {p0}, Lgp;->G()V

    goto :goto_2

    .line 751
    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 752
    invoke-virtual {p0, v0}, Lgp;->a(I)V

    goto :goto_2

    .line 756
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgp;->B:Lgl;

    invoke-virtual {v1}, Lgl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgp;->a(Ljava/lang/String;)Lfc;

    move-result-object v0

    throw v0
.end method

.method private final J()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x2f

    const/16 v3, 0x2a

    .line 787
    sget-object v0, Lfd$a;->ALLOW_COMMENTS:Lfd$a;

    invoke-virtual {p0, v0}, Lgp;->a(Lfd$a;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 788
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lgp;->b(ILjava/lang/String;)V

    .line 791
    :cond_17
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-nez v0, :cond_28

    .line 792
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lgp;->c(Ljava/lang/String;)V

    .line 794
    :cond_28
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->t:I

    aget-char v0, v0, v1

    .line 795
    if-ne v0, v4, :cond_60

    .line 796
    :cond_34
    :goto_34
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_40

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_40
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->t:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_34

    if-ne v0, v6, :cond_54

    invoke-direct {p0}, Lgp;->H()V

    .line 802
    :cond_53
    :goto_53
    return-void

    .line 796
    :cond_54
    if-ne v0, v7, :cond_5a

    invoke-direct {p0}, Lgp;->G()V

    goto :goto_53

    :cond_5a
    if-eq v0, v5, :cond_34

    invoke-virtual {p0, v0}, Lgp;->a(I)V

    goto :goto_34

    .line 797
    :cond_60
    if-ne v0, v3, :cond_b3

    .line 798
    :cond_62
    :goto_62
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_6e

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_6e
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->t:I

    aget-char v0, v0, v1

    if-gt v0, v3, :cond_62

    if-ne v0, v3, :cond_97

    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_88

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_88
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_62

    iget v0, p0, Lgp;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->t:I

    goto :goto_53

    :cond_97
    const/16 v1, 0x20

    if-ge v0, v1, :cond_62

    if-ne v0, v6, :cond_a1

    invoke-direct {p0}, Lgp;->H()V

    goto :goto_62

    :cond_a1
    if-ne v0, v7, :cond_a7

    invoke-direct {p0}, Lgp;->G()V

    goto :goto_62

    :cond_a7
    if-eq v0, v5, :cond_62

    invoke-virtual {p0, v0}, Lgp;->a(I)V

    goto :goto_62

    :cond_ad
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lgp;->c(Ljava/lang/String;)V

    goto :goto_53

    .line 800
    :cond_b3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lgp;->b(ILjava/lang/String;)V

    goto :goto_53
.end method

.method private K()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 859
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_12

    .line 860
    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-nez v0, :cond_12

    .line 861
    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lgp;->c(Ljava/lang/String;)V

    .line 864
    :cond_12
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->t:I

    aget-char v0, v0, v1

    .line 866
    sparse-switch v0, :sswitch_data_66

    .line 889
    invoke-virtual {p0, v0}, Lgp;->a(C)C

    move-result v0

    .line 907
    :goto_23
    :sswitch_23
    return v0

    .line 869
    :sswitch_24
    const/16 v0, 0x8

    goto :goto_23

    .line 871
    :sswitch_27
    const/16 v0, 0x9

    goto :goto_23

    .line 873
    :sswitch_2a
    const/16 v0, 0xa

    goto :goto_23

    .line 875
    :sswitch_2d
    const/16 v0, 0xc

    goto :goto_23

    .line 877
    :sswitch_30
    const/16 v0, 0xd

    goto :goto_23

    :sswitch_33
    move v0, v3

    move v1, v3

    .line 894
    :goto_35
    const/4 v2, 0x4

    if-ge v0, v2, :cond_64

    .line 895
    iget v2, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-lt v2, v3, :cond_49

    .line 896
    invoke-virtual {p0}, Lgp;->y()Z

    move-result v2

    if-nez v2, :cond_49

    .line 897
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lgp;->c(Ljava/lang/String;)V

    .line 900
    :cond_49
    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgp;->t:I

    aget-char v2, v2, v3

    .line 901
    invoke-static {v2}, Lng;->a(I)I

    move-result v3

    .line 902
    if-gez v3, :cond_5e

    .line 903
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lgp;->b(ILjava/lang/String;)V

    .line 905
    :cond_5e
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 907
    :cond_64
    int-to-char v0, v1

    goto :goto_23

    .line 866
    :sswitch_data_66
    .sparse-switch
        0x22 -> :sswitch_23
        0x2f -> :sswitch_23
        0x5c -> :sswitch_23
        0x62 -> :sswitch_24
        0x66 -> :sswitch_2d
        0x6e -> :sswitch_2a
        0x72 -> :sswitch_30
        0x74 -> :sswitch_27
        0x75 -> :sswitch_33
    .end sparse-switch
.end method

.method private static a(Lev;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1026
    const/16 v0, 0x20

    if-gt p1, v0, :cond_4c

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    :goto_2d
    if-eqz p3, :cond_46

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1028
    :cond_4c
    invoke-virtual {p0, p1}, Lev;->a(C)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lev;->d:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1030
    :cond_7a
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1032
    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1034
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

.method private a(III)Ljava/lang/String;
    .registers 12
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
    const/16 v6, 0x5c

    .line 273
    iget-object v0, p0, Lgp;->E:Lnl;

    iget-object v1, p0, Lgp;->M:[C

    iget v2, p0, Lgp;->t:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lnl;->a([CII)V

    .line 278
    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0}, Lnl;->h()[C

    move-result-object v0

    .line 279
    iget-object v1, p0, Lgp;->E:Lnl;

    invoke-virtual {v1}, Lnl;->j()I

    move-result v1

    move v2, p2

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    .line 282
    :goto_1c
    iget v3, p0, Lgp;->t:I

    iget v4, p0, Lgp;->u:I

    if-lt v3, v4, :cond_45

    .line 283
    invoke-virtual {p0}, Lgp;->y()Z

    move-result v3

    if-nez v3, :cond_45

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": was expecting closing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgp;->c(Ljava/lang/String;)V

    .line 287
    :cond_45
    iget-object v3, p0, Lgp;->M:[C

    iget v4, p0, Lgp;->t:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lgp;->t:I

    aget-char v3, v3, v4

    .line 289
    if-gt v3, v6, :cond_79

    .line 290
    if-ne v3, v6, :cond_6c

    .line 295
    invoke-direct {p0}, Lgp;->K()C

    move-result v4

    .line 305
    :goto_57
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 307
    add-int/lit8 v3, v0, 0x1

    aput-char v4, v1, v0

    .line 310
    array-length v0, v1

    if-lt v3, v0, :cond_95

    .line 311
    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0}, Lnl;->k()[C

    move-result-object v0

    .line 312
    const/4 v1, 0x0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_1c

    .line 296
    :cond_6c
    if-gt v3, p3, :cond_79

    .line 297
    if-eq v3, p3, :cond_7b

    .line 298
    const/16 v4, 0x20

    if-ge v3, v4, :cond_79

    .line 301
    const-string v4, "name"

    invoke-virtual {p0, v3, v4}, Lgp;->c(ILjava/lang/String;)V

    :cond_79
    move v4, v3

    goto :goto_57

    .line 315
    :cond_7b
    iget-object v1, p0, Lgp;->E:Lnl;

    invoke-virtual {v1, v0}, Lnl;->a(I)V

    .line 317
    iget-object v0, p0, Lgp;->E:Lnl;

    .line 318
    invoke-virtual {v0}, Lnl;->d()[C

    move-result-object v1

    .line 319
    invoke-virtual {v0}, Lnl;->c()I

    move-result v3

    .line 320
    invoke-virtual {v0}, Lnl;->b()I

    move-result v0

    .line 322
    iget-object v4, p0, Lgp;->K:Lnb;

    invoke-virtual {v4, v1, v3, v0, v2}, Lnb;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_95
    move v0, v3

    goto :goto_1c
.end method

.method private a(Lfg;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p1}, Lfg;->asString()Ljava/lang/String;

    move-result-object v0

    .line 663
    const/4 v1, 0x1

    .line 665
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_9
    if-ge v1, v2, :cond_7d

    .line 666
    iget v3, p0, Lgp;->t:I

    iget v4, p0, Lgp;->u:I

    if-lt v3, v4, :cond_1c

    .line 667
    invoke-virtual {p0}, Lgp;->y()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 668
    const-string v3, " in a value"

    invoke-virtual {p0, v3}, Lgp;->c(Ljava/lang/String;)V

    .line 671
    :cond_1c
    iget-object v3, p0, Lgp;->M:[C

    iget v4, p0, Lgp;->t:I

    aget-char v3, v3, v4

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_74

    .line 673
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_32
    iget v3, p0, Lgp;->t:I

    iget v5, p0, Lgp;->u:I

    if-lt v3, v5, :cond_3e

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_3e
    iget-object v3, p0, Lgp;->M:[C

    iget v5, p0, Lgp;->t:I

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_54

    iget v5, p0, Lgp;->t:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lgp;->t:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized token \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgp;->d(Ljava/lang/String;)V

    .line 675
    :cond_74
    iget v3, p0, Lgp;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgp;->t:I

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 681
    :cond_7d
    return-void
.end method

.method private d(I)Ljava/lang/String;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/16 v10, 0x27

    const/16 v9, 0x22

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 235
    if-eq p1, v9, :cond_12d

    .line 236
    if-ne p1, v10, :cond_4c

    sget-object v0, Lfd$a;->ALLOW_SINGLE_QUOTES:Lfd$a;

    invoke-virtual {p0, v0}, Lgp;->a(Lfd$a;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-ge v0, v1, :cond_172

    invoke-static {}, Lng;->a()[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    move v0, v7

    :cond_1f
    iget-object v5, p0, Lgp;->M:[C

    aget-char v5, v5, v4

    if-ne v5, v10, :cond_35

    iget v1, p0, Lgp;->t:I

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lgp;->t:I

    iget-object v2, p0, Lgp;->K:Lnb;

    iget-object v3, p0, Lgp;->M:[C

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4, v0}, Lnb;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_34
    return-object v0

    .line 236
    :cond_35
    if-ge v5, v3, :cond_3b

    aget v6, v2, v5

    if-nez v6, :cond_42

    :cond_3b
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v1, :cond_1f

    :cond_42
    move v1, v4

    :goto_43
    iget v2, p0, Lgp;->t:I

    iput v1, p0, Lgp;->t:I

    invoke-direct {p0, v2, v0, v10}, Lgp;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_4c
    sget-object v0, Lfd$a;->ALLOW_UNQUOTED_FIELD_NAMES:Lfd$a;

    invoke-virtual {p0, v0}, Lgp;->a(Lfd$a;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lgp;->b(ILjava/lang/String;)V

    :cond_59
    invoke-static {}, Lng;->b()[I

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_97

    aget v2, v0, p1

    if-nez v2, :cond_95

    const/16 v2, 0x30

    if-lt p1, v2, :cond_6c

    const/16 v2, 0x39

    if-le p1, v2, :cond_95

    :cond_6c
    move v2, v8

    :goto_6d
    if-nez v2, :cond_74

    const-string v2, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v2}, Lgp;->b(ILjava/lang/String;)V

    :cond_74
    iget v2, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-ge v2, v3, :cond_16f

    move v4, v2

    move v2, v7

    :cond_7c
    iget-object v5, p0, Lgp;->M:[C

    aget-char v5, v5, v4

    if-ge v5, v1, :cond_9d

    aget v6, v0, v5

    if-eqz v6, :cond_b3

    iget v0, p0, Lgp;->t:I

    sub-int/2addr v0, v8

    iput v4, p0, Lgp;->t:I

    iget-object v1, p0, Lgp;->K:Lnb;

    iget-object v3, p0, Lgp;->M:[C

    sub-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v4, v2}, Lnb;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_95
    move v2, v7

    goto :goto_6d

    :cond_97
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    goto :goto_6d

    :cond_9d
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_b3

    iget v0, p0, Lgp;->t:I

    sub-int/2addr v0, v8

    iput v4, p0, Lgp;->t:I

    iget-object v1, p0, Lgp;->K:Lnb;

    iget-object v3, p0, Lgp;->M:[C

    sub-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v4, v2}, Lnb;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_b3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_7c

    move v1, v2

    move v2, v4

    :goto_bc
    iget v3, p0, Lgp;->t:I

    sub-int/2addr v3, v8

    iput v2, p0, Lgp;->t:I

    iget-object v2, p0, Lgp;->E:Lnl;

    iget-object v4, p0, Lgp;->M:[C

    iget v5, p0, Lgp;->t:I

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v3, v5}, Lnl;->a([CII)V

    iget-object v2, p0, Lgp;->E:Lnl;

    invoke-virtual {v2}, Lnl;->h()[C

    move-result-object v2

    iget-object v3, p0, Lgp;->E:Lnl;

    invoke-virtual {v3}, Lnl;->j()I

    move-result v3

    array-length v4, v0

    move v11, v3

    move v3, v1

    move v1, v11

    :goto_db
    iget v5, p0, Lgp;->t:I

    iget v6, p0, Lgp;->u:I

    if-lt v5, v6, :cond_e7

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v5

    if-eqz v5, :cond_f3

    :cond_e7
    iget-object v5, p0, Lgp;->M:[C

    iget v6, p0, Lgp;->t:I

    aget-char v5, v5, v6

    if-gt v5, v4, :cond_10e

    aget v6, v0, v5

    if-eqz v6, :cond_114

    :cond_f3
    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0, v1}, Lnl;->a(I)V

    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0}, Lnl;->d()[C

    move-result-object v1

    invoke-virtual {v0}, Lnl;->c()I

    move-result v2

    invoke-virtual {v0}, Lnl;->b()I

    move-result v0

    iget-object v4, p0, Lgp;->K:Lnb;

    invoke-virtual {v4, v1, v2, v0, v3}, Lnb;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    :cond_10e
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-eqz v6, :cond_f3

    :cond_114
    iget v6, p0, Lgp;->t:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgp;->t:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v5

    add-int/lit8 v6, v1, 0x1

    aput-char v5, v2, v1

    array-length v1, v2

    if-lt v6, v1, :cond_16c

    iget-object v1, p0, Lgp;->E:Lnl;

    invoke-virtual {v1}, Lnl;->k()[C

    move-result-object v1

    move-object v2, v1

    move v1, v7

    goto :goto_db

    .line 242
    :cond_12d
    iget v0, p0, Lgp;->t:I

    .line 244
    iget v1, p0, Lgp;->u:I

    .line 246
    if-ge v0, v1, :cond_169

    .line 247
    invoke-static {}, Lng;->a()[I

    move-result-object v2

    .line 248
    array-length v3, v2

    move v4, v0

    move v0, v7

    .line 251
    :cond_13a
    iget-object v5, p0, Lgp;->M:[C

    aget-char v5, v5, v4

    .line 252
    if-ge v5, v3, :cond_157

    aget v6, v2, v5

    if-eqz v6, :cond_157

    .line 253
    if-ne v5, v9, :cond_15e

    .line 254
    iget v1, p0, Lgp;->t:I

    .line 255
    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lgp;->t:I

    .line 256
    iget-object v2, p0, Lgp;->K:Lnb;

    iget-object v3, p0, Lgp;->M:[C

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4, v0}, Lnb;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    .line 260
    :cond_157
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    .line 261
    add-int/lit8 v4, v4, 0x1

    .line 262
    if-lt v4, v1, :cond_13a

    :cond_15e
    move v1, v4

    .line 265
    :goto_15f
    iget v2, p0, Lgp;->t:I

    .line 266
    iput v1, p0, Lgp;->t:I

    .line 267
    invoke-direct {p0, v2, v0, v9}, Lgp;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_34

    :cond_169
    move v1, v0

    move v0, v7

    goto :goto_15f

    :cond_16c
    move v1, v6

    goto/16 :goto_db

    :cond_16f
    move v1, v7

    goto/16 :goto_bc

    :cond_172
    move v1, v0

    move v0, v7

    goto/16 :goto_43
.end method

.method private e(I)Lfg;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x27

    .line 429
    if-ne p1, v5, :cond_e

    sget-object v0, Lfd$a;->ALLOW_SINGLE_QUOTES:Lfd$a;

    invoke-virtual {p0, v0}, Lgp;->a(Lfd$a;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 430
    :cond_e
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lgp;->b(ILjava/lang/String;)V

    .line 440
    :cond_13
    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0}, Lnl;->i()[C

    move-result-object v0

    .line 441
    iget-object v1, p0, Lgp;->E:Lnl;

    invoke-virtual {v1}, Lnl;->j()I

    move-result v1

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 444
    :goto_22
    iget v2, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-lt v2, v3, :cond_33

    .line 445
    invoke-virtual {p0}, Lgp;->y()Z

    move-result v2

    if-nez v2, :cond_33

    .line 446
    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lgp;->c(Ljava/lang/String;)V

    .line 449
    :cond_33
    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgp;->t:I

    aget-char v2, v2, v3

    .line 451
    if-gt v2, v6, :cond_45

    .line 452
    if-ne v2, v6, :cond_58

    .line 457
    invoke-direct {p0}, Lgp;->K()C

    move-result v2

    .line 468
    :cond_45
    :goto_45
    array-length v3, v1

    if-lt v0, v3, :cond_52

    .line 469
    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0}, Lnl;->k()[C

    move-result-object v0

    .line 470
    const/4 v1, 0x0

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 473
    :cond_52
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    move v0, v3

    .line 474
    goto :goto_22

    .line 458
    :cond_58
    if-gt v2, v5, :cond_45

    .line 459
    if-eq v2, v5, :cond_66

    .line 460
    const/16 v3, 0x20

    if-ge v2, v3, :cond_45

    .line 463
    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lgp;->c(ILjava/lang/String;)V

    goto :goto_45

    .line 475
    :cond_66
    iget-object v1, p0, Lgp;->E:Lnl;

    invoke-virtual {v1, v0}, Lnl;->a(I)V

    .line 476
    sget-object v0, Lfg;->VALUE_STRING:Lfg;

    return-object v0
.end method


# virtual methods
.method public final a()Lfh;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lgp;->J:Lfh;

    return-object v0
.end method

.method public final b()Lfg;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x20

    .line 70
    iget-object v0, p0, Lgp;->b:Lfg;

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-ne v0, v1, :cond_37

    .line 71
    iput-boolean v2, p0, Lgp;->G:Z

    iget-object v0, p0, Lgp;->C:Lfg;

    iput-object v6, p0, Lgp;->C:Lfg;

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-ne v0, v1, :cond_26

    iget-object v1, p0, Lgp;->B:Lgl;

    iget v2, p0, Lgp;->z:I

    iget v3, p0, Lgp;->A:I

    invoke-virtual {v1, v2, v3}, Lgl;->b(II)Lgl;

    move-result-object v1

    iput-object v1, p0, Lgp;->B:Lgl;

    :cond_23
    :goto_23
    iput-object v0, p0, Lgp;->b:Lfg;

    .line 202
    :goto_25
    return-object v0

    .line 71
    :cond_26
    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_23

    iget-object v1, p0, Lgp;->B:Lgl;

    iget v2, p0, Lgp;->z:I

    iget v3, p0, Lgp;->A:I

    invoke-virtual {v1, v2, v3}, Lgl;->c(II)Lgl;

    move-result-object v1

    iput-object v1, p0, Lgp;->B:Lgl;

    goto :goto_23

    .line 73
    :cond_37
    iget-boolean v0, p0, Lgp;->D:Z

    if-eqz v0, :cond_7b

    .line 74
    iput-boolean v2, p0, Lgp;->D:Z

    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    iget-object v2, p0, Lgp;->M:[C

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_46
    if-lt v1, v0, :cond_5c

    iput v1, p0, Lgp;->t:I

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lgp;->c(Ljava/lang/String;)V

    :cond_55
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    move v9, v1

    move v1, v0

    move v0, v9

    :cond_5c
    add-int/lit8 v3, v1, 0x1

    aget-char v1, v2, v1

    const/16 v4, 0x5c

    if-gt v1, v4, :cond_a9

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_75

    iput v3, p0, Lgp;->t:I

    invoke-direct {p0}, Lgp;->K()C

    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_46

    :cond_75
    if-gt v1, v8, :cond_a9

    if-ne v1, v8, :cond_a0

    iput v3, p0, Lgp;->t:I

    .line 76
    :cond_7b
    :goto_7b
    iget v0, p0, Lgp;->t:I

    iget v1, p0, Lgp;->u:I

    if-lt v0, v1, :cond_87

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v0

    if-eqz v0, :cond_c9

    :cond_87
    iget-object v0, p0, Lgp;->M:[C

    iget v1, p0, Lgp;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->t:I

    aget-char v0, v0, v1

    if-le v0, v5, :cond_af

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_ab

    .line 77
    :goto_97
    if-gez v0, :cond_ce

    .line 81
    invoke-virtual {p0}, Lgp;->close()V

    .line 82
    iput-object v6, p0, Lgp;->b:Lfg;

    move-object v0, v6

    goto :goto_25

    .line 74
    :cond_a0
    if-ge v1, v5, :cond_a9

    iput v3, p0, Lgp;->t:I

    const-string v4, "string value"

    invoke-virtual {p0, v1, v4}, Lgp;->c(ILjava/lang/String;)V

    :cond_a9
    move v1, v3

    goto :goto_46

    .line 76
    :cond_ab
    invoke-direct {p0}, Lgp;->J()V

    goto :goto_7b

    :cond_af
    if-eq v0, v5, :cond_7b

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b9

    invoke-direct {p0}, Lgp;->H()V

    goto :goto_7b

    :cond_b9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_c1

    invoke-direct {p0}, Lgp;->G()V

    goto :goto_7b

    :cond_c1
    const/16 v1, 0x9

    if-eq v0, v1, :cond_7b

    invoke-virtual {p0, v0}, Lgp;->a(I)V

    goto :goto_7b

    :cond_c9
    invoke-virtual {p0}, Lgp;->C()V

    const/4 v0, -0x1

    goto :goto_97

    .line 88
    :cond_ce
    iget-wide v1, p0, Lgp;->v:J

    iget v3, p0, Lgp;->t:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lgp;->y:J

    .line 89
    iget v1, p0, Lgp;->w:I

    iput v1, p0, Lgp;->z:I

    .line 90
    iget v1, p0, Lgp;->t:I

    iget v2, p0, Lgp;->x:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v7

    iput v1, p0, Lgp;->A:I

    .line 93
    iput-object v6, p0, Lgp;->I:[B

    .line 96
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_106

    .line 97
    iget-object v1, p0, Lgp;->B:Lgl;

    invoke-virtual {v1}, Lgl;->a()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 98
    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lgp;->a(IC)V

    .line 100
    :cond_f8
    iget-object v0, p0, Lgp;->B:Lgl;

    invoke-virtual {v0}, Lgl;->h()Lgl;

    move-result-object v0

    iput-object v0, p0, Lgp;->B:Lgl;

    .line 101
    sget-object v0, Lfg;->END_ARRAY:Lfg;

    iput-object v0, p0, Lgp;->b:Lfg;

    goto/16 :goto_25

    .line 103
    :cond_106
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_125

    .line 104
    iget-object v1, p0, Lgp;->B:Lgl;

    invoke-virtual {v1}, Lgl;->c()Z

    move-result v1

    if-nez v1, :cond_117

    .line 105
    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lgp;->a(IC)V

    .line 107
    :cond_117
    iget-object v0, p0, Lgp;->B:Lgl;

    invoke-virtual {v0}, Lgl;->h()Lgl;

    move-result-object v0

    iput-object v0, p0, Lgp;->B:Lgl;

    .line 108
    sget-object v0, Lfg;->END_OBJECT:Lfg;

    iput-object v0, p0, Lgp;->b:Lfg;

    goto/16 :goto_25

    .line 112
    :cond_125
    iget-object v1, p0, Lgp;->B:Lgl;

    invoke-virtual {v1}, Lgl;->i()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 113
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_153

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgp;->B:Lgl;

    invoke-virtual {v2}, Lgl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgp;->b(ILjava/lang/String;)V

    .line 116
    :cond_153
    invoke-direct {p0}, Lgp;->I()I

    move-result v0

    .line 123
    :cond_157
    iget-object v1, p0, Lgp;->B:Lgl;

    invoke-virtual {v1}, Lgl;->c()Z

    move-result v1

    .line 124
    if-eqz v1, :cond_17d

    .line 126
    invoke-direct {p0, v0}, Lgp;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lgp;->B:Lgl;

    invoke-virtual {v2, v0}, Lgl;->a(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lfg;->FIELD_NAME:Lfg;

    iput-object v0, p0, Lgp;->b:Lfg;

    .line 129
    invoke-direct {p0}, Lgp;->I()I

    move-result v0

    .line 130
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_179

    .line 131
    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lgp;->b(ILjava/lang/String;)V

    .line 133
    :cond_179
    invoke-direct {p0}, Lgp;->I()I

    move-result v0

    .line 140
    :cond_17d
    sparse-switch v0, :sswitch_data_1da

    .line 193
    invoke-direct {p0, v0}, Lgp;->e(I)Lfg;

    move-result-object v0

    .line 197
    :goto_184
    if-eqz v1, :cond_1d5

    .line 198
    iput-object v0, p0, Lgp;->C:Lfg;

    .line 199
    iget-object v0, p0, Lgp;->b:Lfg;

    goto/16 :goto_25

    .line 142
    :sswitch_18c
    iput-boolean v7, p0, Lgp;->D:Z

    .line 143
    sget-object v0, Lfg;->VALUE_STRING:Lfg;

    goto :goto_184

    .line 146
    :sswitch_191
    if-nez v1, :cond_19f

    .line 147
    iget-object v0, p0, Lgp;->B:Lgl;

    iget v2, p0, Lgp;->z:I

    iget v3, p0, Lgp;->A:I

    invoke-virtual {v0, v2, v3}, Lgl;->b(II)Lgl;

    move-result-object v0

    iput-object v0, p0, Lgp;->B:Lgl;

    .line 149
    :cond_19f
    sget-object v0, Lfg;->START_ARRAY:Lfg;

    goto :goto_184

    .line 152
    :sswitch_1a2
    if-nez v1, :cond_1b0

    .line 153
    iget-object v0, p0, Lgp;->B:Lgl;

    iget v2, p0, Lgp;->z:I

    iget v3, p0, Lgp;->A:I

    invoke-virtual {v0, v2, v3}, Lgl;->c(II)Lgl;

    move-result-object v0

    iput-object v0, p0, Lgp;->B:Lgl;

    .line 155
    :cond_1b0
    sget-object v0, Lfg;->START_OBJECT:Lfg;

    goto :goto_184

    .line 161
    :sswitch_1b3
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lgp;->b(ILjava/lang/String;)V

    .line 163
    :sswitch_1b8
    sget-object v0, Lfg;->VALUE_TRUE:Lfg;

    invoke-direct {p0, v0}, Lgp;->a(Lfg;)V

    .line 164
    sget-object v0, Lfg;->VALUE_TRUE:Lfg;

    goto :goto_184

    .line 167
    :sswitch_1c0
    sget-object v0, Lfg;->VALUE_FALSE:Lfg;

    invoke-direct {p0, v0}, Lgp;->a(Lfg;)V

    .line 168
    sget-object v0, Lfg;->VALUE_FALSE:Lfg;

    goto :goto_184

    .line 171
    :sswitch_1c8
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    invoke-direct {p0, v0}, Lgp;->a(Lfg;)V

    .line 172
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    goto :goto_184

    .line 190
    :sswitch_1d0
    invoke-virtual {p0, v0}, Lgp;->c(I)Lfg;

    move-result-object v0

    goto :goto_184

    .line 201
    :cond_1d5
    iput-object v0, p0, Lgp;->b:Lfg;

    goto/16 :goto_25

    .line 140
    nop

    :sswitch_data_1da
    .sparse-switch
        0x22 -> :sswitch_18c
        0x2d -> :sswitch_1d0
        0x30 -> :sswitch_1d0
        0x31 -> :sswitch_1d0
        0x32 -> :sswitch_1d0
        0x33 -> :sswitch_1d0
        0x34 -> :sswitch_1d0
        0x35 -> :sswitch_1d0
        0x36 -> :sswitch_1d0
        0x37 -> :sswitch_1d0
        0x38 -> :sswitch_1d0
        0x39 -> :sswitch_1d0
        0x5b -> :sswitch_191
        0x5d -> :sswitch_1b3
        0x66 -> :sswitch_1c0
        0x6e -> :sswitch_1c8
        0x74 -> :sswitch_1b8
        0x7b -> :sswitch_1a2
        0x7d -> :sswitch_1b3
    .end sparse-switch
.end method

.method protected final b(Lev;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 920
    invoke-virtual {p0}, Lgp;->D()Lnf;

    move-result-object v0

    .line 933
    :cond_7
    :goto_7
    iget v1, p0, Lgp;->t:I

    iget v2, p0, Lgp;->u:I

    if-lt v1, v2, :cond_10

    .line 934
    invoke-virtual {p0}, Lgp;->x()V

    .line 936
    :cond_10
    iget-object v1, p0, Lgp;->M:[C

    iget v2, p0, Lgp;->t:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgp;->t:I

    aget-char v1, v1, v2

    .line 937
    const/16 v2, 0x20

    if-le v1, v2, :cond_7

    .line 938
    invoke-virtual {p1, v1}, Lev;->b(C)I

    move-result v2

    .line 939
    if-gez v2, :cond_33

    .line 940
    const/16 v2, 0x22

    if-ne v1, v2, :cond_2d

    .line 941
    invoke-virtual {v0}, Lnf;->b()[B

    move-result-object v0

    return-object v0

    .line 943
    :cond_2d
    const/4 v0, 0x0

    invoke-static {p1, v1, v0, v5}, Lgp;->a(Lev;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 949
    :cond_33
    iget v1, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-lt v1, v3, :cond_3c

    .line 950
    invoke-virtual {p0}, Lgp;->x()V

    .line 952
    :cond_3c
    iget-object v1, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgp;->t:I

    aget-char v1, v1, v3

    .line 953
    invoke-virtual {p1, v1}, Lev;->b(C)I

    move-result v3

    .line 954
    if-gez v3, :cond_52

    .line 955
    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v5}, Lgp;->a(Lev;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 957
    :cond_52
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v3

    .line 960
    iget v2, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-lt v2, v3, :cond_5e

    .line 961
    invoke-virtual {p0}, Lgp;->x()V

    .line 963
    :cond_5e
    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgp;->t:I

    aget-char v2, v2, v3

    .line 964
    invoke-virtual {p1, v2}, Lev;->b(C)I

    move-result v3

    .line 967
    if-gez v3, :cond_b6

    .line 968
    if-eq v3, v6, :cond_76

    .line 969
    const/4 v0, 0x2

    invoke-static {p1, v2, v0, v5}, Lgp;->a(Lev;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 972
    :cond_76
    iget v2, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-lt v2, v3, :cond_7f

    .line 973
    invoke-virtual {p0}, Lgp;->x()V

    .line 975
    :cond_7f
    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgp;->t:I

    aget-char v2, v2, v3

    .line 976
    invoke-virtual {p1, v2}, Lev;->a(C)Z

    move-result v3

    if-nez v3, :cond_af

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p1, Lev;->d:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v7, v0}, Lgp;->a(Lev;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 980
    :cond_af
    shr-int/lit8 v1, v1, 0x4

    .line 981
    invoke-virtual {v0, v1}, Lnf;->a(I)V

    goto/16 :goto_7

    .line 985
    :cond_b6
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    .line 987
    iget v2, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-lt v2, v3, :cond_c2

    .line 988
    invoke-virtual {p0}, Lgp;->x()V

    .line 990
    :cond_c2
    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgp;->t:I

    aget-char v2, v2, v3

    .line 991
    invoke-virtual {p1, v2}, Lev;->b(C)I

    move-result v3

    .line 992
    if-gez v3, :cond_e0

    .line 993
    if-eq v3, v6, :cond_d9

    .line 994
    invoke-static {p1, v2, v7, v5}, Lgp;->a(Lev;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1002
    :cond_d9
    shr-int/lit8 v1, v1, 0x2

    .line 1003
    invoke-virtual {v0, v1}, Lnf;->b(I)V

    goto/16 :goto_7

    .line 1006
    :cond_e0
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    .line 1007
    invoke-virtual {v0, v1}, Lnf;->c(I)V

    goto/16 :goto_7
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-super {p0}, Lgo;->close()V

    .line 223
    iget-object v0, p0, Lgp;->K:Lnb;

    invoke-virtual {v0}, Lnb;->b()V

    .line 224
    return-void
.end method

.method protected final z()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x22

    .line 535
    iget v0, p0, Lgp;->t:I

    .line 536
    iget v1, p0, Lgp;->u:I

    .line 538
    if-ge v0, v1, :cond_31

    .line 539
    invoke-static {}, Lng;->a()[I

    move-result-object v2

    .line 540
    array-length v3, v2

    .line 543
    :cond_f
    iget-object v4, p0, Lgp;->M:[C

    aget-char v4, v4, v0

    .line 544
    if-ge v4, v3, :cond_2d

    aget v5, v2, v4

    if-eqz v5, :cond_2d

    .line 545
    if-ne v4, v6, :cond_31

    .line 546
    iget-object v1, p0, Lgp;->E:Lnl;

    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    iget v4, p0, Lgp;->t:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lnl;->a([CII)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->t:I

    .line 563
    :goto_2c
    return-void

    .line 553
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    .line 554
    if-lt v0, v1, :cond_f

    .line 560
    :cond_31
    iget-object v1, p0, Lgp;->E:Lnl;

    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    iget v4, p0, Lgp;->t:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lnl;->b([CII)V

    .line 561
    iput v0, p0, Lgp;->t:I

    .line 562
    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0}, Lnl;->h()[C

    move-result-object v0

    iget-object v1, p0, Lgp;->E:Lnl;

    invoke-virtual {v1}, Lnl;->j()I

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_4f
    iget v2, p0, Lgp;->t:I

    iget v3, p0, Lgp;->u:I

    if-lt v2, v3, :cond_60

    invoke-virtual {p0}, Lgp;->y()Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lgp;->c(Ljava/lang/String;)V

    :cond_60
    iget-object v2, p0, Lgp;->M:[C

    iget v3, p0, Lgp;->t:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgp;->t:I

    aget-char v2, v2, v3

    if-gt v2, v7, :cond_72

    if-ne v2, v7, :cond_85

    invoke-direct {p0}, Lgp;->K()C

    move-result v2

    :cond_72
    :goto_72
    array-length v3, v1

    if-lt v0, v3, :cond_7f

    iget-object v0, p0, Lgp;->E:Lnl;

    invoke-virtual {v0}, Lnl;->k()[C

    move-result-object v0

    const/4 v1, 0x0

    move v8, v1

    move-object v1, v0

    move v0, v8

    :cond_7f
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    move v0, v3

    goto :goto_4f

    :cond_85
    if-gt v2, v6, :cond_72

    if-eq v2, v6, :cond_93

    const/16 v3, 0x20

    if-ge v2, v3, :cond_72

    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lgp;->c(ILjava/lang/String;)V

    goto :goto_72

    :cond_93
    iget-object v1, p0, Lgp;->E:Lnl;

    invoke-virtual {v1, v0}, Lnl;->a(I)V

    goto :goto_2c
.end method
