.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field protected jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

.field public lookingAhead:Z

.field public token:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 711
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    .line 712
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    .line 713
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 9
    .parameter "stream"

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 704
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 707
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 720
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 721
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 722
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 816
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 862
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 864
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 865
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 752
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 753
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 754
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 755
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 756
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 757
    const/4 v0, 0x0

    .local v0, i:I
    :goto_51
    if-ge v0, v6, :cond_5a

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 758
    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_6c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 759
    :cond_6c
    return-void
.end method

.method private final jj_2_1(I)Z
    .registers 6
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 614
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 615
    :try_start_a
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_a .. :try_end_d} :catch_16

    move-result v3

    if-nez v3, :cond_14

    .line 617
    :goto_10
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_13
    return v1

    :cond_14
    move v1, v2

    .line 615
    goto :goto_10

    .line 616
    :catch_16
    move-exception v0

    .line 617
    .local v0, ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    goto :goto_13

    .end local v0           #ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_1b
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_2_2(I)Z
    .registers 5
    .parameter "xla"

    .prologue
    const/4 v2, 0x1

    .line 621
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 622
    :try_start_9
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1c
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_16

    move-result v1

    if-nez v1, :cond_14

    move v1, v2

    .line 624
    :goto_10
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_13
    return v1

    .line 622
    :cond_14
    const/4 v1, 0x0

    goto :goto_10

    .line 623
    :catch_16
    move-exception v0

    .line 624
    .local v0, ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    move v1, v2

    goto :goto_13

    .end local v0           #ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_1c
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_3R_10()Z
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 672
    .local v0, xsp:Lorg/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 673
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 674
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 676
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private final jj_3R_11()Z
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 630
    .local v0, xsp:Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 631
    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 632
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 633
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 634
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    .line 636
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private final jj_3R_12()Z
    .registers 3

    .prologue
    .line 660
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 666
    :goto_9
    return v1

    .line 663
    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 664
    .local v0, xsp:Lorg/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 666
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private final jj_3R_13()Z
    .registers 3

    .prologue
    .line 641
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 642
    .local v0, xsp:Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 643
    :cond_c
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    .line 644
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private final jj_3R_8()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 648
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 651
    :cond_7
    :goto_7
    return v0

    .line 649
    :cond_8
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 650
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_7

    .line 651
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_9()Z
    .registers 3

    .prologue
    .line 686
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 687
    .local v0, xsp:Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 688
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 689
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    .line 695
    :goto_15
    return v1

    .line 692
    :cond_16
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 693
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_16

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 695
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private final jj_3_1()Z
    .registers 2

    .prologue
    .line 655
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 656
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_2()Z
    .registers 2

    .prologue
    .line 680
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 681
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private jj_add_error_token(II)V
    .registers 10
    .parameter "kind"
    .parameter "pos"

    .prologue
    .line 869
    const/16 v4, 0x64

    if-lt p2, v4, :cond_5

    .line 894
    :cond_4
    :goto_4
    return-void

    .line 870
    :cond_5
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_16

    .line 871
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v4, v5

    goto :goto_4

    .line 872
    :cond_16
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v4, :cond_4

    .line 873
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 874
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v2, v4, :cond_30

    .line 875
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 877
    :cond_30
    const/4 v1, 0x0

    .line 878
    .local v1, exists:Z
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<[I>;"
    :cond_37
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 879
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 880
    .local v3, oldentry:[I
    array-length v4, v3

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v4, v5, :cond_37

    .line 881
    const/4 v1, 0x1

    .line 882
    const/4 v2, 0x0

    :goto_4b
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_59

    .line 883
    aget v4, v3, v2

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_6f

    .line 884
    const/4 v1, 0x0

    .line 888
    :cond_59
    if-eqz v1, :cond_37

    .line 891
    .end local v3           #oldentry:[I
    :cond_5b
    if-nez v1, :cond_64

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 892
    :cond_64
    if-eqz p2, :cond_4

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, p2, -0x1

    aput p1, v4, v5

    goto :goto_4

    .line 882
    .restart local v3       #oldentry:[I
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 7
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .local v2, oldToken:Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 795
    :goto_c
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 796
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, p1, :cond_53

    .line 797
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 798
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_50

    .line 799
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 800
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_50

    .line 801
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    .line 802
    .local v0, c:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_32
    if-eqz v0, :cond_4d

    .line 803
    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_3d

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 804
    :cond_3d
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_32

    .line 794
    .end local v0           #c:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1           #i:I
    :cond_40
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_c

    .line 800
    .restart local v0       #c:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v1       #i:I
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 808
    .end local v0           #c:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1           #i:I
    :cond_50
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v3

    .line 810
    :cond_53
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 811
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 812
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_0()V
    .registers 1

    .prologue
    .line 715
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    .line 716
    return-void

    .line 715
    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x50t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x0t 0x1t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x80t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x4t 0x0t
    .end array-data
.end method

.method private static jj_la1_1()V
    .registers 1

    .prologue
    .line 718
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    .line 719
    return-void

    .line 718
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .registers 3

    .prologue
    .line 856
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_17

    .line 857
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 859
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_16
.end method

.method private final jj_rescan_token()V
    .registers 5

    .prologue
    .line 942
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 943
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2f

    .line 945
    :try_start_7
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v1, v2, v0

    .line 947
    .local v1, p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_b
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_1e

    .line 948
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 949
    packed-switch v0, :pswitch_data_34

    .line 954
    :cond_1e
    :goto_1e
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 955
    if-nez v1, :cond_b

    .line 943
    .end local v1           #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 950
    .restart local v1       #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_25
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_1e

    .line 956
    .end local v1           #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :catch_29
    move-exception v2

    goto :goto_22

    .line 951
    .restart local v1       #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_2b
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_2e
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_7 .. :try_end_2e} :catch_29

    goto :goto_1e

    .line 958
    .end local v1           #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_2f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 959
    return-void

    .line 949
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method

.method private final jj_save(II)V
    .registers 7
    .parameter "index"
    .parameter "xla"

    .prologue
    .line 962
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    .line 963
    .local v0, p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_4
    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_16

    .line 964
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v2, :cond_25

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .end local v0           #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .local v1, p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    move-object v0, v1

    .line 967
    .end local v1           #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v0       #p:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_16
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput p2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    .line 968
    return-void

    .line 965
    :cond_25
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_4
.end method

.method private final jj_scan_token(I)Z
    .registers 6
    .parameter "kind"

    .prologue
    .line 818
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_3b

    .line 819
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    .line 820
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v2, :cond_32

    .line 821
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 828
    :goto_20
    iget-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_47

    .line 829
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 830
    .local v1, tok:Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_27
    if-eqz v1, :cond_42

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_42

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_27

    .line 823
    .end local v0           #i:I
    .end local v1           #tok:Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_32
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_20

    .line 826
    :cond_3b
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_20

    .line 831
    .restart local v0       #i:I
    .restart local v1       #tok:Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_42
    if-eqz v1, :cond_47

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 833
    .end local v0           #i:I
    .end local v1           #tok:Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_47
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4f

    const/4 v2, 0x1

    .line 835
    :goto_4e
    return v2

    .line 834
    :cond_4f
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v2, :cond_5c

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5c

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    .line 835
    :cond_5c
    const/4 v2, 0x0

    goto :goto_4e
.end method


# virtual methods
.method public final addr_spec()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 471
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    .line 472
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;
    const/4 v0, 0x1

    .line 473
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 474
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 476
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V

    .line 477
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 478
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_37
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1c} :catch_27

    .line 494
    if-eqz v0, :cond_26

    .line 495
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 496
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 499
    :cond_26
    return-void

    .line 479
    :catch_27
    move-exception v1

    .line 480
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_43

    .line 481
    :try_start_2a
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 482
    const/4 v0, 0x0

    .line 486
    :goto_30
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_49

    .line 487
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_37

    .line 494
    :catchall_37
    move-exception v3

    if-eqz v0, :cond_42

    .line 495
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 496
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_42
    throw v3

    .line 484
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_43
    :try_start_43
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_30

    .line 489
    :cond_49
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_50

    .line 490
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 492
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_50
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_37
.end method

