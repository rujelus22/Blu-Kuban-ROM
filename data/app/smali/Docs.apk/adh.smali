.class public final Ladh;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private a:I

.field private a:LacV;

.field private a:LacZ;

.field private a:Lada;

.field private a:Ladb;

.field private a:Ladc;

.field private a:Ladf;

.field private final a:Lado;

.field private a:Ladp;

.field private a:Laex;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ladg;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Ladc;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lado;Ladf;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x4e20

    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ladc;

    invoke-direct {v0}, Ladc;-><init>()V

    iput-object v0, p0, Ladh;->a:Ladc;

    .line 84
    new-instance v0, Ladc;

    invoke-direct {v0}, Ladc;-><init>()V

    iput-object v0, p0, Ladh;->b:Ladc;

    .line 91
    iput-boolean v1, p0, Ladh;->a:Z

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Ladh;->a:I

    .line 125
    const/16 v0, 0x4000

    iput v0, p0, Ladh;->b:I

    .line 128
    iput-boolean v1, p0, Ladh;->b:Z

    .line 143
    iput v2, p0, Ladh;->c:I

    .line 149
    iput v2, p0, Ladh;->d:I

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ladh;->a:Ljava/util/Map;

    .line 168
    iput-boolean v1, p0, Ladh;->d:Z

    .line 174
    iput-boolean v1, p0, Ladh;->e:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladh;->f:Z

    .line 187
    iput-object p1, p0, Ladh;->a:Lado;

    .line 188
    iput-object p2, p0, Ladh;->a:Ladf;

    .line 189
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1045
    if-nez p0, :cond_4

    .line 1046
    const/4 p0, 0x0

    .line 1049
    :cond_3
    :goto_3
    return-object p0

    .line 1048
    :cond_4
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1049
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private a(J)V
    .registers 4
    .parameter

    .prologue
    .line 1026
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1030
    :goto_3
    return-void

    .line 1027
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private a(Ladl;)V
    .registers 4
    .parameter

    .prologue
    .line 990
    invoke-virtual {p1}, Ladl;->a()Ladc;

    move-result-object v0

    invoke-virtual {v0}, Ladc;->b()Ljava/lang/String;

    move-result-object v0

    .line 991
    new-instance v1, LacZ;

    invoke-direct {v1, v0}, LacZ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ladh;->a(LacZ;)Ladh;

    .line 995
    invoke-virtual {p1}, Ladl;->a()I

    move-result v0

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_1d

    .line 996
    sget-object v0, Ladf;->b:Ladf;

    invoke-virtual {p0, v0}, Ladh;->a(Ladf;)Ladh;

    .line 998
    :cond_1d
    return-void
.end method

