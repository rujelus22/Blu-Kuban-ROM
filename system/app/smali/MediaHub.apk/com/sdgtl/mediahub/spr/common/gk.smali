.class public final Lcom/sdgtl/mediahub/spr/common/gk;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput v3, Lcom/sdgtl/mediahub/spr/common/gk;->a:I

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "001001"

    aput-object v1, v0, v3

    const-string v1, "001002"

    aput-object v1, v0, v4

    const-string v1, "001003"

    aput-object v1, v0, v5

    const-string v1, "001004"

    aput-object v1, v0, v6

    const-string v1, "001005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "001006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "001007"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "014"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "021"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "024"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "031"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "032"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "033"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "034"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "035"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "036"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "037"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "039"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "040"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "042"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "043"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gk;->b:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "C7"

    aput-object v1, v0, v3

    const-string v1, "T13+"

    aput-object v1, v0, v4

    const-string v1, "YA17+"

    aput-object v1, v0, v5

    const-string v1, "M18+"

    aput-object v1, v0, v6

    const-string v1, "G"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "NC-17"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PG-13"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TV-14"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TV-G"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TV-MA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TV-PG"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TV-Y"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TV-Y7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/gk;->c:[Ljava/lang/String;

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const-string v0, "/download/.SamsungMediaHub/"

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "/.samsungmediahub/"

    goto :goto_9
.end method