.method public final address()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 136
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    .line 137
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    const/4 v0, 0x1

    .line 138
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 139
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 141
    const v3, 0x7fffffff

    :try_start_14
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 142
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_54
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_44

    .line 185
    :goto_1d
    if-eqz v0, :cond_27

    .line 186
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 187
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 190
    :cond_27
    return-void

    .line 144
    :cond_28
    :try_start_28
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_60

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_30
    sparse-switch v3, :sswitch_data_a2

    .line 165
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 166
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 167
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_54
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_44} :catch_44

    .line 170
    :catch_44
    move-exception v1

    .line 171
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_91

    .line 172
    :try_start_47
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 173
    const/4 v0, 0x0

    .line 177
    :goto_4d
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_97

    .line 178
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_54

    .line 185
    :catchall_54
    move-exception v3

    if-eqz v0, :cond_5f

    .line 186
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 187
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5f
    throw v3

    .line 144
    :cond_60
    :try_start_60
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_30

    .line 146
    :sswitch_63
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_1d

    .line 150
    :sswitch_67
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 151
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_86

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_72
    packed-switch v3, :pswitch_data_b0

    .line 159
    :pswitch_75
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 160
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 161
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 151
    :cond_86
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_72

    .line 153
    :pswitch_89
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_1d

    .line 156
    :pswitch_8d
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_90
    .catchall {:try_start_60 .. :try_end_90} :catchall_54
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_90} :catch_44

    goto :goto_1d

    .line 175
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_91
    :try_start_91
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4d

    .line 180
    :cond_97
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_9e

    .line 181
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 183
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_9e
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_54

    .line 144
    nop

    :sswitch_data_a2
    .sparse-switch
        0x6 -> :sswitch_63
        0xe -> :sswitch_67
        0x1f -> :sswitch_67
    .end sparse-switch

    .line 151
    :pswitch_data_b0
    .packed-switch 0x4
        :pswitch_89
        :pswitch_75
        :pswitch_8d
    .end packed-switch