.method private a(Ladl;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1004
    invoke-virtual {p1}, Ladl;->a()I

    move-result v1

    .line 1005
    packed-switch v1, :pswitch_data_16

    .line 1013
    :cond_8
    :goto_8
    :pswitch_8
    return v0

    .line 1011
    :pswitch_9
    invoke-virtual {p1}, Ladl;->a()Ladc;

    move-result-object v1

    invoke-virtual {v1}, Ladc;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    .line 1005
    nop

    :pswitch_data_16
    .packed-switch 0x12d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 342
    iget v0, p0, Ladh;->b:I

    return v0
.end method

.method public a()Ladc;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Ladh;->a:Ladc;

    return-object v0
.end method

.method public a()Ladf;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Ladh;->a:Ladf;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ladg;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    invoke-static {p1}, Ladh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    iget-object v1, p0, Ladh;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    return-object v0
.end method

.method public a(LacZ;)Ladh;
    .registers 3
    .parameter

    .prologue
    .line 234
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LacZ;

    iput-object v0, p0, Ladh;->a:LacZ;

    .line 235
    return-object p0
.end method

.method public a(Lada;)Ladh;
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Ladh;->a:Lada;

    .line 254
    return-object p0
.end method

.method public a(Ladb;)Ladh;
    .registers 2
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Ladh;->a:Ladb;

    .line 536
    return-object p0
.end method

.method public a(Ladf;)Ladh;
    .registers 3
    .parameter

    .prologue
    .line 215
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladf;

    iput-object v0, p0, Ladh;->a:Ladf;

    .line 216
    return-object p0
.end method

.method public a(Z)Ladh;
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-boolean p1, p0, Ladh;->c:Z

    .line 292
    return-object p0
.end method

.method public a()Ladl;
    .registers 15

    .prologue
    .line 772
    .line 773
    iget v0, p0, Ladh;->a:I

    if-ltz v0, :cond_1b6

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 774
    iget v0, p0, Ladh;->a:I

    .line 775
    iget-object v1, p0, Ladh;->a:LacV;

    if-eqz v1, :cond_13

    .line 777
    iget-object v1, p0, Ladh;->a:LacV;

    invoke-interface {v1}, LacV;->a()V

    .line 779
    :cond_13
    const/4 v2, 0x0

    .line 782
    iget-object v1, p0, Ladh;->a:Ladf;

    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v1, p0, Ladh;->a:LacZ;

    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v0

    .line 787
    :goto_1f
    if-eqz v2, :cond_24

    .line 788
    invoke-virtual {v2}, Ladl;->a()V

    .line 791
    :cond_24
    const/4 v10, 0x0

    .line 792
    const/4 v9, 0x0

    .line 795
    iget-object v0, p0, Ladh;->a:Ladb;

    if-eqz v0, :cond_2f

    .line 796
    iget-object v0, p0, Ladh;->a:Ladb;

    invoke-interface {v0, p0}, Ladb;->b(Ladh;)V

    .line 799
    :cond_2f
    iget-object v0, p0, Ladh;->a:LacZ;

    invoke-virtual {v0}, LacZ;->a()Ljava/lang/String;

    move-result-object v1

    .line 801
    sget-object v0, Ladi;->a:[I

    iget-object v2, p0, Ladh;->a:Ladf;

    invoke-virtual {v2}, Ladf;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_296

    .line 806
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0, v1}, Lado;->b(Ljava/lang/String;)Ladr;

    move-result-object v0

    move-object v7, v0

    .line 825
    :goto_49
    sget-object v13, Lado;->a:Ljava/util/logging/Logger;

    .line 826
    iget-boolean v0, p0, Ladh;->b:Z

    if-eqz v0, :cond_1fc

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v13, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    const/4 v0, 0x1

    move v12, v0

    .line 827
    :goto_59
    const/4 v0, 0x0

    .line 829
    if-eqz v12, :cond_293

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    const-string v2, "-------------- REQUEST  --------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laey;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object v2, p0, Ladh;->a:Ladf;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, v0

    .line 835
    :goto_82
    iget-object v0, p0, Ladh;->a:Ladc;

    invoke-virtual {v0}, Ladc;->c()Ljava/lang/String;

    move-result-object v0

    .line 836
    if-nez v0, :cond_200

    .line 837
    iget-object v1, p0, Ladh;->a:Ladc;

    const-string v2, "Google-HTTP-Java-Client/1.11.0-beta-SNAPSHOT (gzip)"

    invoke-virtual {v1, v2}, Ladc;->a(Ljava/lang/String;)V

    .line 842
    :goto_91
    iget-object v1, p0, Ladh;->a:Ladc;

    invoke-static {v1, v8, v13, v7}, Ladc;->a(Ladc;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ladr;)V

    .line 844
    iget-object v1, p0, Ladh;->a:Ladc;

    invoke-virtual {v1, v0}, Ladc;->a(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Ladh;->a:Lada;

    .line 848
    invoke-virtual {p0}, Ladh;->b()Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Ladh;->a:Ladf;

    sget-object v2, Ladf;->e:Ladf;

    if-eq v0, v2, :cond_b5

    iget-object v0, p0, Ladh;->a:Ladf;

    sget-object v2, Ladf;->f:Ladf;

    if-eq v0, v2, :cond_b5

    iget-object v0, p0, Ladh;->a:Ladf;

    sget-object v2, Ladf;->d:Ladf;

    if-ne v0, v2, :cond_c8

    :cond_b5
    if-eqz v1, :cond_c1

    invoke-interface {v1}, Lada;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_c8

    .line 851
    :cond_c1
    const/4 v0, 0x0

    const-string v1, " "

    invoke-static {v0, v1}, LacW;->a(Ljava/lang/String;Ljava/lang/String;)LacW;

    move-result-object v1

    .line 853
    :cond_c8
    if-eqz v1, :cond_153

    .line 854
    invoke-interface {v1}, Lada;->a()Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-interface {v1}, Lada;->a()J

    move-result-wide v4

    .line 856
    invoke-interface {v1}, Lada;->b()Ljava/lang/String;

    move-result-object v2

    .line 858
    if-eqz v12, :cond_290

    .line 859
    new-instance v0, Ladq;

    iget v6, p0, Ladh;->b:I

    invoke-direct/range {v0 .. v6}, Ladq;-><init>(Lada;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 863
    :goto_df
    iget-boolean v1, p0, Ladh;->c:Z

    if-eqz v1, :cond_28d

    .line 864
    new-instance v1, LacY;

    invoke-direct {v1, v0, v2}, LacY;-><init>(Lada;Ljava/lang/String;)V

    .line 865
    invoke-interface {v1}, Lada;->a()Ljava/lang/String;

    move-result-object v3

    .line 866
    invoke-interface {v1}, Lada;->a()J

    move-result-wide v4

    .line 869
    :goto_f0
    if-eqz v12, :cond_150

    .line 870
    if-eqz v2, :cond_110

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laey;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :cond_110
    if-eqz v3, :cond_12e

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laey;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_12e
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_150

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laey;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_150
    invoke-virtual {v7, v1}, Ladr;->a(Lada;)V

    .line 884
    :cond_153
    if-eqz v12, :cond_15c

    .line 885
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 890
    :cond_15c
    if-lez v11, :cond_220

    if-eqz v1, :cond_166

    invoke-interface {v1}, Lada;->a()Z

    move-result v0

    if-eqz v0, :cond_220

    :cond_166
    const/4 v0, 0x1

    .line 893
    :goto_167
    iget v1, p0, Ladh;->c:I

    iget v2, p0, Ladh;->d:I

    invoke-virtual {v7, v1, v2}, Ladr;->a(II)V

    .line 895
    :try_start_16e
    invoke-virtual {v7}, Ladr;->a()Lads;
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_22c

    move-result-object v2

    .line 899
    :try_start_172
    new-instance v1, Ladl;

    invoke-direct {v1, p0, v2}, Ladl;-><init>(Ladh;Lads;)V
    :try_end_177
    .catchall {:try_start_172 .. :try_end_177} :catchall_223

    move-object v2, v1

    move-object v1, v9

    .line 919
    :goto_179
    if-eqz v2, :cond_265

    :try_start_17b
    invoke-virtual {v2}, Ladl;->a()Z

    move-result v3

    if-nez v3, :cond_265

    .line 920
    const/4 v5, 0x0

    .line 921
    const/4 v4, 0x0

    .line 922
    const/4 v3, 0x0

    .line 923
    iget-object v6, p0, Ladh;->a:Ladp;

    if-eqz v6, :cond_18e

    .line 927
    iget-object v5, p0, Ladh;->a:Ladp;

    invoke-interface {v5, p0, v2, v0}, Ladp;->a(Ladh;Ladl;Z)Z

    move-result v5

    .line 930
    :cond_18e
    if-nez v5, :cond_1a0

    .line 931
    invoke-virtual {p0}, Ladh;->c()Z

    move-result v6

    if-eqz v6, :cond_23e

    invoke-direct {p0, v2}, Ladh;->a(Ladl;)Z

    move-result v6

    if-eqz v6, :cond_23e

    .line 933
    invoke-direct {p0, v2}, Ladh;->a(Ladl;)V

    .line 934
    const/4 v4, 0x1

    .line 950
    :cond_1a0
    :goto_1a0
    if-nez v5, :cond_1a6

    if-nez v4, :cond_1a6

    if-eqz v3, :cond_262

    :cond_1a6
    const/4 v3, 0x1

    :goto_1a7
    and-int/2addr v0, v3

    .line 952
    if-eqz v0, :cond_1ad

    .line 953
    invoke-virtual {v2}, Ladl;->a()V
    :try_end_1ad
    .catchall {:try_start_17b .. :try_end_1ad} :catchall_26d

    .line 961
    :cond_1ad
    :goto_1ad
    add-int/lit8 v3, v11, -0x1

    .line 965
    if-eqz v2, :cond_1b1

    .line 969
    :cond_1b1
    if-nez v0, :cond_28a

    .line 971
    if-nez v2, :cond_274

    .line 973
    throw v1

    .line 773
    :cond_1b6
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 803
    :pswitch_1b9
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0, v1}, Lado;->a(Ljava/lang/String;)Ladr;

    move-result-object v0

    move-object v7, v0

    .line 804
    goto/16 :goto_49

    .line 809
    :pswitch_1c2
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0}, Lado;->a()Z

    move-result v0

    const-string v2, "HTTP transport doesn\'t support HEAD"

    invoke-static {v0, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 811
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0, v1}, Lado;->c(Ljava/lang/String;)Ladr;

    move-result-object v0

    move-object v7, v0

    .line 812
    goto/16 :goto_49

    .line 814
    :pswitch_1d6
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0}, Lado;->b()Z

    move-result v0

    const-string v2, "HTTP transport doesn\'t support PATCH"

    invoke-static {v0, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 816
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0, v1}, Lado;->d(Ljava/lang/String;)Ladr;

    move-result-object v0

    move-object v7, v0

    .line 817
    goto/16 :goto_49

    .line 819
    :pswitch_1ea
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0, v1}, Lado;->e(Ljava/lang/String;)Ladr;

    move-result-object v0

    move-object v7, v0

    .line 820
    goto/16 :goto_49

    .line 822
    :pswitch_1f3
    iget-object v0, p0, Ladh;->a:Lado;

    invoke-virtual {v0, v1}, Lado;->f(Ljava/lang/String;)Ladr;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_49

    .line 826
    :cond_1fc
    const/4 v0, 0x0

    move v12, v0

    goto/16 :goto_59

    .line 839
    :cond_200
    iget-object v1, p0, Ladh;->a:Ladc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Google-HTTP-Java-Client/1.11.0-beta-SNAPSHOT (gzip)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ladc;->a(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 890
    :cond_220
    const/4 v0, 0x0

    goto/16 :goto_167

    .line 902
    :catchall_223
    move-exception v1

    .line 903
    :try_start_224
    invoke-virtual {v2}, Lads;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_22c} :catch_22c

    .line 906
    :catch_22c
    move-exception v1

    move-object v2, v10

    .line 907
    iget-boolean v3, p0, Ladh;->f:Z

    if-nez v3, :cond_233

    .line 908
    throw v1

    .line 912
    :cond_233
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_179

    .line 935
    :cond_23e
    if-eqz v0, :cond_1a0

    :try_start_240
    iget-object v6, p0, Ladh;->a:LacV;

    if-eqz v6, :cond_1a0

    iget-object v6, p0, Ladh;->a:LacV;

    invoke-virtual {v2}, Ladl;->a()I

    move-result v7

    invoke-interface {v6, v7}, LacV;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 940
    iget-object v6, p0, Ladh;->a:LacV;

    invoke-interface {v6}, LacV;->a()J

    move-result-wide v6

    .line 941
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1a0

    .line 942
    invoke-direct {p0, v6, v7}, Ladh;->a(J)V
    :try_end_25f
    .catchall {:try_start_240 .. :try_end_25f} :catchall_26d

    .line 943
    const/4 v3, 0x1

    goto/16 :goto_1a0

    .line 950
    :cond_262
    const/4 v3, 0x0

    goto/16 :goto_1a7

    .line 957
    :cond_265
    if-nez v2, :cond_26b

    const/4 v3, 0x1

    :goto_268
    and-int/2addr v0, v3

    goto/16 :goto_1ad

    :cond_26b
    const/4 v3, 0x0

    goto :goto_268

    .line 965
    :catchall_26d
    move-exception v0

    if-eqz v2, :cond_273

    .line 966
    invoke-virtual {v2}, Ladl;->b()V

    :cond_273
    throw v0

    .line 976
    :cond_274
    iget-boolean v0, p0, Ladh;->e:Z

    if-eqz v0, :cond_289

    invoke-virtual {v2}, Ladl;->a()Z

    move-result v0

    if-nez v0, :cond_289

    .line 978
    :try_start_27e
    new-instance v0, Ladm;

    invoke-direct {v0, v2}, Ladm;-><init>(Ladl;)V

    throw v0
    :try_end_284
    .catchall {:try_start_27e .. :try_end_284} :catchall_284

    .line 980
    :catchall_284
    move-exception v0

    invoke-virtual {v2}, Ladl;->b()V

    throw v0

    .line 983
    :cond_289
    return-object v2

    :cond_28a
    move v11, v3

    goto/16 :goto_1f

    :cond_28d
    move-object v1, v0

    goto/16 :goto_f0

    :cond_290
    move-object v0, v1

    goto/16 :goto_df

    :cond_293
    move-object v8, v0

    goto/16 :goto_82

    .line 801
    :pswitch_data_296
    .packed-switch 0x1
        :pswitch_1b9
        :pswitch_1c2
        :pswitch_1d6
        :pswitch_1ea
        :pswitch_1f3
    .end packed-switch
.end method

.method public a()Lado;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Ladh;->a:Lado;

    return-object v0
.end method

.method public final a()Laex;
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, Ladh;->a:Laex;

    return-object v0
.end method

.method public a(Ladg;)V
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    invoke-interface {p1}, Ladg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ladh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Ladh;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void
.end method

.method public a(Laex;)V
    .registers 2
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Ladh;->a:Laex;

    .line 642
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 389
    iget-boolean v0, p0, Ladh;->b:Z

    return v0
.end method

.method public b()Ladc;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Ladh;->b:Ladc;

    return-object v0
.end method

.method public b(Z)Ladh;
    .registers 2
    .parameter

    .prologue
    .line 567
    iput-boolean p1, p0, Ladh;->a:Z

    .line 568
    return-object p0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Ladh;->a:Z

    return v0
.end method

.method public c(Z)Ladh;
    .registers 2
    .parameter

    .prologue
    .line 712
    iput-boolean p1, p0, Ladh;->e:Z

    .line 713
    return-object p0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 674
    iget-boolean v0, p0, Ladh;->d:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 698
    iget-boolean v0, p0, Ladh;->e:Z

    return v0
.end method