.method private static B(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_11

    return-object v0

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static C(Landroid/content/Context;)[B
    .registers 5

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_16

    invoke-static {v2}, La/a/a;->b([B)[B

    move-result-object v0

    return-object v0

    :cond_16
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private static D(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v0, "user_id"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1c

    goto :goto_1b
.end method

.method public static a(JIJ)I
    .registers 12

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sub-long v3, p0, p3

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_38

    if-eqz p2, :cond_10

    if-ne p2, v2, :cond_24

    :cond_10
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(I)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_1a

    move v0, v1

    :cond_19
    :goto_19
    return v0

    :cond_1a
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(I)J

    move-result-wide v3

    cmp-long v1, v3, p0

    if-gez v1, :cond_19

    :cond_22
    move v0, v2

    goto :goto_19

    :cond_24
    if-ne p2, v0, :cond_22

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(I)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-gez v3, :cond_19

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(I)J

    move-result-wide v3

    cmp-long v0, v3, p0

    if-ltz v0, :cond_22

    move v0, v1

    goto :goto_19

    :cond_38
    if-eqz p2, :cond_3c

    if-ne p2, v2, :cond_22

    :cond_3c
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_22

    move v0, v1

    goto :goto_19
.end method

.method public static a(Ljava/util/ArrayList;)I
    .registers 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_10

    if-eqz v3, :cond_56

    if-eqz v2, :cond_56

    :goto_f
    return v4

    :cond_10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "01"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "02"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    move v3, v4

    :cond_31
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_51
    move v2, v4

    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_56
    if-eqz v3, :cond_5c

    if-nez v2, :cond_5c

    const/4 v4, 0x2

    goto :goto_f

    :cond_5c
    if-nez v3, :cond_62

    if-eqz v2, :cond_62

    const/4 v4, 0x3

    goto :goto_f

    :cond_62
    const/4 v4, -0x1

    goto :goto_f
.end method

.method public static a(Ljava/util/ArrayList;I)I
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_39

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_12

    :cond_d
    :goto_d
    if-eqz v2, :cond_6b

    if-eqz v1, :cond_6b

    :goto_11
    return v4

    :cond_12
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "01"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v2, v4

    :cond_23
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    move v0, v4

    :goto_34
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    :cond_39
    if-ne p1, v4, :cond_7b

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_3e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "02"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    move v2, v4

    :cond_55
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    move v0, v4

    :goto_66
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_3e

    :cond_6b
    if-eqz v2, :cond_71

    if-nez v1, :cond_71

    const/4 v4, 0x2

    goto :goto_11

    :cond_71
    if-nez v2, :cond_77

    if-eqz v1, :cond_77

    const/4 v4, 0x3

    goto :goto_11

    :cond_77
    const/4 v4, -0x1

    goto :goto_11

    :cond_79
    move v0, v1

    goto :goto_66

    :cond_7b
    move v1, v0

    move v2, v0

    goto :goto_d

    :cond_7e
    move v0, v1

    goto :goto_34
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)J
    .registers 11

    const-wide/16 v0, 0x0

    if-nez p2, :cond_b

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {p0, p2, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v4, :cond_a

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pyv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pya"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".wmv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    :cond_5c
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_a

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_28
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/download/a;ILjava/lang/String;Ljava/util/ArrayList;II)J
    .registers 11

    const-wide/16 v0, -0x1

    const-string v2, "02"

    invoke-static {p4, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, p6, p5, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {p0, p6, p5}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;II)J

    move-result-wide v0

    :cond_12
    :goto_12
    return-wide v0

    :cond_13
    if-eqz p1, :cond_2b

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->d()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget v3, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    if-ne p2, v3, :cond_2b

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->e()J

    move-result-wide v0

    :cond_2b
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    goto :goto_12
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;)J
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    move-wide v0, v2

    :goto_b
    return-wide v0

    :cond_c
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    goto :goto_b

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v1, 0x3

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_9

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    return-object p2

    :cond_9
    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    invoke-static {p1}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p2, v0

    goto :goto_8

    :cond_17
    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;I)V

    goto :goto_8

    :cond_1b
    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;I)V

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;II)Ljava/io/File;
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_104

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_104

    const/4 v1, 0x0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1e
    if-eqz v3, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_92

    move-object v0, v1

    :goto_63
    return-object v0

    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_92
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_101

    if-eqz v3, :cond_d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_cc
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_63

    :cond_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_cc

    :cond_101
    move-object v0, v2

    goto/16 :goto_63

    :cond_104
    move-object v3, v2

    goto/16 :goto_1e
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_10

    :goto_4
    return-object v0

    :pswitch_5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_a
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public static a(JLandroid/content/Context;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_f

    :try_start_1c
    array-length v2, v1

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_f

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;D)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, ""

    :cond_f
    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->g()I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    move-object v0, v1

    :goto_17
    return-object v0

    :pswitch_18
    const-string v1, "%s%.2f"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_29
    const-string v1, "%.2f%s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_29
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v6, :cond_17

    iget-object v4, v6, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v5, "02"

    invoke-static {v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v4

    :cond_17
    if-eqz v6, :cond_26

    iget v7, v6, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v6, v6, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v7, v6, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v0, "02"

    :goto_25
    return-object v0

    :cond_26
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "contents/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7d

    new-instance v4, Ljava/io/File;

    const-string v7, "/HD"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c8

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_c8

    new-instance v0, Ljava/io/File;

    const-string v4, "/SD"

    invoke-direct {v0, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ff

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_ff

    const/4 v0, 0x3

    :cond_7d
    :goto_7d
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v4

    if-ne v4, v2, :cond_c2

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_c2

    new-instance v1, Ljava/io/File;

    const-string v4, "/HD"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_dd

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_dd

    or-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v4, "/SD"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_c2

    or-int/lit8 v0, v0, 0x2

    :cond_c2
    :goto_c2
    packed-switch v0, :pswitch_data_102

    move-object v0, v3

    goto/16 :goto_25

    :cond_c8
    new-instance v4, Ljava/io/File;

    const-string v7, "/SD"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7d

    move v0, v2

    goto :goto_7d

    :cond_dd
    new-instance v1, Ljava/io/File;

    const-string v4, "/SD"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_c2

    or-int/lit8 v0, v0, 0x2

    goto :goto_c2

    :pswitch_f3
    const-string v0, "01"

    goto/16 :goto_25

    :pswitch_f7
    const-string v0, "02"

    goto/16 :goto_25

    :pswitch_fb
    const-string v0, "09"

    goto/16 :goto_25

    :cond_ff
    move v0, v1

    goto/16 :goto_7d

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_f3
        :pswitch_f7
        :pswitch_fb
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/SD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    return-object v0

    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/HD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p3, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, p1, p3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/SD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_49
    const-string v1, ""

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_62
    if-lt v2, v4, :cond_90

    :goto_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/HD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_90
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pyv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pya"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".wmv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c7

    :cond_c2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    :cond_c7
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".pyv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 13

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "%.1f"

    new-array v1, v7, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x4090

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_64

    const-string v0, "%.1f"

    new-array v1, v7, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_50

    const-string v0, "%.2f%s"

    new-array v1, v8, [Ljava/lang/Object;

    long-to-double v2, p1

    const-wide/high16 v4, 0x41d0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0a000f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4f
    return-object v0

    :cond_50
    const-string v1, "%s%s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v6

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_64
    const-string v1, "%s%s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v6

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;J)Ljava/lang/String;
    .registers 10

    const-wide/16 v4, 0x0

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    iget v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v3, p1, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v2, v3, p2, p3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v2

    if-nez v2, :cond_8e

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v0, "Archive"

    :goto_22
    return-object v0

    :cond_23
    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, "06"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    :cond_41
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C()Ljava/lang/String;

    :cond_4a
    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v0, "Expired"

    goto :goto_22

    :cond_55
    cmp-long v2, v0, v4

    if-gtz v2, :cond_69

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "Downloading"

    goto :goto_22

    :cond_66
    const-string v0, "Downloadable"

    goto :goto_22

    :cond_69
    cmp-long v0, v0, p2

    if-gez v0, :cond_70

    const-string v0, "Downloading"

    goto :goto_22

    :cond_70
    const-string v0, "Downloaded"

    goto :goto_22

    :cond_73
    cmp-long v2, v0, v4

    if-gtz v2, :cond_87

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "Downloading"

    goto :goto_22

    :cond_84
    const-string v0, "Downloadable"

    goto :goto_22

    :cond_87
    cmp-long v0, v0, p2

    if-gez v0, :cond_8e

    const-string v0, "Downloading"

    goto :goto_22

    :cond_8e
    const-string v0, "Downloaded"

    goto :goto_22
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_a} :catch_44

    move-result-object v0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ". "

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_43
    return-object p1

    :catch_44
    move-exception v0

    goto :goto_43
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x77

    new-array v2, v0, [I

    fill-array-data v2, :array_3c

    new-array v3, v0, [I

    fill-array-data v3, :array_12e

    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_18
    array-length v4, v3

    if-lt v0, v4, :cond_27

    move-object v0, v1

    :goto_1c
    if-eqz p1, :cond_39

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    :goto_26
    return-object p1

    :cond_27
    aget v4, v2, v0

    if-ne v4, p2, :cond_36

    aget v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_39
    move-object p1, v0

    goto :goto_26

    nop

    :array_3c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xect 0x3t 0x0t 0x0t
        0xedt 0x3t 0x0t 0x0t
        0xeet 0x3t 0x0t 0x0t
        0xeft 0x3t 0x0t 0x0t
        0xf0t 0x3t 0x0t 0x0t
        0xf1t 0x3t 0x0t 0x0t
        0xf2t 0x3t 0x0t 0x0t
        0xf3t 0x3t 0x0t 0x0t
        0xf4t 0x3t 0x0t 0x0t
        0xf5t 0x3t 0x0t 0x0t
        0xf6t 0x3t 0x0t 0x0t
        0xf7t 0x3t 0x0t 0x0t
        0xf8t 0x3t 0x0t 0x0t
        0xf9t 0x3t 0x0t 0x0t
        0xfat 0x3t 0x0t 0x0t
        0xfdt 0x3t 0x0t 0x0t
        0xfet 0x3t 0x0t 0x0t
        0xfft 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x1t 0x4t 0x0t 0x0t
        0x2t 0x4t 0x0t 0x0t
        0x7t 0x4t 0x0t 0x0t
        0x8t 0x4t 0x0t 0x0t
        0x9t 0x4t 0x0t 0x0t
        0xat 0x4t 0x0t 0x0t
        0xbt 0x4t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xdt 0x4t 0x0t 0x0t
        0xet 0x4t 0x0t 0x0t
        0xft 0x4t 0x0t 0x0t
        0x10t 0x4t 0x0t 0x0t
        0x11t 0x4t 0x0t 0x0t
        0x12t 0x4t 0x0t 0x0t
        0x13t 0x4t 0x0t 0x0t
        0x14t 0x4t 0x0t 0x0t
        0x1bt 0x4t 0x0t 0x0t
        0x1ct 0x4t 0x0t 0x0t
        0x1dt 0x4t 0x0t 0x0t
        0x1et 0x4t 0x0t 0x0t
        0x1ft 0x4t 0x0t 0x0t
        0x25t 0x4t 0x0t 0x0t
        0x26t 0x4t 0x0t 0x0t
        0x27t 0x4t 0x0t 0x0t
        0x3ct 0x4t 0x0t 0x0t
        0x29t 0x4t 0x0t 0x0t
        0x2at 0x4t 0x0t 0x0t
        0x2bt 0x4t 0x0t 0x0t
        0x2ct 0x4t 0x0t 0x0t
        0x2dt 0x4t 0x0t 0x0t
        0x2et 0x4t 0x0t 0x0t
        0x2ft 0x4t 0x0t 0x0t
        0xd1t 0x7t 0x0t 0x0t
        0xd2t 0x7t 0x0t 0x0t
        0xd3t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0xa1t 0xft 0x0t 0x0t
        0xa2t 0xft 0x0t 0x0t
        0xa3t 0xft 0x0t 0x0t
        0xa4t 0xft 0x0t 0x0t
        0xa5t 0xft 0x0t 0x0t
        0xa6t 0xft 0x0t 0x0t
        0xa7t 0xft 0x0t 0x0t
        0xa8t 0xft 0x0t 0x0t
        0xa9t 0xft 0x0t 0x0t
        0xaat 0xft 0x0t 0x0t
        0xabt 0xft 0x0t 0x0t
        0xact 0xft 0x0t 0x0t
        0xadt 0xft 0x0t 0x0t
        0xaet 0xft 0x0t 0x0t
        0xaft 0xft 0x0t 0x0t
        0xb0t 0xft 0x0t 0x0t
        0xb1t 0xft 0x0t 0x0t
        0xb2t 0xft 0x0t 0x0t
        0xb3t 0xft 0x0t 0x0t
        0xb4t 0xft 0x0t 0x0t
        0xb5t 0xft 0x0t 0x0t
        0xb6t 0xft 0x0t 0x0t
        0xb7t 0xft 0x0t 0x0t
        0xb8t 0xft 0x0t 0x0t
        0xb9t 0xft 0x0t 0x0t
        0xbat 0xft 0x0t 0x0t
        0xbbt 0xft 0x0t 0x0t
        0x89t 0x13t 0x0t 0x0t
        0x8at 0x13t 0x0t 0x0t
        0x8bt 0x13t 0x0t 0x0t
        0x8ct 0x13t 0x0t 0x0t
        0x8dt 0x13t 0x0t 0x0t
        0x8et 0x13t 0x0t 0x0t
        0x8ft 0x13t 0x0t 0x0t
        0x90t 0x13t 0x0t 0x0t
        0x91t 0x13t 0x0t 0x0t
        0x92t 0x13t 0x0t 0x0t
        0x93t 0x13t 0x0t 0x0t
        0x94t 0x13t 0x0t 0x0t
        0x95t 0x13t 0x0t 0x0t
        0x96t 0x13t 0x0t 0x0t
        0x97t 0x13t 0x0t 0x0t
        0x98t 0x13t 0x0t 0x0t
        0x99t 0x13t 0x0t 0x0t
        0x9at 0x13t 0x0t 0x0t
        0x9bt 0x13t 0x0t 0x0t
        0x9ct 0x13t 0x0t 0x0t
        0x9dt 0x13t 0x0t 0x0t
        0x9et 0x13t 0x0t 0x0t
        0x9ft 0x13t 0x0t 0x0t
        0xa0t 0x13t 0x0t 0x0t
        0xa1t 0x13t 0x0t 0x0t
        0xa2t 0x13t 0x0t 0x0t
        0xa3t 0x13t 0x0t 0x0t
        0x28t 0x23t 0x0t 0x0t
        0x29t 0x23t 0x0t 0x0t
        0x2at 0x23t 0x0t 0x0t
        0x2bt 0x23t 0x0t 0x0t
        0x2ct 0x23t 0x0t 0x0t
        0x2dt 0x23t 0x0t 0x0t
    .end array-data

    :array_12e
    .array-data 0x4
        0x22t 0x1t 0xat 0x7ft
        0x23t 0x1t 0xat 0x7ft
        0x24t 0x1t 0xat 0x7ft
        0x25t 0x1t 0xat 0x7ft
        0x26t 0x1t 0xat 0x7ft
        0x27t 0x1t 0xat 0x7ft
        0x28t 0x1t 0xat 0x7ft
        0x29t 0x1t 0xat 0x7ft
        0x2at 0x1t 0xat 0x7ft
        0x2bt 0x1t 0xat 0x7ft
        0x2ct 0x1t 0xat 0x7ft
        0x2dt 0x1t 0xat 0x7ft
        0x2et 0x1t 0xat 0x7ft
        0x2ft 0x1t 0xat 0x7ft
        0x30t 0x1t 0xat 0x7ft
        0x31t 0x1t 0xat 0x7ft
        0x32t 0x1t 0xat 0x7ft
        0x33t 0x1t 0xat 0x7ft
        0x34t 0x1t 0xat 0x7ft
        0x35t 0x1t 0xat 0x7ft
        0x36t 0x1t 0xat 0x7ft
        0x37t 0x1t 0xat 0x7ft
        0x38t 0x1t 0xat 0x7ft
        0x39t 0x1t 0xat 0x7ft
        0x3at 0x1t 0xat 0x7ft
        0x3bt 0x1t 0xat 0x7ft
        0x3ct 0x1t 0xat 0x7ft
        0x3dt 0x1t 0xat 0x7ft
        0x3et 0x1t 0xat 0x7ft
        0x3ft 0x1t 0xat 0x7ft
        0x40t 0x1t 0xat 0x7ft
        0x41t 0x1t 0xat 0x7ft
        0x42t 0x1t 0xat 0x7ft
        0x43t 0x1t 0xat 0x7ft
        0x44t 0x1t 0xat 0x7ft
        0x45t 0x1t 0xat 0x7ft
        0x46t 0x1t 0xat 0x7ft
        0x47t 0x1t 0xat 0x7ft
        0x48t 0x1t 0xat 0x7ft
        0x49t 0x1t 0xat 0x7ft
        0x4at 0x1t 0xat 0x7ft
        0x4bt 0x1t 0xat 0x7ft
        0x4ct 0x1t 0xat 0x7ft
        0x4dt 0x1t 0xat 0x7ft
        0x4et 0x1t 0xat 0x7ft
        0x4ft 0x1t 0xat 0x7ft
        0x50t 0x1t 0xat 0x7ft
        0x51t 0x1t 0xat 0x7ft
        0x52t 0x1t 0xat 0x7ft
        0x53t 0x1t 0xat 0x7ft
        0x54t 0x1t 0xat 0x7ft
        0x55t 0x1t 0xat 0x7ft
        0x56t 0x1t 0xat 0x7ft
        0x57t 0x1t 0xat 0x7ft
        0x58t 0x1t 0xat 0x7ft
        0x59t 0x1t 0xat 0x7ft
        0x5at 0x1t 0xat 0x7ft
        0x5bt 0x1t 0xat 0x7ft
        0x5ct 0x1t 0xat 0x7ft
        0x5dt 0x1t 0xat 0x7ft
        0x5et 0x1t 0xat 0x7ft
        0x5ft 0x1t 0xat 0x7ft
        0x60t 0x1t 0xat 0x7ft
        0x61t 0x1t 0xat 0x7ft
        0x62t 0x1t 0xat 0x7ft
        0x63t 0x1t 0xat 0x7ft
        0x64t 0x1t 0xat 0x7ft
        0x65t 0x1t 0xat 0x7ft
        0x66t 0x1t 0xat 0x7ft
        0x67t 0x1t 0xat 0x7ft
        0x68t 0x1t 0xat 0x7ft
        0x69t 0x1t 0xat 0x7ft
        0x6at 0x1t 0xat 0x7ft
        0x6bt 0x1t 0xat 0x7ft
        0x6ct 0x1t 0xat 0x7ft
        0x6dt 0x1t 0xat 0x7ft
        0x6et 0x1t 0xat 0x7ft
        0x6ft 0x1t 0xat 0x7ft
        0x70t 0x1t 0xat 0x7ft
        0x71t 0x1t 0xat 0x7ft
        0x72t 0x1t 0xat 0x7ft
        0x73t 0x1t 0xat 0x7ft
        0x74t 0x1t 0xat 0x7ft
        0x75t 0x1t 0xat 0x7ft
        0x76t 0x1t 0xat 0x7ft
        0x77t 0x1t 0xat 0x7ft
        0x78t 0x1t 0xat 0x7ft
        0x79t 0x1t 0xat 0x7ft
        0x7at 0x1t 0xat 0x7ft
        0x7bt 0x1t 0xat 0x7ft
        0x7ct 0x1t 0xat 0x7ft
        0x7dt 0x1t 0xat 0x7ft
        0x7et 0x1t 0xat 0x7ft
        0x7ft 0x1t 0xat 0x7ft
        0x80t 0x1t 0xat 0x7ft
        0x81t 0x1t 0xat 0x7ft
        0x82t 0x1t 0xat 0x7ft
        0x83t 0x1t 0xat 0x7ft
        0x84t 0x1t 0xat 0x7ft
        0x85t 0x1t 0xat 0x7ft
        0x86t 0x1t 0xat 0x7ft
        0x87t 0x1t 0xat 0x7ft
        0x88t 0x1t 0xat 0x7ft
        0x89t 0x1t 0xat 0x7ft
        0x8at 0x1t 0xat 0x7ft
        0x8bt 0x1t 0xat 0x7ft
        0x8ct 0x1t 0xat 0x7ft
        0x8dt 0x1t 0xat 0x7ft
        0x8et 0x1t 0xat 0x7ft
        0x8ft 0x1t 0xat 0x7ft
        0x90t 0x1t 0xat 0x7ft
        0x91t 0x1t 0xat 0x7ft
        0x92t 0x1t 0xat 0x7ft
        0x93t 0x1t 0xat 0x7ft
        0x94t 0x1t 0xat 0x7ft
        0x95t 0x1t 0xat 0x7ft
        0x96t 0x1t 0xat 0x7ft
        0x97t 0x1t 0xat 0x7ft
        0x98t 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/lang/String;
    .registers 17

    const-wide/16 v4, 0x0

    const-wide v2, 0x40c3880000000000L

    const-wide v0, 0x40c3880000000000L

    packed-switch p2, :pswitch_data_da

    move-wide v5, v4

    :cond_10
    invoke-static {p0, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const/4 v6, 0x0

    move v7, v6

    move-wide v8, v2

    move-wide v10, v4

    move-wide v5, v10

    move-wide v3, v8

    move-wide v12, v0

    move-wide v1, v12

    :goto_1d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_10

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "01"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    :cond_3b
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    :goto_53
    const-wide v5, 0x40c3880000000000L

    cmpl-double v2, v3, v5

    if-nez v2, :cond_6d

    const-wide v5, 0x40c3880000000000L

    cmpl-double v2, v0, v5

    if-nez v2, :cond_6d

    const-wide/16 v5, 0x0

    :goto_67
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-wide v8, v0

    move-wide v1, v8

    goto :goto_1d

    :cond_6d
    cmpl-double v2, v3, v0

    if-lez v2, :cond_73

    move-wide v5, v0

    goto :goto_67

    :cond_73
    move-wide v5, v3

    goto :goto_67

    :pswitch_75
    const/4 v6, 0x0

    move v7, v6

    move-wide v8, v2

    move-wide v10, v4

    move-wide v5, v10

    move-wide v3, v8

    move-wide v12, v0

    move-wide v1, v12

    :goto_7d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_10

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "02"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    :cond_9b
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    :goto_b3
    const-wide v5, 0x40c3880000000000L

    cmpl-double v2, v3, v5

    if-nez v2, :cond_cd

    const-wide v5, 0x40c3880000000000L

    cmpl-double v2, v0, v5

    if-nez v2, :cond_cd

    const-wide/16 v5, 0x0

    :goto_c7
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-wide v8, v0

    move-wide v1, v8

    goto :goto_7d

    :cond_cd
    cmpl-double v2, v3, v0

    if-lez v2, :cond_d3

    move-wide v5, v0

    goto :goto_c7

    :cond_d3
    move-wide v5, v3

    goto :goto_c7

    :cond_d5
    move-wide v0, v1

    goto :goto_b3

    :cond_d7
    move-wide v0, v1

    goto/16 :goto_53

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_15
        :pswitch_75
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v7, 0x18

    const v6, 0x7f0a0011

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_28

    packed-switch v3, :pswitch_data_6e

    const-string v0, "%d%s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :pswitch_42
    const-string v0, "%d%s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :pswitch_57
    const-string v0, "%d%s"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_57
    .end packed-switch
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x7d0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-array v0, v0, [C

    :goto_e
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_26

    move-result v3

    if-gtz v3, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v4, 0x0

    :try_start_1a
    invoke-static {v0, v4, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d0

    new-array v0, v0, [C
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_26

    goto :goto_e

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, ""

    goto :goto_18
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-nez p0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_11
    const-string v1, "MediaHubAPP"

    const-string v2, "getYearFromReleaseDate Error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_f
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Landroid/os/Handler;)V
    .registers 11

    const v6, 0x7f0a01c4

    const v5, 0x7f0a01c3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A()I

    move-result v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->v()I

    move-result v1

    if-ne v1, v2, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_34
    return-void

    :cond_35
    if-ne v0, v2, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_34

    :cond_4e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_34

    :cond_68
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(ILjava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object v2, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    if-nez v2, :cond_88

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_34

    :cond_88
    if-nez v1, :cond_a6

    iget-object v2, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_34

    :cond_a6
    if-nez v1, :cond_c2

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    if-eqz v1, :cond_c2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_34

    :cond_c2
    invoke-static {p0, p1, v0, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;ILjava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_34
.end method

.method public static a(Landroid/content/Context;ILcom/sdgtl/mediahub/spr/common/di;Landroid/os/Handler;)V
    .registers 11

    const v6, 0x7f0a01c4

    const v5, 0x7f0a01c3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A()I

    move-result v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->v()I

    move-result v1

    if-ne v1, v2, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_34
    return-void

    :cond_35
    if-ne v0, v2, :cond_4e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_34

    :cond_4e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_34

    :cond_68
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(ILjava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_84

    iget-object v2, p2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    if-nez v2, :cond_84

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_34

    :cond_84
    if-nez v1, :cond_a0

    iget-object v2, p2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_34

    :cond_a0
    if-nez v1, :cond_ba

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    if-eqz v1, :cond_ba

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_34

    :cond_ba
    invoke-static {p0, p1, v0, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;ILjava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_34
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ListView;)V
    .registers 4

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const-string v1, "firstVisiblePosition"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v1, "positionY"

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ListView;II)V
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v2, p2

    move v4, p3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v10, "; "

    const-string v7, ", "

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_32

    :cond_11
    const-string v0, ""

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/gl;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/gl;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_32
    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_40
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4a

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_4a
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a8

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_55
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v7

    :goto_58
    array-length v1, v6

    if-lt v8, v1, :cond_5d

    move-object v0, v9

    goto :goto_17

    :cond_5d
    aget-object v1, v6, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    if-lt v8, v1, :cond_a6

    const-string v0, ""

    move-object v7, v0

    :goto_6a
    new-instance v11, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, v6, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/Utils$1;

    aget-object v1, v6, v8

    move-object v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/Utils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v2, v6, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    invoke-virtual {v9, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v0, v7

    goto :goto_58

    :cond_a6
    move-object v7, v0

    goto :goto_6a

    :cond_a8
    move-object v6, v0

    goto :goto_55
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/gm;

    invoke-direct {v1, p0, p1}, Lcom/sdgtl/mediahub/spr/common/gm;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V
    .registers 14

    const v4, 0x7f0a01c4

    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A()I

    move-result v1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->v()I

    move-result v3

    if-ne v3, v6, :cond_33

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_32
    return-void

    :cond_33
    if-ne v1, v6, :cond_4c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_32

    :cond_4c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_66

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_32

    :cond_66
    const-string v1, "meassage_again"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "01"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "02"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    :cond_7c
    invoke-static {}, Lcom/sdgtl/mediahub/spr/a/a;->c()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_88

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_b9

    :cond_88
    move-object v1, v0

    :goto_89
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_99

    if-eqz v4, :cond_e8

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    :cond_99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pricing_type_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->C:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0, v7}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_32

    :cond_b9
    const-string v0, ""

    move v1, v2

    :goto_bc
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_c4

    move-object v1, v0

    goto :goto_89

    :cond_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/db;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_bc

    :cond_e8
    if-eqz v1, :cond_104

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a01b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6, p5}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_32

    :cond_104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v6, p5}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_32

    :cond_116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pricing_type_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->C:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0, v7}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_32
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;II)V
    .registers 24

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0, p2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;I)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    const-wide/16 v2, 0x0

    if-eqz v4, :cond_13

    iget-object v2, v4, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v3, "02"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    :cond_13
    move/from16 v0, p9

    move/from16 v1, p10

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v12

    if-eqz v4, :cond_3a

    if-eqz v12, :cond_3a

    iget v2, v4, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v3, v4, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v12}, Lcom/sdgtl/mediahub/spr/common/fk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_58
    if-lt v3, v6, :cond_82

    :goto_5a
    if-eqz v2, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v12}, Lcom/sdgtl/mediahub/spr/common/fk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_39

    :cond_82
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".pyv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".pya"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".wmv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    :cond_b4
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5a

    :cond_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_58
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/c/a;->c(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_c
.end method

.method public static a(Landroid/view/View;)V
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-void

    :cond_4
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_10
    if-lt v1, v2, :cond_27

    instance-of v1, p0, Landroid/widget/AdapterView;

    if-nez v1, :cond_19

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_19
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private static a(Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v1, 0x0

    const v0, 0x7f02002e

    packed-switch p1, :pswitch_data_40

    :goto_7
    return-void

    :pswitch_8
    const v0, 0x7f02002f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :pswitch_f
    const v0, 0x7f020032

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :pswitch_16
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f020031

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    :pswitch_20
    const v0, 0x7f020056

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :pswitch_27
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :pswitch_2b
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    :pswitch_32
    const v0, 0x7f020182

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :pswitch_39
    const v0, 0x7f020181

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_8
        :pswitch_f
        :pswitch_16
        :pswitch_20
        :pswitch_27
        :pswitch_2b
        :pswitch_32
        :pswitch_39
    .end packed-switch
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_15
    if-lt v0, v2, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1a
    return-void

    :cond_1b
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_39

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_39
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_36
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->a()Lcom/sdgtl/mediahub/spr/download/a;

    const-string v1, "/SD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "/SD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "01"

    invoke-static {p1, v3}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object v3, v0

    :goto_23
    if-nez v3, :cond_6f

    :cond_25
    :goto_25
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/HD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    :cond_3f
    const-string v1, "/HD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    const-string v1, "/HD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "02"

    invoke-static {p1, v3}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move-object v3, v0

    goto :goto_23

    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/SD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    :cond_6f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_7f
    if-lt v2, v4, :cond_83

    :cond_81
    move-object v0, v1

    goto :goto_25

    :cond_83
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    :cond_92
    move-object v1, v0

    move-object v3, v0

    goto :goto_23
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 12

    const/16 v7, 0x8c

    const/16 v6, 0x800

    const/4 v1, 0x0

    const/16 v0, 0x800

    :try_start_7
    new-array v3, v0, [B

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v4, 0x800

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const-string v0, ""

    const/16 v2, 0x400

    :goto_1d
    if-lt v2, v6, :cond_60

    move v2, v1

    :cond_20
    if-lez v2, :cond_4f

    const/16 v0, 0x8c

    new-array v4, v0, [B

    move v0, v1

    :goto_27
    if-lt v0, v7, :cond_83

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a([BJ)[B

    move-result-object v4

    if-eqz v4, :cond_4f

    const-string v0, ""

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_38
    array-length v5, v4

    if-lt v0, v5, :cond_8f

    const-string v0, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "updateProductO****I* : encoded mu** = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x800

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_5f
    return-void

    :cond_60
    const-string v4, "<muid>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    aget-byte v4, v3, v2

    if-eqz v4, :cond_80

    aget-byte v4, v3, v2

    int-to-char v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_83
    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v3, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_8f
    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v4, v0

    aput-byte v6, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v4, v0

    int-to-char v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_ab} :catch_af
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_ab} :catch_b4

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :catch_af
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5f

    :catch_b4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V
    .registers 9

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_144

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_15

    const-string v0, "http://hub.samsungmediahub.net/store/common/store"

    :cond_15
    if-eqz v0, :cond_25

    const-string v2, "http://"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "*******************************"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_25
    const-string v0, "MediaHubReq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "***********************"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[START]***********************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "?"

    const-string v2, "\n?"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    const-string v3, "\n&"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceUid"

    const-string v3, "d*****Uid"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msisdn"

    const-string v3, "m****n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceId"

    const-string v3, "d*****Id"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_104

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a2

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MSISDN:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a2
    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d3

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d3

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEVICEUID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_d3
    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_104

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_104

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEVICEID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_104
    if-eqz p3, :cond_125

    const-string v2, "keyword"

    const-string v3, "keyword"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SEARCHKEYWORD:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_125
    const-string v1, "MediaHubReq"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubReq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***********************"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[END]************************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    return-void
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(IJ)Z
    .registers 5

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(ILjava/util/ArrayList;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return v2

    :cond_9
    if-nez p0, :cond_38

    move v1, v2

    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v4, "03"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    move v2, v3

    goto :goto_8

    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_38
    if-ne p0, v3, :cond_8

    move v1, v2

    :goto_3b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v4, "02"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_61
    move v2, v3

    goto :goto_8

    :cond_63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b
.end method

.method public static a(Landroid/content/Context;IIJ)Z
    .registers 12

    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;II)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_27

    cmp-long v3, v1, p3

    if-ltz v3, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    long-to-double v1, v1

    long-to-double v3, p3

    const-wide v5, 0x3fee666666666666L

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-gez v1, :cond_f

    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)Z
    .registers 11

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v5

    move v1, v2

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_19

    move-wide v0, v3

    :goto_f
    cmp-long v3, v0, v3

    if-eqz v3, :cond_18

    cmp-long v0, v5, v0

    if-ltz v0, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2

    :cond_19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    goto :goto_f

    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    invoke-static {p1}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_f
    return v0

    :cond_10
    invoke-static {p0, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;I)V

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x82

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static a([B)[B
    .registers 4

    invoke-static {p0}, La/a/a;->a([B)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    aget-byte v2, v1, v0

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private static a([BJ)[B
    .registers 8

    const/4 v2, 0x0

    const-string v0, ""

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_8
    array-length v4, p0

    add-int/lit8 v4, v4, -0x14

    if-lt v1, v4, :cond_38

    move-object v1, v3

    :goto_e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_63

    invoke-static {v1}, La/a/a;->b([B)[B

    move-result-object v0

    return-object v0

    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, p0, v1

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_63
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)I
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v1, p2, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_1e
    if-lt v3, v5, :cond_44

    :cond_20
    :goto_20
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_43

    invoke-static {p0, v2, p2, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_41
    if-lt v1, v4, :cond_7b

    :cond_43
    :goto_43
    return v0

    :cond_44
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pyv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pya"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".wmv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    :cond_76
    move v0, v1

    goto :goto_20

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_7b
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pyv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ad

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pya"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ad

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".wmv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ad

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    :cond_ad
    move v0, v2

    goto :goto_43

    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_41
.end method

.method public static b(Ljava/util/ArrayList;)I
    .registers 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_10

    if-eqz v3, :cond_36

    if-eqz v2, :cond_36

    :goto_f
    return v4

    :cond_10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v5, "01"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v3, v4

    :cond_21
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v5, "02"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v2, v4

    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_36
    if-eqz v3, :cond_3c

    if-nez v2, :cond_3c

    const/4 v4, 0x2

    goto :goto_f

    :cond_3c
    if-nez v3, :cond_42

    if-eqz v2, :cond_42

    const/4 v4, 0x3

    goto :goto_f

    :cond_42
    const/4 v4, -0x1

    goto :goto_f
.end method

.method public static b(I)J
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(I)J

    move-result-wide v0

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    goto :goto_9

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;II)Ljava/io/File;
    .registers 9

    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-lt v1, v3, :cond_17

    :cond_15
    const/4 v0, 0x0

    :cond_16
    return-object v0

    :cond_17
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pyv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13
.end method

.method private static b(Landroid/content/Context;D)Ljava/lang/String;
    .registers 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_22

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0a000b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    move-result v2

    if-eqz v2, :cond_13

    :goto_12
    return-object v0

    :cond_13
    move-object v0, v1

    goto :goto_12

    :catch_15
    move-exception v1

    goto :goto_12
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/SD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    return-object v0

    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/HD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_13

    const-string v0, ""

    :goto_12
    return-object v0

    :cond_13
    :try_start_13
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_16} :catch_2c

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->p()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_30

    const-string v0, ""

    goto :goto_12

    :catch_2c
    move-exception v0

    const-string v0, ""

    goto :goto_12

    :cond_30
    const-wide/16 v3, 0xe10

    div-long v3, v1, v3

    const-string v5, "24hours"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    const-wide/16 v5, 0x18

    cmp-long v5, v3, v5

    if-gez v5, :cond_50

    :cond_42
    const-string v5, "48hours"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    const-wide/16 v5, 0x30

    cmp-long v5, v3, v5

    if-ltz v5, :cond_99

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a010a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_99
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_cb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    cmp-long v0, v3, v6

    if-lez v0, :cond_fb

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_bd
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_cb
    const-wide/16 v3, 0xe10

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-gtz v3, :cond_d9

    const-wide/16 v1, 0x1

    :cond_d9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a010a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_fb
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bd
.end method

.method public static b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_10

    move-wide v0, v2

    :goto_b
    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    goto :goto_b

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/16 v2, 0xa

    if-nez p0, :cond_6

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_12
    const-string v1, "MediaHubAPP"

    const-string v2, "getYearAndDateFromReleaseDate Error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static b(Ljava/util/ArrayList;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_50

    :cond_5
    :goto_5
    return-object v1

    :pswitch_6
    move v2, v0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_12

    if-nez v1, :cond_5

    const-string v1, "03"

    goto :goto_5

    :cond_12
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "01"

    :goto_24
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_7

    :pswitch_29
    move v2, v0

    :goto_2a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_35

    if-nez v1, :cond_5

    const-string v1, "04"

    goto :goto_5

    :cond_35
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "01"

    :goto_47
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2a

    :cond_4c
    move-object v0, v1

    goto :goto_47

    :cond_4e
    move-object v0, v1

    goto :goto_24

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_6
        :pswitch_29
    .end packed-switch
.end method

.method private static b([B)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, La/a/a;->a([B)[B

    move-result-object v2

    move v0, v1

    :goto_6
    array-length v3, v2

    if-lt v0, v3, :cond_f

    const-string v0, ""

    :goto_b
    array-length v3, v2

    if-lt v1, v3, :cond_19

    return-object v0

    :cond_f
    aget-byte v3, v2, v0

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v2, v1

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;I)V
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    const-string v0, "01"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "01"

    invoke-static {p0, v2, v0, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1b1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_2c
    if-lt v0, v5, :cond_aa

    :cond_2e
    move v0, v1

    :goto_2f
    if-eqz v0, :cond_34

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_34
    :goto_34
    const-string v3, "01"

    invoke-static {p0, v1, v3, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_51
    if-lt v3, v6, :cond_eb

    :cond_53
    :goto_53
    if-eqz v0, :cond_58

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_58
    const-string v0, "02"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "02"

    invoke-static {p0, v2, v0, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1ae

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1ae

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_7d
    if-lt v0, v5, :cond_12c

    :cond_7f
    move v0, v1

    :goto_80
    if-eqz v0, :cond_85

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_85
    :goto_85
    const-string v3, "02"

    invoke-static {p0, v1, v3, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_a2
    if-lt v1, v5, :cond_16d

    :cond_a4
    :goto_a4
    if-eqz v0, :cond_a9

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_a9
    return-void

    :cond_aa
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pyv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_dc

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pya"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_dc

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".wmv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_dc

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e7

    :cond_dc
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_2e

    move v0, v2

    goto/16 :goto_2f

    :cond_e7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2c

    :cond_eb
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".pyv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11d

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".pya"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11d

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".wmv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11d

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_128

    :cond_11d
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v5, v10

    if-lez v3, :cond_53

    move v0, v2

    goto/16 :goto_53

    :cond_128
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_51

    :cond_12c
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pyv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15e

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pya"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15e

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".wmv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15e

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_169

    :cond_15e
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_7f

    move v0, v2

    goto/16 :goto_80

    :cond_169
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7d

    :cond_16d
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pyv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19f

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pya"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19f

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".wmv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19f

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1aa

    :cond_19f
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-lez v1, :cond_a4

    move v0, v2

    goto/16 :goto_a4

    :cond_1aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a2

    :cond_1ae
    move v0, v1

    goto/16 :goto_85

    :cond_1b1
    move v0, v1

    goto/16 :goto_34
.end method

.method public static b(Landroid/content/Context;Landroid/widget/ListView;)V
    .registers 4

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_20

    const-string v0, "firstVisiblePosition"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_11
    const-string v1, "positionY"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_20
    return-void

    :cond_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_11
.end method

.method public static b(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)V
    .registers 11

    const/16 v7, 0x28

    const/4 v1, 0x0

    if-nez p1, :cond_8

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    :cond_8
    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->d()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "fakesample.pyv"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_3a
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    if-nez v0, :cond_c6

    :cond_42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f06

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v4, v2, [B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, ""

    const/16 v2, 0x400

    :goto_5c
    const/16 v5, 0x800

    if-lt v2, v5, :cond_dd

    move v2, v1

    :cond_61
    if-lez v2, :cond_c6

    const/16 v0, 0x28

    new-array v5, v0, [B

    move v0, v1

    :goto_68
    if-lt v0, v7, :cond_101

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/common/gk;->c([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    const-string v5, "123456789012345678901234567890"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->C(Landroid/content/Context;)[B

    move-result-object v5

    if-eqz v5, :cond_c6

    const-string v0, ""

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_83
    array-length v6, v5

    if-lt v0, v6, :cond_10e

    const-string v0, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "deliverI***Info : encoded d** = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "fakesample.pyv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->e()J

    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "fakesample.pyv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;)V

    :goto_dc
    return-void

    :cond_dd
    const-string v5, "<did>"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_61

    aget-byte v5, v4, v2

    if-eqz v5, :cond_fd

    aget-byte v5, v4, v2

    int-to-char v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_fd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5c

    :cond_101
    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v4, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_68

    :cond_10e
    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v5, v0

    aput-byte v7, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v5, v0

    int-to-char v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12a
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_12a} :catch_12f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_12a} :catch_134

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_83

    :catch_12f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_dc

    :catch_134
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_dc
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    if-nez v3, :cond_24

    if-nez v2, :cond_24

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v1, v0, :cond_1b

    :cond_24
    if-eqz v5, :cond_1b

    if-eqz v4, :cond_1b

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->x()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static b(Landroid/content/Context;Ljava/util/ArrayList;I)Z
    .registers 4

    const-string v0, "01"

    invoke-static {p0, p1, p2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "02"

    invoke-static {p0, p1, p2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(Ljava/io/File;Ljava/io/File;)Z
    .registers 11

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_31} :catch_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_31} :catch_36

    const/4 v0, 0x1

    :goto_32
    return v0

    :catch_33
    move-exception v0

    move v0, v6

    goto :goto_32

    :catch_36
    move-exception v0

    move v0, v6

    goto :goto_32

    :cond_39
    move v0, v6

    goto :goto_32
.end method

.method public static b(Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/util/Date;->setDate(I)V

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_a6
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_a6} :catch_a8

    move-result v0

    :goto_a7
    return v0

    :catch_a8
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_a7
.end method

.method public static b(Landroid/content/Context;J)[B
    .registers 14

    const/16 v10, 0x1e

    const/16 v9, 0x14

    const/16 v8, 0x3a

    const/4 v4, 0x0

    const/16 v7, 0x2d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    const-string v0, "gtd83co8hu"

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_32

    const-string v1, "user_id"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    move-object v1, v4

    :goto_2e
    if-nez v1, :cond_c0

    move-object v0, v4

    :goto_31
    return-object v0

    :cond_32
    if-nez v2, :cond_36

    move-object v1, v4

    goto :goto_2e

    :cond_36
    if-nez v3, :cond_4b

    move-object v1, v4

    goto :goto_2e

    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_3a

    :goto_51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_8a

    :goto_57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_9c

    :goto_5d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_ae

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2e

    :cond_8a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    :cond_9c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_57

    :cond_ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5d

    :cond_c0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_c7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_d3

    invoke-static {v2}, La/a/a;->b([B)[B

    move-result-object v0

    goto/16 :goto_31

    :cond_d3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c7
.end method

.method public static c(Ljava/util/ArrayList;)I
    .registers 7

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_10

    if-gtz v4, :cond_44

    if-lez v3, :cond_44

    const/4 v2, 0x1

    :cond_f
    :goto_f
    return v2

    :cond_10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "01"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    :cond_28
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    :cond_40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_44
    if-gtz v4, :cond_f

    const/4 v2, -0x1

    goto :goto_f
.end method

.method private static c(I)J
    .registers 6

    const-wide/16 v0, 0x0

    packed-switch p0, :pswitch_data_20

    :goto_5
    return-wide v0

    :pswitch_6
    :try_start_6
    new-instance v2, Landroid/os/StatFs;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_17} :catch_1b

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    goto :goto_5

    :catch_1b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;II)J
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_c
    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, p2, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".pyv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".pya"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".wmv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    :cond_55
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p2, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/SD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/HD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/util/ArrayList;I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_86

    :cond_6
    :goto_6
    return-object v3

    :pswitch_7
    move-object v1, v3

    move v4, v2

    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_13

    if-ne v2, v6, :cond_6

    move-object v3, v1

    goto :goto_6

    :cond_13
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "01"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_33
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    :goto_3d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_9

    :pswitch_43
    move-object v1, v3

    move v4, v2

    :goto_45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_4f

    if-ne v2, v6, :cond_6

    move-object v3, v1

    goto :goto_6

    :cond_4f
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "02"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v5, "04"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_6f
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    :goto_79
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_45

    :cond_7f
    move-object v0, v1

    move v1, v2

    goto :goto_79

    :cond_82
    move-object v0, v1

    move v1, v2

    goto :goto_3d

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_7
        :pswitch_43
    .end packed-switch
.end method

.method private static c([B)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, La/a/a;->a([B)[B

    move-result-object v2

    move v0, v1

    :goto_6
    array-length v3, v2

    if-lt v0, v3, :cond_f

    const-string v0, ""

    :goto_b
    array-length v3, v2

    if-lt v1, v3, :cond_19

    return-object v0

    :cond_f
    aget-byte v3, v2, v0

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v2, v1

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/c/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "downloading_product_id"

    invoke-static {p0, v0, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "downloading_video_attr_type_code"

    invoke-static {p0, v0, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_f
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_12
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    :goto_f
    return v0

    :cond_10
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_16

    move v0, v1

    goto :goto_f

    :cond_16
    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    move v0, v1

    goto :goto_f

    :cond_1d
    move v0, v1

    goto :goto_f
.end method

.method public static d(Ljava/util/ArrayList;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_10

    if-gtz v3, :cond_44

    if-lez v2, :cond_44

    const/4 v0, 0x3

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v4, "02"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    :cond_28
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    :cond_40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_44
    if-lez v3, :cond_48

    const/4 v0, 0x2

    goto :goto_f

    :cond_48
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x6

    const/4 v2, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/Calendar;->set(III)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v0, ""

    packed-switch v2, :pswitch_data_bc

    :goto_3c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_84
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_8c
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_94
    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_9c
    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_a4
    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_ac
    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_b4
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_84
        :pswitch_8c
        :pswitch_94
        :pswitch_9c
        :pswitch_a4
        :pswitch_ac
        :pswitch_b4
    .end packed-switch
.end method

.method public static d()V
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/common/gk;->d:J

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 7

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_18

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-lt v0, v3, :cond_1c

    :cond_18
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_1c
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2b
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    move v0, v1

    :goto_17
    return v0

    :sswitch_18
    const/4 v0, 0x1

    goto :goto_17

    :cond_1a
    move v0, v1

    goto :goto_17

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_18
        0x1 -> :sswitch_18
        0x6 -> :sswitch_18
    .end sparse-switch
.end method

.method public static e(Ljava/lang/String;)I
    .registers 5

    const/16 v1, 0x10

    if-nez p0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x15

    new-array v2, v0, [I

    fill-array-data v2, :array_26

    const/4 v0, 0x0

    :goto_e
    sget-object v3, Lcom/sdgtl/mediahub/spr/common/gk;->b:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_15

    move v0, v1

    goto :goto_5

    :cond_15
    sget-object v3, Lcom/sdgtl/mediahub/spr/common/gk;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    aget v0, v2, v0

    goto :goto_5

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    nop

    :array_26
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 6

    const/4 v4, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2b
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, "100"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_16
    const-string v1, "110"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_28
    const-string v1, "111"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_3a
    const-string v1, "001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method public static e()Z
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sdgtl/mediahub/spr/common/gk;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/common/gk;->d:J

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const-wide/32 v12, 0x15180

    const-wide/16 v10, 0xe10

    const-wide/16 v8, 0x0

    const-wide/16 v1, 0x1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_1c

    const-string v0, ""

    :goto_1b
    return-object v0

    :cond_1c
    :try_start_1c
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_1f} :catch_33

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->p()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v5, v3, v8

    if-gez v5, :cond_37

    const-string v0, ""

    goto :goto_1b

    :catch_33
    move-exception v0

    const-string v0, ""

    goto :goto_1b

    :cond_37
    div-long v5, v3, v12

    cmp-long v7, v5, v8

    if-lez v7, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmp-long v0, v5, v1

    if-lez v0, :cond_68

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_68
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    :cond_74
    rem-long/2addr v3, v12

    div-long v5, v3, v10

    cmp-long v7, v5, v8

    if-lez v7, :cond_a5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmp-long v0, v5, v1

    if-lez v0, :cond_cf

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_97
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a5
    rem-long/2addr v3, v10

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gtz v5, :cond_db

    :goto_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a010a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    :cond_cf
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    :cond_db
    move-wide v1, v3

    goto :goto_ad
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v3, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/16 v10, 0x8

    const/4 v4, 0x0

    if-eqz p0, :cond_c

    const-string v0, ""

    if-ne p0, v0, :cond_f

    :cond_c
    const-string p0, ""

    :cond_e
    :goto_e
    return-object p0

    :cond_f
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v10, :cond_e

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_ae

    const-string v0, "-"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_a5

    const-string v0, ":"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v3

    :goto_45
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v4, v5}, Ljava/util/Date;-><init>(III)V

    :try_start_4a
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4d
    .catch Ljava/text/ParseException; {:try_start_4a .. :try_end_4d} :catch_c6

    move-result-object v6

    :goto_4e
    if-eq v2, v5, :cond_52

    if-ne v2, v3, :cond_7d

    :cond_52
    const/16 v2, 0xa

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    const/16 v5, 0xc

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xc

    const/16 v7, 0xe

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v2}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {v6, v3}, Ljava/util/Date;->setMinutes(I)V

    invoke-virtual {v6, v1}, Ljava/util/Date;->setSeconds(I)V

    :cond_7d
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    :cond_90
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    int-to-long v3, v4

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_e

    :cond_a5
    const/4 v2, 0x2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_45

    :cond_ae
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v10, :cond_bd

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v4

    goto :goto_45

    :cond_bd
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v5

    goto :goto_45

    :catch_c6
    move-exception v7

    const/4 v7, 0x4

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x6

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x6

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit16 v7, v7, -0x76c

    invoke-virtual {v6, v7}, Ljava/util/Date;->setYear(I)V

    invoke-virtual {v6, v8}, Ljava/util/Date;->setMonth(I)V

    invoke-virtual {v6, v9}, Ljava/util/Date;->setDate(I)V

    goto/16 :goto_4e
.end method

.method public static f(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.Settings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static f()Z
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sdgtl/mediahub/spr/common/gk;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sdgtl/mediahub/spr/common/gk;->d:J

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)I
    .registers 12

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v9, 0x800

    const/4 v1, 0x0

    const/16 v0, 0x800

    :try_start_8
    new-array v7, v0, [B

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v0, v7, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const-string v0, ""

    const/16 v5, 0x400

    :goto_1c
    if-lt v5, v9, :cond_6d

    move v6, v1

    :goto_1f
    if-lez v6, :cond_c3

    const/16 v0, 0x8c

    new-array v8, v0, [B

    const-string v0, ""

    move-object v5, v0

    move v0, v1

    :goto_29
    const/16 v9, 0x8c

    if-lt v0, v9, :cond_92

    const-string v0, "MediaHubAPP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkIdOnContent() : encoded MU** on content = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/sdgtl/mediahub/spr/common/gk;->b([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c3

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v0, v0, v7

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_c3

    if-eqz v6, :cond_c3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v1

    :goto_6c
    return v0

    :cond_6d
    const-string v6, "<muid>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_77

    move v6, v5

    goto :goto_1f

    :cond_77
    aget-byte v6, v7, v5

    if-eqz v6, :cond_8f

    aget-byte v6, v7, v5

    int-to-char v6, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_92
    mul-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v7, v9

    aput-byte v9, v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v8, v0

    int-to-char v5, v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_29

    :cond_b3
    move v0, v2

    goto :goto_6c

    :cond_b5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_b8} :catch_bf
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b8} :catch_c5

    move-result v0

    if-eqz v0, :cond_bd

    move v0, v3

    goto :goto_6c

    :cond_bd
    move v0, v4

    goto :goto_6c

    :catch_bf
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_c3
    :goto_c3
    move v0, v4

    goto :goto_6c

    :catch_c5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c3
.end method

.method public static g()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT+00:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "E8E7B7H5J2Q8M5D3|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :goto_3
    return-object p0

    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :try_start_10
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_13} :catch_36

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/16 v1, 0xf

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3
.end method

.method public static g(Landroid/content/Context;)V
    .registers 5

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/.SamsungMediaHub/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Download/.SamsungMediaHub/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Ljava/io/File;Ljava/io/File;)V

    :cond_49
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/.SamsungMediaHub/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Download/.SamsungMediaHub/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_7
.end method

.method public static h(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getS******A******PackageInfo packageInfo.versionName == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_21} :catch_22

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static h()V
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/mounts"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v3, 0x0

    const/16 v2, 0xc00

    :try_start_11
    new-array v4, v2, [B

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_82
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1d} :catch_68
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1d} :catch_75

    :try_start_1d
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_5c
    .catchall {:try_start_1d .. :try_end_5c} :catchall_96
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_5c} :catch_9a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_5c} :catch_98

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x2

    :cond_60
    :goto_60
    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_94

    :cond_63
    :goto_63
    sput v0, Lcom/sdgtl/mediahub/spr/common/gk;->a:I

    return-void

    :cond_66
    const/4 v0, 0x1

    goto :goto_60

    :catch_68
    move-exception v1

    move-object v2, v3

    :goto_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_96

    if-eqz v2, :cond_63

    :try_start_6f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_63

    :catch_73
    move-exception v1

    goto :goto_63

    :catch_75
    move-exception v1

    move-object v2, v3

    :goto_77
    :try_start_77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_96

    if-eqz v2, :cond_63

    :try_start_7c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_63

    :catch_80
    move-exception v1

    goto :goto_63

    :catchall_82
    move-exception v0

    move-object v2, v3

    :goto_84
    if-eqz v2, :cond_89

    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_92

    :cond_89
    :goto_89
    throw v0

    :cond_8a
    const-string v1, "MediaHubAPP"

    const-string v2, "checkSDCardMountStatus : mounts file not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :catch_92
    move-exception v1

    goto :goto_89

    :catch_94
    move-exception v1

    goto :goto_63

    :catchall_96
    move-exception v0

    goto :goto_84

    :catch_98
    move-exception v1

    goto :goto_77

    :catch_9a
    move-exception v1

    goto :goto_6a
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    if-nez p0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :try_start_18
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1b
    .catch Ljava/text/ParseException; {:try_start_18 .. :try_end_1b} :catch_30

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->p()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :catch_30
    move-exception v1

    goto :goto_f
.end method

.method public static i(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 6

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_8

    :goto_7
    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin.alternative"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAlternativeS******A******PackageInfo packageInfo.versionName == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_29} :catch_2b

    :goto_29
    move-object v1, v0

    goto :goto_7

    :catch_2b
    move-exception v0

    move-object v0, v1

    goto :goto_29
.end method

.method public static i()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/gn;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/gn;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    if-eqz p0, :cond_1b

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    :try_start_1c
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_26
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_26} :catch_39

    move-result-object v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->p()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_1b

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1b
.end method

.method public static j()I
    .registers 2

    sget v0, Lcom/sdgtl/mediahub/spr/common/gk;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    sget v0, Lcom/sdgtl/mediahub/spr/common/gk;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    :cond_a
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->h()V

    :cond_d
    sget v0, Lcom/sdgtl/mediahub/spr/common/gk;->a:I

    return v0
.end method

.method public static j(Ljava/lang/String;)I
    .registers 4

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_20

    const/4 v0, 0x0

    :goto_8
    sget-object v2, Lcom/sdgtl/mediahub/spr/common/gk;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_f

    const/4 v0, -0x1

    :goto_e
    return v0

    :cond_f
    sget-object v2, Lcom/sdgtl/mediahub/spr/common/gk;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    aget v0, v1, v0

    goto :goto_e

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    nop

    :array_20
    .array-data 0x4
        0xb5t 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 6

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_8

    :goto_7
    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin.mediahub"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMediaHubS******A******PackageInfo packageInfo.versionName == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_29} :catch_2b

    :goto_29
    move-object v1, v0

    goto :goto_7

    :catch_2b
    move-exception v0

    move-object v0, v1

    goto :goto_29
.end method

.method public static k()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x2

    :try_start_5
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/cat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "/proc/cpuinfo"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_22
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_51

    const-string v3, "Serial"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, ": "

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v3, 0x11

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_68

    move-result-object v0

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_70

    :goto_40
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    :try_start_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_66} :catch_68

    move-result-object v0

    goto :goto_22

    :catch_68
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_6c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catch_70
    move-exception v1

    goto :goto_6c
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_12

    :cond_f
    const-string v0, "/Download/.SamsungMediaHub/"

    :goto_11
    return-object v0

    :cond_12
    const-string v0, "/.samsungmediahub/"

    goto :goto_11
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "\\p{Punct}"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{Blank}"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Ljava/io/File;
    .registers 8

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_11
    :try_start_11
    array-length v1, v3

    if-lt v2, v1, :cond_15

    :goto_14
    return-object v0

    :cond_15
    aget-object v1, v3, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_28} :catch_44

    :try_start_28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_34
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_37} :catch_3c

    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_11

    :catch_3c
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_40
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_14

    :catch_44
    move-exception v1

    goto :goto_40
.end method

.method public static l()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unknown"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_76

    :try_start_2d
    const-string v1, "unknown"

    if-eq v0, v1, :cond_63

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v4, 0x14

    if-le v2, v4, :cond_64

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    rsub-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_63
    :goto_63
    return-object v0

    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_74} :catch_79

    move-result-object v0

    goto :goto_63

    :catch_76
    move-exception v0

    move-object v0, v1

    goto :goto_63

    :catch_79
    move-exception v1

    goto :goto_63
.end method

.method public static l(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_type_code"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search_type"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parent_view"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "search_by"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    return-void
.end method

.method public static m()V
    .registers 4

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_24
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;-><init>()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\p{space}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->e:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->a:J

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->b:J

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->a()I

    move-result v1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->c:I

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fk;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->d:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "register_first_play_expiration_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x25

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    :cond_72
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "contents/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_37
    if-lt v0, v3, :cond_84

    :cond_39
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "contents/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_77
    if-lt v0, v3, :cond_96

    :cond_79
    const v0, 0x7f0a01a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_84
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_96
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a5

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_77
.end method

.method public static m(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p0, :cond_12

    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static n(Ljava/lang/String;)Ljava/util/Date;
    .registers 8

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :try_start_14
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v0

    :goto_18
    return-object v0

    :catch_19
    move-exception v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMonth(I)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    const/16 v1, 0xe

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_18
.end method

.method public static n(Landroid/content/Context;)V
    .registers 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_38
    if-lt v0, v3, :cond_109

    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_70
    if-lt v0, v3, :cond_11c

    :cond_72
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_af
    if-lt v0, v3, :cond_12f

    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_e7
    if-lt v0, v3, :cond_142

    :cond_e9
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_fe

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->k()Z

    move v1, v2

    :goto_f8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_154

    :cond_fe
    const v0, 0x7f0a01a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_109
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_118

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_118
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_38

    :cond_11c
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_12b

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_12b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_70

    :cond_12f
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_13e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_af

    :cond_142
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_151

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Ljava/lang/String;)V

    :cond_151
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    :cond_154
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_161

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->k()Z

    :cond_161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f8
.end method

.method public static n()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    const-string v2, "android.os.Debug"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isProductShip"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_13} :catch_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_13} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_17

    move-result v2

    if-ne v2, v0, :cond_1d

    :goto_16
    return v0

    :catch_17
    move-exception v1

    goto :goto_16

    :catch_19
    move-exception v1

    goto :goto_16

    :catch_1b
    move-exception v1

    goto :goto_16

    :cond_1d
    move v0, v1

    goto :goto_16
.end method

.method private static o(Ljava/lang/String;)I
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static o()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/sd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/sd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/sd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/external_sd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public static o(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_11

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static p()J
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v3, v0

    sub-long v0, v1, v3

    return-wide v0
.end method

.method public static p(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static q(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    if-eqz v2, :cond_f

    move v0, v1

    :goto_c
    array-length v3, v2

    if-lt v0, v3, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    aget-object v3, v2, v0

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    if-eqz v3, :cond_24

    const-string v3, "com.osp.app.signin"

    aget-object v4, v2, v0

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v1, 0x1

    goto :goto_f

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static r(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x8

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x4

    goto :goto_9
.end method

.method public static s(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    move v0, v2

    goto :goto_2d
.end method

.method public static t(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static u(Landroid/content/Context;)Z
    .registers 10

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "contents/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->j()I

    move-result v3

    const-string v4, "MediaHubAPP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sdCardMountStatus == "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v5, "MediaHubAPP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "c******P*** == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CONTENTPATH:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v3, :pswitch_data_118

    move v1, v0

    :goto_77
    if-lez v1, :cond_7a

    const/4 v0, 0x1

    :cond_7a
    return v0

    :pswitch_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_77

    :pswitch_af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->o(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto/16 :goto_77

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_af
    .end packed-switch
.end method

.method public static v(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-eq v0, v3, :cond_30

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_32

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static w(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "key_update_db_yn"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v2, "update_db_n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_17
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->x()Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    :goto_21
    return v0

    :cond_22
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    if-eqz v1, :cond_21

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    :cond_4c
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static x(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "app_destory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static y(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .registers 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    :cond_15
    :goto_15
    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNetworkAvailableForDownload - isNetworkAvailable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_2e
    const-string v1, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNetworkAvailableForDownload - ConnectivityManager.TYPE_WIFI isConnected = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :sswitch_47
    const-string v1, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNetworkAvailableForDownload - ConnectivityManager.TYPE_WIMAX isConnected = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :sswitch_60
    const-string v1, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNetworkAvailableForDownload - ConnectivityManager.TYPE_MOBILE isConnected = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    nop

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_60
        0x1 -> :sswitch_2e
        0x6 -> :sswitch_47
    .end sparse-switch
.end method