.end method

.method public final address_list()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 75
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v2, v6}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    .line 76
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    const/4 v0, 0x1

    .line 77
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 78
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 80
    :try_start_10
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_3f

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_18
    sparse-switch v3, :sswitch_data_94

    .line 87
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 92
    :goto_22
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_62

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2a
    packed-switch v3, :pswitch_data_a2

    .line 97
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_56
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_34} :catch_46

    .line 127
    if-eqz v0, :cond_3e

    .line 128
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 129
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 132
    :cond_3e
    return-void

    .line 80
    :cond_3f
    :try_start_3f
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_18

    .line 84
    :sswitch_42
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_56
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_22

    .line 112
    :catch_46
    move-exception v1

    .line 113
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_83

    .line 114
    :try_start_49
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_4f
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_89

    .line 120
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_56

    .line 127
    :catchall_56
    move-exception v3

    if-eqz v0, :cond_61

    .line 128
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 129
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_61
    throw v3

    .line 92
    :cond_62
    :try_start_62
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2a

    .line 100
    :pswitch_65
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 101
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_7c

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_71
    sparse-switch v3, :sswitch_data_a8

    .line 108
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x3

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_22

    .line 101
    :cond_7c
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_71

    .line 105
    :sswitch_7f
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_82
    .catchall {:try_start_62 .. :try_end_82} :catchall_56
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_82} :catch_46

    goto :goto_22

    .line 117
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_83
    :try_start_83
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4f

    .line 122
    :cond_89
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_90

    .line 123
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 125
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_90
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_56

    .line 80
    nop

    :sswitch_data_94
    .sparse-switch
        0x6 -> :sswitch_42
        0xe -> :sswitch_42
        0x1f -> :sswitch_42
    .end sparse-switch

    .line 92
    :pswitch_data_a2
    .packed-switch 0x3
        :pswitch_65
    .end packed-switch

    .line 101
    :sswitch_data_a8
    .sparse-switch
        0x6 -> :sswitch_7f
        0xe -> :sswitch_7f
        0x1f -> :sswitch_7f
    .end sparse-switch
.end method

.method public final angle_addr()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    .line 334
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    .line 335
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;
    const/4 v0, 0x1

    .line 336
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 337
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 339
    const/4 v3, 0x6

    :try_start_11
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 340
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3a

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1d
    packed-switch v3, :pswitch_data_6e

    .line 345
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 348
    :goto_28
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    .line 349
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_51
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2f} :catch_41

    .line 365
    if-eqz v0, :cond_39

    .line 366
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 367
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 370
    :cond_39
    return-void

    .line 340
    :cond_3a
    :try_start_3a
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1d

    .line 342
    :pswitch_3d
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->route()V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_51
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_28

    .line 350
    :catch_41
    move-exception v1

    .line 351
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_5d

    .line 352
    :try_start_44
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 353
    const/4 v0, 0x0

    .line 357
    :goto_4a
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_63

    .line 358
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_51

    .line 365
    :catchall_51
    move-exception v3

    if-eqz v0, :cond_5c

    .line 366
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 367
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5c
    throw v3

    .line 355
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_5d
    :try_start_5d
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4a

    .line 360
    :cond_63
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6a

    .line 361
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 363
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_6a
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_51

    .line 340
    nop

    :pswitch_data_6e
    .packed-switch 0x8
        :pswitch_3d
    .end packed-switch
.end method

.method public final domain()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 565
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    .line 566
    .local v1, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTdomain;
    const/4 v0, 0x1

    .line 567
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 568
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 570
    :try_start_12
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1a
    sparse-switch v3, :sswitch_data_aa

    .line 601
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x15

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 602
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 603
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2f

    .line 606
    :catchall_2f
    move-exception v3

    if-eqz v0, :cond_3a

    .line 607
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 608
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3a
    throw v3

    .line 570
    :cond_3b
    :try_start_3b
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1a

    .line 572
    :sswitch_3e
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 575
    .local v2, t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_44
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_62

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4c
    sparse-switch v3, :sswitch_data_b4

    .line 581
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x13

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_2f

    .line 606
    .end local v2           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_57
    if-eqz v0, :cond_61

    .line 607
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 608
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 611
    :cond_61
    return-void

    .line 575
    .restart local v2       #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_62
    :try_start_62
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4c

    .line 584
    :sswitch_65
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_92

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_6d
    packed-switch v3, :pswitch_data_be

    .line 589
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x14

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 592
    :goto_78
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_9c

    .line 593
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 584
    :cond_92
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_6d

    .line 586
    :pswitch_95
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 587
    goto :goto_78

    .line 594
    :cond_9c
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_44

    .line 598
    .end local v2           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_a3
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_a8
    .catchall {:try_start_62 .. :try_end_a8} :catchall_2f

    goto :goto_57

    .line 570
    nop

    :sswitch_data_aa
    .sparse-switch
        0xe -> :sswitch_3e
        0x12 -> :sswitch_a3
    .end sparse-switch

    .line 575
    :sswitch_data_b4
    .sparse-switch
        0x9 -> :sswitch_65
        0xe -> :sswitch_65
    .end sparse-switch

    .line 584
    :pswitch_data_be
    .packed-switch 0x9
        :pswitch_95
    .end packed-switch
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .registers 10

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 897
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 898
    new-array v3, v8, [Z

    .line 899
    .local v3, la1tokens:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v8, :cond_13

    .line 900
    aput-boolean v7, v3, v1

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 902
    :cond_13
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_1e

    .line 903
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 904
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 906
    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    const/16 v4, 0x16

    if-ge v1, v4, :cond_4e

    .line 907
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v4, v5, :cond_4b

    .line 908
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2c
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4b

    .line 909
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3b

    .line 910
    aput-boolean v6, v3, v2

    .line 912
    :cond_3b
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_48

    .line 913
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 908
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 906
    .end local v2           #j:I
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 918
    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v8, :cond_67

    .line 919
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_64

    .line 920
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 921
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v1, v4, v7

    .line 922
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 918
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 925
    :cond_67
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    .line 926
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    .line 927
    invoke-direct {p0, v7, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 928
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 929
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_78
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8d

    .line 930
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 932
    :cond_8d
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 6
    .parameter "index"

    .prologue
    .line 847
    iget-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v3, :cond_14

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 848
    .local v1, t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_6
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v2, t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_8
    if-ge v0, p1, :cond_20

    .line 849
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_17

    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 848
    .end local v2           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1       #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_10
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2       #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_8

    .line 847
    .end local v0           #i:I
    .end local v2           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_14
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_6

    .line 850
    .restart local v0       #i:I
    .restart local v2       #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_17
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .end local v2           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1       #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_10

    .line 852
    .end local v1           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2       #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_20
    return-object v2
.end method

.method public final group_body()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 271
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    .line 272
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;
    const/4 v0, 0x1

    .line 273
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 274
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 276
    const/4 v3, 0x4

    :try_start_12
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 277
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_49

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1d
    sparse-switch v3, :sswitch_data_9e

    .line 284
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 289
    :goto_27
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_6c

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2f
    packed-switch v3, :pswitch_data_ac

    .line 294
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 309
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_3e} :catch_50

    .line 325
    if-eqz v0, :cond_48

    .line 326
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 327
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 330
    :cond_48
    return-void

    .line 277
    :cond_49
    :try_start_49
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1d

    .line 281
    :sswitch_4c
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4f} :catch_50

    goto :goto_27

    .line 310
    :catch_50
    move-exception v1

    .line 311
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_8e

    .line 312
    :try_start_53
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_59
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_94

    .line 318
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_60

    .line 325
    :catchall_60
    move-exception v3

    if-eqz v0, :cond_6b

    .line 326
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 327
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_6b
    throw v3

    .line 289
    :cond_6c
    :try_start_6c
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2f

    .line 297
    :pswitch_6f
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 298
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_87

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_7b
    sparse-switch v3, :sswitch_data_b2

    .line 305
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_27

    .line 298
    :cond_87
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_7b

    .line 302
    :sswitch_8a
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_8d
    .catchall {:try_start_6c .. :try_end_8d} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_8d} :catch_50

    goto :goto_27

    .line 315
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_8e
    :try_start_8e
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_59

    .line 320
    :cond_94
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_9b

    .line 321
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 323
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_9b
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_60

    .line 277
    :sswitch_data_9e
    .sparse-switch
        0x6 -> :sswitch_4c
        0xe -> :sswitch_4c
        0x1f -> :sswitch_4c
    .end sparse-switch

    .line 289
    :pswitch_data_ac
    .packed-switch 0x3
        :pswitch_6f
    .end packed-switch

    .line 298
    :sswitch_data_b2
    .sparse-switch
        0x6 -> :sswitch_8a
        0xe -> :sswitch_8a
        0x1f -> :sswitch_8a
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 3
    .parameter "n"

    .prologue
    .line 52
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 53
    return-void
.end method

.method jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 3
    .parameter "n"

    .prologue
    .line 48
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 49
    return-void
.end method

.method public final local_part()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x1f

    const/4 v6, -0x1

    .line 503
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    .line 504
    .local v1, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;
    const/4 v0, 0x1

    .line 505
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 506
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 508
    :try_start_14
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3d

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1c
    sparse-switch v3, :sswitch_data_da

    .line 516
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 517
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 518
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_31

    .line 556
    :catchall_31
    move-exception v3

    if-eqz v0, :cond_3c

    .line 557
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v8}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 558
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3c
    throw v3

    .line 508
    :cond_3d
    :try_start_3d
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1c

    .line 510
    :sswitch_40
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 522
    .local v2, t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_46
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_6b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4e
    sparse-switch v3, :sswitch_data_e4

    .line 529
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_31

    .line 556
    if-eqz v0, :cond_63

    .line 557
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v8}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 558
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 561
    :cond_63
    return-void

    .line 513
    .end local v2           #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_64
    const/16 v3, 0x1f

    :try_start_66
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 514
    .restart local v2       #t:Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_46

    .line 522
    :cond_6b
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4e

    .line 532
    :sswitch_6e
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_9f

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_76
    packed-switch v3, :pswitch_data_f2

    .line 537
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x11

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 540
    :goto_81
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_97

    iget v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, v7, :cond_a9

    .line 541
    :cond_97
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 532
    :cond_9f
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_76

    .line 534
    :pswitch_a2
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 535
    goto :goto_81

    .line 542
    :cond_a9
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_c6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_b1
    sparse-switch v3, :sswitch_data_f8

    .line 550
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 551
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 552
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 542
    :cond_c6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_b1

    .line 544
    :sswitch_c9
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 545
    goto/16 :goto_46

    .line 547
    :sswitch_d1
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_d6
    .catchall {:try_start_66 .. :try_end_d6} :catchall_31

    move-result-object v2

    .line 548
    goto/16 :goto_46

    .line 508
    nop

    :sswitch_data_da
    .sparse-switch
        0xe -> :sswitch_40
        0x1f -> :sswitch_64
    .end sparse-switch

    .line 522
    :sswitch_data_e4
    .sparse-switch
        0x9 -> :sswitch_6e
        0xe -> :sswitch_6e
        0x1f -> :sswitch_6e
    .end sparse-switch

    .line 532
    :pswitch_data_f2
    .packed-switch 0x9
        :pswitch_a2
    .end packed-switch

    .line 542
    :sswitch_data_f8
    .sparse-switch
        0xe -> :sswitch_c9
        0x1f -> :sswitch_d1
    .end sparse-switch
.end method

.method public final mailbox()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 194
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    .line 195
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    const/4 v0, 0x1

    .line 196
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 197
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 199
    const v3, 0x7fffffff

    :try_start_14
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 200
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_54
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_44

    .line 231
    :goto_1d
    if-eqz v0, :cond_27

    .line 232
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 233
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 236
    :cond_27
    return-void

    .line 202
    :cond_28
    :try_start_28
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_60

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_30
    sparse-switch v3, :sswitch_data_7c

    .line 211
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 212
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 213
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_54
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_44} :catch_44

    .line 216
    :catch_44
    move-exception v1

    .line 217
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_6b

    .line 218
    :try_start_47
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 219
    const/4 v0, 0x0

    .line 223
    :goto_4d
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_71

    .line 224
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_54

    .line 231
    :catchall_54
    move-exception v3

    if-eqz v0, :cond_5f

    .line 232
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 233
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5f
    throw v3

    .line 202
    :cond_60
    :try_start_60
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_30

    .line 204
    :sswitch_63
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_1d

    .line 208
    :sswitch_67
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_54
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_6a} :catch_44

    goto :goto_1d

    .line 221
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_6b
    :try_start_6b
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_4d

    .line 226
    :cond_71
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_78

    .line 227
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 229
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_78
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_7b
    .catchall {:try_start_6b .. :try_end_7b} :catchall_54

    .line 202
    nop

    :sswitch_data_7c
    .sparse-switch
        0x6 -> :sswitch_63
        0xe -> :sswitch_67
        0x1f -> :sswitch_67
    .end sparse-switch
.end method

.method public final name_addr()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 240
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    .line 241
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;
    const/4 v0, 0x1

    .line 242
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 243
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 245
    :try_start_10
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 246
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_31
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_16} :catch_21

    .line 262
    if-eqz v0, :cond_20

    .line 263
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 264
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 267
    :cond_20
    return-void

    .line 247
    :catch_21
    move-exception v1

    .line 248
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_3d

    .line 249
    :try_start_24
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 250
    const/4 v0, 0x0

    .line 254
    :goto_2a
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_43

    .line 255
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_31

    .line 262
    :catchall_31
    move-exception v3

    if-eqz v0, :cond_3c

    .line 263
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 264
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3c
    throw v3

    .line 252
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2a

    .line 257
    :cond_43
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4a

    .line 258
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 260
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_4a
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_31
.end method

.method public parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAll()V

    .line 40
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    :try_end_b
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 41
    :catch_c
    move-exception v0

    .line 42
    .local v0, tme:Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 71
    return-void
.end method

.method public final phrase()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 432
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    .line 433
    .local v1, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTphrase;
    const/4 v0, 0x1

    .line 434
    .local v0, jjtc000:Z
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 435
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 439
    :sswitch_12
    :try_start_12
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_3b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_1a
    sparse-switch v2, :sswitch_data_6a

    .line 447
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 448
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 449
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2f

    .line 462
    :catchall_2f
    move-exception v2

    if-eqz v0, :cond_3a

    .line 463
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 464
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3a
    throw v2

    .line 439
    :cond_3b
    :try_start_3b
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1a

    .line 441
    :sswitch_3e
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 451
    :goto_43
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_67

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_4b
    sparse-switch v2, :sswitch_data_74

    .line 457
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xe

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_2f

    .line 462
    if-eqz v0, :cond_60

    .line 463
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 464
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 467
    :cond_60
    return-void

    .line 444
    :sswitch_61
    const/16 v2, 0x1f

    :try_start_63
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_43

    .line 451
    :cond_67
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_2f

    goto :goto_4b

    .line 439
    :sswitch_data_6a
    .sparse-switch
        0xe -> :sswitch_3e
        0x1f -> :sswitch_61
    .end sparse-switch

    .line 451
    :sswitch_data_74
    .sparse-switch
        0xe -> :sswitch_12
        0x1f -> :sswitch_12
    .end sparse-switch
.end method

.method public final route()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 374
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V

    .line 375
    .local v2, jjtn000:Lorg/apache/james/mime4j/field/address/parser/ASTroute;
    const/4 v0, 0x1

    .line 376
    .local v0, jjtc000:Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 377
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 379
    const/16 v3, 0x8

    :try_start_13
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 380
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    .line 383
    :goto_19
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_21
    sparse-switch v3, :sswitch_data_8e

    .line 389
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 407
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_6e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_30} :catch_5e

    .line 423
    if-eqz v0, :cond_3a

    .line 424
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 425
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 428
    :cond_3a
    return-void

    .line 383
    :cond_3b
    :try_start_3b
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_21

    .line 402
    :pswitch_3e
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 394
    :sswitch_42
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_7a

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4a
    packed-switch v3, :pswitch_data_98

    .line 399
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 404
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 405
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_5d
    .catchall {:try_start_3b .. :try_end_5d} :catchall_6e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_5d} :catch_5e

    goto :goto_19

    .line 408
    :catch_5e
    move-exception v1

    .line 409
    .local v1, jjte000:Ljava/lang/Throwable;
    if-eqz v0, :cond_7d

    .line 410
    :try_start_61
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 411
    const/4 v0, 0x0

    .line 415
    :goto_67
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_83

    .line 416
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_6e

    .line 423
    :catchall_6e
    move-exception v3

    if-eqz v0, :cond_79

    .line 424
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 425
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_79
    throw v3

    .line 394
    :cond_7a
    :try_start_7a
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_6e
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7c} :catch_5e

    goto :goto_4a

    .line 413
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_7d
    :try_start_7d
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_67

    .line 418
    :cond_83
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_8a

    .line 419
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1

    .line 421
    .restart local v1       #jjte000:Ljava/lang/Throwable;
    :cond_8a
    check-cast v1, Ljava/lang/Error;

    .end local v1           #jjte000:Ljava/lang/Throwable;
    throw v1
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_6e

    .line 383
    nop

    :sswitch_data_8e
    .sparse-switch
        0x3 -> :sswitch_42
        0x8 -> :sswitch_42
    .end sparse-switch

    .line 394
    :pswitch_data_98
    .packed-switch 0x3
        :pswitch_3e
    .end packed-switch
.end method
